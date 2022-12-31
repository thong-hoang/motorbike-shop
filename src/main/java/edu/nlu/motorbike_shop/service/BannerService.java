package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.BannerDAO;
import edu.nlu.motorbike_shop.entity.Banner;
import edu.nlu.motorbike_shop.entity.Employee;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static edu.nlu.motorbike_shop.constant.Constants.*;
import static edu.nlu.motorbike_shop.constant.Constants.DEFAULT_PAGE_SIZE;

public class BannerService {
    private final HttpServletRequest request;
    private final HttpServletResponse response;
    private final BannerDAO bannerDAO = BannerDAO.getInstance();

    public BannerService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of banners that respond back to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listBanner() throws ServletException, IOException {
        listBanner(null);
    }

    /**
     * Returns a list of banners and a response message to the user.
     *
     * @param message A message specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listBanner(String message) throws ServletException, IOException {
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

        int numberOfBanners = bannerDAO.count();
        int totalKeywordResults = bannerDAO.countByKeyword(keyword);

        List<Banner> banners = bannerDAO.findAll(keyword, DEFAULT_SORT_FIELD, DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, pageNumber);

        long totalPages = totalKeywordResults / DEFAULT_PAGE_SIZE;
        if (numberOfBanners % DEFAULT_PAGE_SIZE != 0) totalPages++;

        request.setAttribute("currentPage", pageNumber);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("keyword", keyword);
        request.setAttribute("numberOfBanners", numberOfBanners);
        request.setAttribute("listBanners", banners);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "banner.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }
}
