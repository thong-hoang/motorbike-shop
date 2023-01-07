package edu.nlu.motorbike_shop.controller.frontend.cart;

import edu.nlu.motorbike_shop.service.ShoppingCartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddToCartServlet", value = "/add_to_cart")
public class AddToCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ShoppingCartService service = new ShoppingCartService(request, response);
        service.addToCart();
    }
}
