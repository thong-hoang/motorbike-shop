package edu.nlu.motorbike_shop.controller.frontend.shop;

import edu.nlu.motorbike_shop.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShowShopServlet", value = "/search")
public class ShowShopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductService service = new ProductService(request, response);
        service.showProduct();
    }
}
