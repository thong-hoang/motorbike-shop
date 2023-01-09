package edu.nlu.motorbike_shop.controller.frontend.checkout;

import edu.nlu.motorbike_shop.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShowCheckoutServlet", value = "/checkout")
public class ShowCheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderService orderService = new OrderService(request, response);
        orderService.showCheckoutPage();
    }
}
