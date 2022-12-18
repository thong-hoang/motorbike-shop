package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.CustomerDAO;
import edu.nlu.motorbike_shop.entity.Customer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Handle logic between user and server
 *
 * @author Nguyen Hoang Vinh
 * @version 2.0
 * @since 2022-12-18
 */
public class CustomerService {
    private CustomerDAO customerDAO = CustomerDAO.getInstance();
    private HttpServletRequest request;
    private HttpServletResponse response;
    private final String DEFAULT_SORT_TYPE = "ASC";

    private final String DEFAULT_SORT_FIELD = "id";

    private final int DEFAULT_PAGE_SIZE = 5;

    public CustomerService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }
    /**
     * Returns a list of customers and a response message to the user.
     *
     * @param message A message specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void listCustomer(String message) throws ServletException, IOException {
        List<Customer> customers = customerDAO.findAll(DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, DEFAULT_SORT_FIELD);
        long numberOfCustomers = customerDAO.count();

        request.setAttribute("listCustomers", customers);
        request.setAttribute("numberOfCustomers", numberOfCustomers);
        request.setAttribute("totalCustomers", numberOfCustomers);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "customer.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    public void listCustomer() throws ServletException, IOException {
        listCustomer(null);
    }
}
