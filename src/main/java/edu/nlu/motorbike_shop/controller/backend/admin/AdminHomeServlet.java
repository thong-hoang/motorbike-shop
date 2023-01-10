package edu.nlu.motorbike_shop.controller.backend.admin;

import edu.nlu.motorbike_shop.dao.CustomerDAO;
import edu.nlu.motorbike_shop.dao.EmployeeDAO;
import edu.nlu.motorbike_shop.dao.OrderDAO;
import edu.nlu.motorbike_shop.dao.ProductDAO;

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
        long numberOfCustomers = CustomerDAO.getInstance().count();
        long numberOfProducts = ProductDAO.getInstance().count();
        long numberOfOrders = OrderDAO.getInstance().count();

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
