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
 * @version 1.0
 * @since 2022-12-4
 */
public class CustomerService {
    private CustomerDAO customerRepo = CustomerDAO.getInstance();
    private HttpServletRequest request;
    private HttpServletResponse response;

    public CustomerService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of customers that respond back to user
     *
     * @param message A String specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException If an input or output error is detected when the servlet handles the GET request
     */

    public void listRole(String message) throws ServletException, IOException {
        List<Customer> customers = customerRepo.findAll();

        request.setAttribute("listCustomers", customers);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "customer.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    public void listCustomer(Object o) throws ServletException, IOException {
        listCustomer(null);
    }
}

