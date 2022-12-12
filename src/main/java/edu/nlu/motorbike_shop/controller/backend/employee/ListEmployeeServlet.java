package edu.nlu.motorbike_shop.controller.backend.employee;

import edu.nlu.motorbike_shop.service.EmployeeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ListEmployeeServlet", value = "/backend/list_employees")
public class ListEmployeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeService service = new EmployeeService(request, response);

        service.listEmployee();
    }
}
