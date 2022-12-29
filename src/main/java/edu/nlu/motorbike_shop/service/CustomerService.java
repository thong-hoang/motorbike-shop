package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.CustomerDAO;
import edu.nlu.motorbike_shop.entity.Customer;
import edu.nlu.motorbike_shop.entity.Employee;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

import static edu.nlu.motorbike_shop.constant.Constants.DEFAULT_IMAGE_DIRECTORY;
import static edu.nlu.motorbike_shop.constant.Constants.DEFAULT_PAGE_SIZE;
import static edu.nlu.motorbike_shop.util.FileUploadUtils.removeDir;

/**
 * Handle logic between user and server
 *
 * @author Nguyen Hoang Vinh
 * @version 2.0
 * @since 2022-12-18
 */
public class CustomerService {
    private final CustomerDAO customerDAO = CustomerDAO.getInstance();
    private final HttpServletRequest request;
    private final HttpServletResponse response;

    public CustomerService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of customers that respond back to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listCustomer() throws ServletException, IOException {
        listCustomer(null);
    }

    /**
     * Returns a list of customers and a response message to the user.
     *
     * @param message A message specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listCustomer(String message) throws ServletException, IOException {
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

        long numberOfCustomers = customerDAO.count();
        int totalKeywordResults = customerDAO.countByKeyword(keyword);

        List<Customer> customers = customerDAO.findAll(keyword, "created_time", "DESC", DEFAULT_PAGE_SIZE, pageNumber);

        long totalPages = totalKeywordResults / DEFAULT_PAGE_SIZE;
        if (numberOfCustomers % DEFAULT_PAGE_SIZE != 0) totalPages++;

        request.setAttribute("currentPage", pageNumber);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("keyword", keyword);
        request.setAttribute("numberOfCustomers", numberOfCustomers);
        request.setAttribute("listCustomers", customers);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "customer.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    /**
     * Get the customer's id and enable status from the request and update it to the database.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void enabledCustomer() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        boolean enabled = Boolean.parseBoolean(request.getParameter("enabled"));

        Customer customer = customerDAO.findById(id);

        String message;

        if (customer == null) {
            message = "Không tìm thấy khách hàng hoặc khách hàng đã bị xóa";
        } else {
            customerDAO.updateEnabledStatus(id, enabled);
            message = "Khách hàng " + customer.getLastName() + " " + customer.getFirstName() + " đã được "
                    + (enabled ? "kích hoạt" : "vô hiệu hóa") + " thành công !";
        }
        listCustomer(message);
    }

    /**
     * Get the customer's id from the request and delete it from the database.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void deleteCustomer() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        Customer customer = customerDAO.findById(id);

        String message;

        if (customer == null) {
            message = "Không tìm thấy khách hàng hoặc khách hàng đã bị xóa";
        } else {
            customerDAO.delete(id);
            message = "Khách hàng " + customer.getLastName() + " " + customer.getFirstName() + " đã được xóa thành công !";
        }
        listCustomer(message);
    }
}
