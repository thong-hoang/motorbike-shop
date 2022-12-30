package edu.nlu.motorbike_shop.controller.frontend;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String homepage = "frontend/index.jsp";

        request.getRequestDispatcher(homepage).forward(request, response);
    }
}
