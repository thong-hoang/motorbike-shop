package edu.nlu.motorbike_shop.controller.backend.setting.role;

import edu.nlu.motorbike_shop.service.RoleService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateRoleServlet", urlPatterns = "/backend/update_role")
public class UpdateRoleServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RoleService service = new RoleService(request, response);
        service.updateRole();
    }
}
