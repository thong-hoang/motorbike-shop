package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.OrderDAO;
import edu.nlu.motorbike_shop.entity.Order;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static edu.nlu.motorbike_shop.constant.Constants.*;

public class OrderService {
    private final OrderDAO orderDAO = OrderDAO.getInstance();
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

        String listPage = "order.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    public void viewOrderDetail() throws ServletException, IOException {
        Integer orderId = Integer.parseInt(request.getParameter("id"));

        Order order = orderDAO.findById(orderId);
        request.setAttribute("order", order);

        request.getRequestDispatcher("order-detail.jsp").forward(request, response);
    }
}
