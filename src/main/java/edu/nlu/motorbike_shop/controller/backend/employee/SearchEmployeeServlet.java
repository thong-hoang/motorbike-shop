package edu.nlu.motorbike_shop.controller.backend.employee;

import edu.nlu.motorbike_shop.service.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SearchEmployeeServlet", value = "/backend/search_employee")
public class SearchEmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeService service = new EmployeeService(request, response);
        service.searchEmployee();
    }
}
