package edu.nlu.motorbike_shop.controller.backend.brand;

import edu.nlu.motorbike_shop.service.BrandService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditBrandServlet", value = "/backend/edit_brand")
public class EditBrandServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BrandService service = new BrandService(request, response);
        service.editBrand();
    }
}
