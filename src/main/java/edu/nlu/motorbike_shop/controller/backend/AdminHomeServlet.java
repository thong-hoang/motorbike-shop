package edu.nlu.motorbike_shop.controller.backend;

import edu.nlu.motorbike_shop.dao.EmployeeDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AdminHomeServlet", urlPatterns = "/backend/")
public class AdminHomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String homepage = "index.jsp";
        long numberOfEmployees = EmployeeDAO.getInstance().count();
        long numberOfCustomers = 50;
        long numberOfProducts = 400;
        long numberOfOrders = 70;

        request.setAttribute("totalEmployees", numberOfEmployees);
        request.setAttribute("totalCustomers", numberOfCustomers);
        request.setAttribute("totalProducts", numberOfProducts);
        request.setAttribute("totalOrders", numberOfOrders);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher(homepage);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
