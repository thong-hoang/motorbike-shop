package edu.nlu.motorbike_shop.controller.backend.banner;

import edu.nlu.motorbike_shop.service.BannerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditBannerServlet", value = "/backend/edit_banner")
public class EditBannerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BannerService service = new BannerService(request, response);
        service.editBanner();
    }
}
