package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.EmployeeDAO;
import edu.nlu.motorbike_shop.entity.Employee;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class EmployeeService {
    private EmployeeDAO employeeDAO = EmployeeDAO.getInstance();
    private HttpServletRequest request;
    private HttpServletResponse response;

    private final String DEFAULT_SORT_TYPE = "ASC";

    private final String DEFAULT_SORT_FIELD = "id";

    private final int DEFAULT_PAGE_SIZE = 5;

    public EmployeeService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of employees and a response message to the user.
     *
     * @param message A message specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void listEmployee(String message) throws ServletException, IOException {
        List<Employee> employees = employeeDAO.findAll(DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, DEFAULT_SORT_FIELD);
        long numberOfEmployees = employeeDAO.count();

        request.setAttribute("listEmployees", employees);
        request.setAttribute("numberOfEmployees", numberOfEmployees);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "employee.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    /**
     * Returns a list of employees that respond back to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void listEmployee() throws ServletException, IOException {
        listEmployee(null);
    }
}
