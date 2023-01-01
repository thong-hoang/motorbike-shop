package edu.nlu.motorbike_shop.controller.frontend;

import edu.nlu.motorbike_shop.dao.BannerDAO;
import edu.nlu.motorbike_shop.entity.Banner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("")
public class HomeServlet extends HttpServlet {
    private final BannerDAO bannerDAO = BannerDAO.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String homepage = "frontend/index.jsp";
        List<Banner> banners = bannerDAO.findAllEnabled("created_time", "DESC");
        int totalBanner = banners.size();
        request.setAttribute("banners", banners);
        request.setAttribute("totalBanner", totalBanner);
        request.getRequestDispatcher(homepage).forward(request, response);
    }
}
