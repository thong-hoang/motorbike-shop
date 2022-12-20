package edu.nlu.motorbike_shop.controller.backend.admin;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/backend/*")
public class AdminLoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession(false);

        boolean isLoggedIn = session != null && session.getAttribute("email") != null;

        // httpRequest.getContextPath() == /motorbike_shop
        String loginURI = httpRequest.getContextPath() + "/backend/login";

        // httpRequest.getRequestURI() == /motorbike_shop/backend/
        boolean isLoginRequest = httpRequest.getRequestURI().equals(loginURI);

        boolean isLoginPage = httpRequest.getRequestURI().endsWith("login.jsp");

        // if the user is already logged in when accessing the login link will redirect to the main page
        if (isLoggedIn && (isLoginRequest || isLoginPage)) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/backend/");
            dispatcher.forward(request, response);
        } else if (isLoggedIn || isLoginRequest) {
            // allow the request to go through this filter
            chain.doFilter(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);
        }
    }
}
