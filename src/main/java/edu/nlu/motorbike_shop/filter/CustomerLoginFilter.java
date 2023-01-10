package edu.nlu.motorbike_shop.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class CustomerLoginFilter implements Filter {

    private static final String[] loginRequiredURLs = {
            "/account-info", "/reset_password", "/checkout"
    };

    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpSession session = httpRequest.getSession(false);
        String contextPath = httpRequest.getContextPath(); // /motorbike_shop
        String requestURI = httpRequest.getRequestURI();
        String requestURL = httpRequest.getRequestURL().toString();

        String path = requestURI.substring(contextPath.length());

        if (path.startsWith("/backend/")) {
            chain.doFilter(request, response);
            return;
        }

        boolean isLoggedIn = session != null && session.getAttribute("loggedCustomer") != null;

        if (!isLoggedIn && isLoginRequired(requestURL)) {
            String queryString = httpRequest.getQueryString();
            String redirectURL = requestURL;

            if (queryString != null) {
                redirectURL = redirectURL.concat("?").concat(queryString);
            }

            session.setAttribute("redirectURL", redirectURL);

            RequestDispatcher dispatcher = request.getRequestDispatcher("frontend/login.jsp");
            dispatcher.forward(request, response);
        } else {
            // allow the request to go through this filter
            chain.doFilter(request, response);
        }
    }

    private static boolean isLoginRequired(String requestURL) {
        for (String loginRequiredURL : loginRequiredURLs) {
            if (requestURL.contains(loginRequiredURL)) {
                return true;
            }
        }
        return false;
    }
}

