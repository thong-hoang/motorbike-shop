package edu.nlu.motorbike_shop.controller.backend.brand;

import edu.nlu.motorbike_shop.service.BrandService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteBrandServlet", value = "/backend/delete_brand")
public class DeleteBrandServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BrandService service = new BrandService(request, response);
        service.deleteBrand();
    }
}
