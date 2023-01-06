package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.BrandDAO;
import edu.nlu.motorbike_shop.dao.CategoryDAO;
import edu.nlu.motorbike_shop.entity.Brand;
import edu.nlu.motorbike_shop.entity.Category;
import edu.nlu.motorbike_shop.entity.Product;
import edu.nlu.motorbike_shop.entity.Status;
import edu.nlu.motorbike_shop.util.FileUploadUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static edu.nlu.motorbike_shop.constant.Constants.*;
import static edu.nlu.motorbike_shop.util.FileUploadUtils.*;

public class BrandService {
    private final HttpServletRequest request;
    private final HttpServletResponse response;
    private final BrandDAO brandDAO = BrandDAO.getInstance();

    private final CategoryDAO categoryDAO = CategoryDAO.getInstance();

    public BrandService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of brands that respond back to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listBrand() throws ServletException, IOException {
        listBrand(null);
    }

    /**
     * Returns a list of brands and a response message to the user.
     *
     * @param message A message specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listBrand(String message) throws ServletException, IOException {
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

        int numberOfbrands = brandDAO.count();
        int totalKeywordResults = brandDAO.countByKeyword(keyword);

        List<Brand> brands = brandDAO.findAll(keyword, DEFAULT_SORT_FIELD, DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, pageNumber);

        long totalPages = totalKeywordResults / DEFAULT_PAGE_SIZE;
        if (numberOfbrands % DEFAULT_PAGE_SIZE != 0) totalPages++;

        request.setAttribute("currentPage", pageNumber);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("keyword", keyword);
        request.setAttribute("numberOfBrands", numberOfbrands);
        request.setAttribute("listBrands", brands);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "brand.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    /**
     * Display brand form to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void createBrand() throws ServletException, IOException {
        List<Category> categories = categoryDAO.findAllChildCategory();
        request.setAttribute("categories", categories);
        request.getRequestDispatcher("brand-form.jsp").forward(request, response);
    }

    /**
     * Read brand information submitted from the form.
     *
     * @return A brand object with information read from form.
     */
    public Brand readAllBrandFields(Brand brand) {
        String name = request.getParameter("name");
        boolean enabled = "on".equals(request.getParameter("enabled"));

        String[] categories = request.getParameterValues("categories");

        for (String categoryId : categories) {
            brand.addCategory(new Category(Integer.parseInt(categoryId)));
        }

        brand.setName(name);
        brand.setEnabled(enabled);

        return brand;
    }

    /**
     * Get brand's information from the form and save it in the database.
     *
     * @throws ServletException If the request for the POST could not be handled.
     * @throws IOException      If an input or output error is detected when the servlet handles the POST request.
     */
    public void saveBrand() throws ServletException, IOException {
        Brand brand = new Brand();
        brand = readAllBrandFields(brand);

        Brand existName = brandDAO.findByName(brand.getName());

        if (existName != null) {
            String message = "Thương hiệu " + brand.getName() + " đã tồn tại!!!";
            brand.setImagePath(null);
            request.setAttribute("message", message);
            request.setAttribute("brand", brand);

            createBrand();
        } else {
            Part part = request.getPart("image");
            String fileName = part.getSubmittedFileName();

            brand.setImagePath(fileName);
            brandDAO.save(brand);

            Integer id = brandDAO.findByName(brand.getName()).getId();
            String serverPath = request.getServletContext().getRealPath("");
            String directoryServerPath = serverPath + File.separator + DEFAULT_IMAGE_DIRECTORY + File.separator;
            String nameDirectoryServer = "brand" + File.separator + id;

            directoryServerPath = directoryServerPath + File.separator + nameDirectoryServer;
            saveFile(directoryServerPath, fileName, part);
            String fileServerPath = directoryServerPath + File.separator + fileName;
            FileUploadUtils.copyFile(fileServerPath, nameDirectoryServer);


            String message = "Thương hiệu " + brand.getName() + " đã được thêm thành công !";
            listBrand(message);
        }
    }

    /**
     * Get category of brand corresponding from database and display it to user.
     *
     * @param brand The brand to get category.
     * @return A map of category and checked status.
     */
    public Map<Category, String> getSelectedCategories(Brand brand) {
        Map<Category, String> categoryMap = new HashMap<>();

        categoryDAO.findAllChildCategory().forEach(category -> categoryMap.put(category, ""));
        brand.getCategories().forEach(category -> categoryMap.put(category, "checked"));
        return categoryMap;
    }

