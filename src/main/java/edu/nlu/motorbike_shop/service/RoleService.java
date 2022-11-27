package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.RoleDAO;
import edu.nlu.motorbike_shop.entity.Role;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Handle logic between user and server
 *
 * @author Hoang Pham Thong
 * @version 1.0
 * @since 2022-11-1
 */

public class RoleService {
    private RoleDAO roleRepo = RoleDAO.getInstance();
    private HttpServletRequest request;
    private HttpServletResponse response;

    public RoleService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of roles that respond back to user
     *
     * @param message A String specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException If an input or output error is detected when the servlet handles the GET request
     */

    public void listRole(String message) throws ServletException, IOException {
        List<Role> roles = roleRepo.findAll();

        request.setAttribute("listRoles", roles);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "setting-role.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    public void listRole() throws ServletException, IOException {
        listRole(null);
    }
}
