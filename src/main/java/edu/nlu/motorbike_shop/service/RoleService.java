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
     * Returns a list of roles and a response message to the user
     *
     * @param message A String specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void listRole(String message) throws ServletException, IOException {
        List<Role> roles = roleRepo.findAll();

        request.setAttribute("listRoles", roles);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "setting-role.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    /**
     * Returns a list of roles that respond back to user
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void listRole() throws ServletException, IOException {
        listRole(null);
    }

    /**
     * Allows a servlet to process a request to save a new role.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void save() throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String description = request.getParameter("description");

        Role existRole = roleRepo.findByName(name);

        if (existRole != null) {
            String message = "Vai trò " + name + " đã tồn tại!!!";
            request.setAttribute("message", message);

            Role role = new Role(name, description);
            request.setAttribute("role", role);

            String roleFormPage = "setting-role-form.jsp";
            request.getRequestDispatcher(roleFormPage).forward(request, response);
        } else {
            Role newRole = new Role(name, description);
            roleRepo.save(newRole);

            String message = "Vai trò " + name + " đã được thêm thành công !";
            listRole(message);
        }
    }

    /**
     * Allows the processing servlet to display role information according to the specified id
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void editRole() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        Role role = roleRepo.findById(id);
        String message;

        if (role == null) {
            message = "Không tìm thấy vai trò có id là " + id;
            listRole(message);
        } else {
            request.setAttribute("role", role);
            request.setAttribute("title", "Chỉnh sửa vai trò");
            String roleFormPage = "setting-role-form.jsp";
            request.getRequestDispatcher(roleFormPage).forward(request, response);
        }
    }
}