    /**
     * Get brand's information corresponding to the given ID from the database and display it in the form.
     *
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request.
     * @throws ServletException If the request for the GET could not be handled.
     */
    public void editBrand() throws IOException, ServletException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        Brand brand = brandDAO.findById(id);

        Map<Category, String> categoryMap = getSelectedCategories(brand);

        request.setAttribute("categoryMap", categoryMap);

        if (brand == null) {
            String message = "Không tìm thấy quảng cáo này";

            listBrand(message);
        } else {
            request.setAttribute("brand", brand);
            request.setAttribute("title", "Chỉnh sửa quảng cáo");

            createBrand();
        }
    }

    /**
     * Get the brand's information from the request and update it into the database.
     *
     * @throws ServletException If the request for the POST could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the POST request
     */
    public void updateBrand() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        Brand brand = new Brand();
        brand = readAllBrandFields(brand);
        brand.setId(id);

        Brand brandById = brandDAO.findById(id);
        Brand brandByName = brandDAO.findByName(brand.getName());

        String message;

        if (brandById == null) {
            message = "Không tìm thấy thương hiệu này";
            listBrand(message);
        } else {
            if (brandByName != null && id != brandByName.getId()) {
                message = "Thương hiệu " + brand.getName() + " đã tồn tại!!!";

                Map<Category, String> categoryMap = getSelectedCategories(brandById);

                request.setAttribute("message", message);
                request.setAttribute("brand", brandById);
                request.setAttribute("categoryMap", categoryMap);
                request.setAttribute("title", "Chỉnh sửa thương hiệu");

                createBrand();
            } else {
                Part part = request.getPart("image");
                String fileName = part.getSubmittedFileName();

                if (fileName.isEmpty()) {
                    brand.setImagePath(brandById.getImagePath());

                    brandDAO.update(brand);
                } else {
                    brand.setImagePath(fileName);
                    String serverPath = request.getServletContext().getRealPath("");
                    String directoryServerPath = serverPath + File.separator + DEFAULT_IMAGE_DIRECTORY;

                    String nameDirectoryServer = "brand" + File.separator + id;
                    directoryServerPath = directoryServerPath + File.separator + nameDirectoryServer;

                    cleanDir(directoryServerPath);
                    cleanDir(DEFAULT_APP_IMAGE_DIRECTORY + nameDirectoryServer);

                    saveFile(directoryServerPath, fileName, part);
                    String fileServerPath = directoryServerPath + File.separator + fileName;
                    copyFile(fileServerPath, nameDirectoryServer);

                    brandDAO.update(brand);
                }
                message = "Thương hiệu " + brand.getName() + " đã được cập nhật thành công !";
                listBrand(message);
            }
        }
    }

    /**
     * Get the brand id and enable status from the request and update it to the database.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void enabledBrand() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        boolean enabled = Boolean.parseBoolean(request.getParameter("enabled"));

        Brand brand = brandDAO.findById(id);

        String message;

        if (brand == null) {
            message = "Không tìm thấy thương hiệu hoặc thương hiệu này đã bị xóa";
        } else {
            brandDAO.updateEnabledStatus(id, enabled);
            message = "Thương hiệu " + brand.getName() + " này đã được " + (enabled ? "kích hoạt" : "vô hiệu hóa") + " thành công !";
        }

        listBrand(message);
    }

    /**
     * Get the brand id from the request and delete it from the database.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void deleteBrand() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        Brand brand = brandDAO.findById(id);

        String message;

        if (brand == null) {
            message = "Không tìm thấy thương hiệu hoặc thương hiệu đã bị xóa";
        } else {
            brandDAO.delete(id);
            String serverPath = request.getServletContext().getRealPath("");
            String directoryServerPath = serverPath + File.separator + DEFAULT_IMAGE_DIRECTORY;
            String nameDirectoryServer = "brand" + File.separator + id;
            directoryServerPath = directoryServerPath + File.separator + nameDirectoryServer;

            removeDir(directoryServerPath);
            removeDir(DEFAULT_APP_IMAGE_DIRECTORY + nameDirectoryServer);

            message = "Thương hiệu " + brand.getName() + " đã được xóa thành công !";
        }
        listBrand(message);
    }
}
