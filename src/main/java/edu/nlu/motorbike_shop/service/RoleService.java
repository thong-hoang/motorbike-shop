package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.RoleDAO;
import edu.nlu.motorbike_shop.entity.Role;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static edu.nlu.motorbike_shop.constant.Constants.*;

/**
 * Handle logic between user and server
 *
 * @author Hoang Pham Thong
 * @version 1.0
 * @since 2022-11-1
 */

public class RoleService {
    private final RoleDAO roleDAO = RoleDAO.getInstance();
    private final HttpServletRequest request;
    private final HttpServletResponse response;

    public RoleService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of roles that respond back to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void listRole() throws ServletException, IOException {
        listRole(null);
    }

    /**
     * Returns a list of roles and a response message to the user.
     *
     * @param message A String specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void listRole(String message) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        if (keyword == null)
            keyword = "";
        String pageNumberString = request.getParameter("pageNumber");
        int pageNumber;

        if (pageNumberString == null) {
            pageNumber = 1;
        } else {
            pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        }

        int numberOfRoles = roleDAO.count();
        int totalKeywordResults = roleDAO.countByKeyword(keyword);

        List<Role> roles = roleDAO.findAll(keyword, DEFAULT_SORT_FIELD, DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, pageNumber);

        long totalPages = totalKeywordResults / DEFAULT_PAGE_SIZE;
        if (numberOfRoles % DEFAULT_PAGE_SIZE != 0) totalPages++;

        request.setAttribute("currentPage", pageNumber);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("keyword", keyword);
        request.setAttribute("numberOfRoles", numberOfRoles);
        request.setAttribute("listRoles", roles);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "setting-role.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    /**
     * Display role form to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void createRole() throws ServletException, IOException {
        request.getRequestDispatcher("setting-role-form.jsp").forward(request, response);
    }

    /**
     * Allows a servlet to process a request to save a new role. If a new role with a name already exists, it cannot be saved.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void save() throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        Role role = new Role(name, description);

        Role existRole = roleDAO.findByName(name);

        if (existRole != null) {
            String message = "Vai trò " + name + " đã tồn tại!!!";
            request.setAttribute("message", message);
            request.setAttribute("role", role);

            createRole();
        } else {
            roleDAO.save(role);

            String message = "Vai trò " + name + " đã được thêm thành công";
            listRole(message);
        }
    }

    /**
     * Allows the processing servlet to display role information according to the specified id.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void editRole() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        Role role = roleDAO.findById(id);
        if (role == null) {
            String message = "Không tìm thấy vai trò";
            listRole(message);
        } else {
            request.setAttribute("role", role);
            request.setAttribute("title", "Chỉnh sửa vai trò " + role.getName());
            createRole();
        }
    }

    /**
     * Allow the servlet to handle the role update request.
     *
     * <p> If the name of the role matches another role, it will not be able to update.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output is detected when the servlet handles the GET request
     */

    public void updateRole() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        Role role = new Role(id, name, description);

        Role roleByName = roleDAO.findByName(name);
        Role roleById = roleDAO.findById(id);
        String message;

        if (roleById == null) {
            message = "Không tìm thấy vai trò";
            listRole(message);
        } else {
            if (roleByName != null && id != roleByName.getId()) {
                message = "Vai trò " + name + " đã tồn tại!!!";
                request.setAttribute("message", message);
                request.setAttribute("role", role);
                request.setAttribute("title", "Chỉnh sửa vai trò ");

                createRole();
            } else {
                roleDAO.update(role);

                message = "Vai trò " + name + " đã được cập nhật thành công !";
                listRole(message);
            }
        }
    }
}
