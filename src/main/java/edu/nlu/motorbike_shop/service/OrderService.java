package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.constant.Constants;
import edu.nlu.motorbike_shop.dao.CategoryDAO;
import edu.nlu.motorbike_shop.dao.OrderDAO;
import edu.nlu.motorbike_shop.dao.SettingDAO;
import edu.nlu.motorbike_shop.entity.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

import static edu.nlu.motorbike_shop.constant.Constants.*;

public class OrderService {
    private final OrderDAO orderDAO = OrderDAO.getInstance();
    private final CategoryDAO categoryDAO = CategoryDAO.getInstance();
    private final SettingDAO settingDAO = SettingDAO.getInstance();
    private final HttpServletRequest request;
    private final HttpServletResponse response;

    public OrderService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of orders that respond back to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listOrder() throws ServletException, IOException {
        listOrder(null);
    }

    /**
     * Returns a list of orders and a response message to the user.
     *
     * @param message A message specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listOrder(String message) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        if (keyword == null)
            keyword = "";
        String pageNumberString = request.getParameter("pageNumber");
        int pageNumber;

        if (pageNumberString == null) {
            pageNumber = 1;
        } else {
            pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        }

        long numberOfOrders = orderDAO.count();
        int totalKeywordResults = orderDAO.countByKeyword(keyword);

        List<Order> orders = orderDAO.findAll(keyword, DEFAULT_SORT_FIELD, DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, pageNumber);

        long totalPages = totalKeywordResults / DEFAULT_PAGE_SIZE;
        if (numberOfOrders % DEFAULT_PAGE_SIZE != 0) totalPages++;

        request.setAttribute("currentPage", pageNumber);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("keyword", keyword);
        request.setAttribute("numberOfOrders", numberOfOrders);
        request.setAttribute("listOrders", orders);

        if (message != null)
            request.setAttribute("message", message);

        Map<Integer, Integer> statusIds = new HashMap<>();
        for (Order order : orders) {
            int statusId = getStatusId(order.getStatus());
            statusIds.put(order.getId(), statusId);
        }
        request.setAttribute("statusIds", statusIds);

        String listPage = "order.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    public void editOrder() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        Order order = orderDAO.findById(id);

        String message;

        if (order == null) {
            message = "Kh??ng t??m th???y ????n h??ng";
            listOrder(message);
        } else {
            String status = order.getStatus();
            int statusId = getStatusId(status);
            request.setAttribute("statusId", statusId);
            request.setAttribute("order", order);
            request.setAttribute("title", "Ch???nh s???a tr???ng th??i ????n h??ng");
            request.getRequestDispatcher("order-form.jsp").forward(request, response);
        }
    }

    private int getStatusId(String status) {
        int statusId = 0;
        switch (status) {
            case "??ang x??? l??":
                statusId = 1;
                break;
            case "???? giao h??ng":
                statusId = 2;
                break;
            case "Hu??? ????n h??ng":
                statusId = 3;
                break;
        }
        return statusId;
    }

    public void viewOrderDetail() throws ServletException, IOException {
        Integer orderId = Integer.parseInt(request.getParameter("id"));

        Order order = orderDAO.findById(orderId);

        if (order == null) {
            String message = "Kh??ng t??m th???y ????n h??ng";
            listOrder(message);
        } else {
            request.setAttribute("order", order);

            request.getRequestDispatcher("order-detail.jsp").forward(request, response);
        }
    }

    public void updateOrder() throws ServletException, IOException {
        Integer orderId = Integer.parseInt(request.getParameter("id"));
        Integer statusId = Integer.valueOf(request.getParameter("status"));

        Order order = orderDAO.findById(orderId);

        if (order == null) {
            String message = "Kh??ng t??m th???y ????n h??ng";
            listOrder(message);
        } else {
            String status = getStatus(statusId);
            order.setStatus(status);
            orderDAO.update(order);
            String message = "C???p nh???t tr???ng th??i ????n h??ng th??nh c??ng";
            listOrder(message);
        }
    }

    private String getStatus(Integer statusId) {
        String status = null;
        switch (statusId) {
            case 1:
                status = "??ang x??? l??";
                break;
            case 2:
                status = "???? giao h??ng";
                break;
            case 3:
                status = "Hu??? ????n h??ng";
                break;
        }
        return status;
    }

    /*---------------frontend---------------*/

