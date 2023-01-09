package edu.nlu.motorbike_shop.controller.backend.order;

import edu.nlu.motorbike_shop.service.OrderService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ListOrderServlet", value = "/backend/list_orders")
public class ListOrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderService service = new OrderService(request, response);
        service.listOrder();
    }
}
