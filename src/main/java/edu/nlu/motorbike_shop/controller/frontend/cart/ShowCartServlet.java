package edu.nlu.motorbike_shop.controller.frontend.cart;

import edu.nlu.motorbike_shop.service.ShoppingCartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShowCartServlet", value = "/cart")
public class ShowCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingCartService service = new ShoppingCartService(request, response);
        service.showCart();
    }
}
