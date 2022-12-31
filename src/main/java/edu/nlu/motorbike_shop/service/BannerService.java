package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.BannerDAO;
import edu.nlu.motorbike_shop.entity.Banner;
import edu.nlu.motorbike_shop.entity.Employee;
import edu.nlu.motorbike_shop.entity.Role;
import edu.nlu.motorbike_shop.util.FileUploadUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.List;

import static edu.nlu.motorbike_shop.constant.Constants.*;
import static edu.nlu.motorbike_shop.constant.Constants.DEFAULT_PAGE_SIZE;
import static edu.nlu.motorbike_shop.util.FileUploadUtils.saveFile;

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

    /**
     * Display banner form to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void createBanner() throws ServletException, IOException {
        request.getRequestDispatcher("banner-form.jsp").forward(request, response);
    }

    /**
     * Get banner information from the form and save it in the database.
     *
     * @throws ServletException If the request for the POST could not be handled.
     * @throws IOException      If an input or output error is detected when the servlet handles the POST request.
     */
    public void saveBanner() throws ServletException, IOException {
        String name = request.getParameter("name");
        boolean enabled = "on".equals(request.getParameter("enabled"));
        Part part = request.getPart("image");
        String fileName = part.getSubmittedFileName();

        Banner banner = new Banner();
        banner.setName(name);
        banner.setEnabled(enabled);

        boolean existImagePath = bannerDAO.checkImagePathExists(fileName);

        if (existImagePath) {
            String message = "Ảnh " + fileName + " đã tồn tại!!!";
            request.setAttribute("message", message);
            request.setAttribute("banner", banner);

            String bannerFormPage = "banner-form.jsp";
            request.getRequestDispatcher(bannerFormPage).forward(request, response);
        } else {
            String serverPath = request.getServletContext().getRealPath("");
            String directoryServerPath = serverPath + File.separator + DEFAULT_IMAGE_DIRECTORY + File.separator;
            String nameDirectoryServer = "banner";

            banner.setImagePath(fileName);
            bannerDAO.save(banner);

            directoryServerPath = directoryServerPath + File.separator + nameDirectoryServer;

            saveFile(directoryServerPath, fileName, part);
            String fileServerPath = directoryServerPath + File.separator + fileName;
            FileUploadUtils.copyFile(fileServerPath, nameDirectoryServer);

            String message = name + " đã được thêm thành công !";
            listBanner(message);
        }
    }
}