    public void showCheckoutPage() throws ServletException, IOException {
        // setting
        List<Setting> stores = settingDAO.findAllByCategory(Constants.GENERAL_SETTING_CATEGORY);

        for (Setting store : stores) {
            request.setAttribute(store.getKey(), store.getValue());
        }

        // category
        List<Category> parents = categoryDAO.findAllParentCategory();
        List<Category> childs = categoryDAO.findAllChildCategory();
        request.setAttribute("parents", parents);
        request.setAttribute("childs", childs);

        request.getRequestDispatcher("frontend/checkout.jsp").forward(request, response);
    }

    public void placeOrder() throws ServletException, IOException {
        String recipientName = request.getParameter("fullName");
        String recipientPhone = request.getParameter("phone");
        String street = request.getParameter("street");
        String ward = request.getParameter("ward");
        String district = request.getParameter("district");
        String city = request.getParameter("city");

        Address address = new Address(street, ward, district, city);

        Customer customer = (Customer) request.getSession().getAttribute("loggedCustomer");

        Order order = new Order();
        order.setCustomer(customer);
        order.setPaymentMethod("Thanh to??n khi nh???n h??ng");
        order.setRecipientName(recipientName);
        order.setRecipientPhone(recipientPhone);
        order.setAddress(address);

        ShoppingCart shoppingCart = (ShoppingCart) request.getSession().getAttribute("cart");
        Map<Product, Integer> items = shoppingCart.getItems();
        Iterator<Product> iterator = items.keySet().iterator();

        Set<OrderDetail> orderDetails = new HashSet<>();

        while (iterator.hasNext()) {
            Product product = iterator.next();
            Integer quantity = items.get(product);
            int subtotal = product.getPrice() * quantity;

            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setProduct(product);
            orderDetail.setQuantity(quantity);
            orderDetail.setOrder(order);
            orderDetail.setSubTotal(subtotal);
            orderDetail.setProductCost(product.getPrice());

            orderDetails.add(orderDetail);
        }

        order.setOrderDetails(orderDetails);
        order.setTotal(shoppingCart.getTotalAmount());
        order.setStatus("??ang x??? l??");

        orderDAO.save(order);

        shoppingCart.clear();

        String message = "?????t h??ng th??nh c??ng. Ch??ng t??i s??? giao h??ng cho b???n trong m???t v??i ng??y t???i";
        request.setAttribute("message", message);
        request.setAttribute("buttonName", "Quay tr??? l???i trang ch???");
        request.setAttribute("buttonLink", "/motorbike_shop/");

        request.getRequestDispatcher("frontend/message.jsp").forward(request, response);
    }

    public void showOrderHistory() throws ServletException, IOException {
        // setting
        List<Setting> stores = settingDAO.findAllByCategory(Constants.GENERAL_SETTING_CATEGORY);

        for (Setting store : stores) {
            request.setAttribute(store.getKey(), store.getValue());
        }

        // category
        List<Category> parents = categoryDAO.findAllParentCategory();
        List<Category> childs = categoryDAO.findAllChildCategory();
        request.setAttribute("parents", parents);
        request.setAttribute("childs", childs);

        Customer customer = (Customer) request.getSession().getAttribute("loggedCustomer");

        List<Order> orders = orderDAO.findAllByCustomer("", customer.getId());
        request.setAttribute("listOrders", orders);
        Map<Integer, Integer> statusIds = new HashMap<>();
        for (Order order : orders) {
            int statusId = getStatusId(order.getStatus());
            statusIds.put(order.getId(), statusId);
        }
        request.setAttribute("statusIds", statusIds);

        request.getRequestDispatcher("frontend/order.jsp").forward(request, response);
    }
}
