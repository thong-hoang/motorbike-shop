package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.SettingDAO;
import edu.nlu.motorbike_shop.entity.Setting;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.List;

import static edu.nlu.motorbike_shop.constant.Constants.*;
import static edu.nlu.motorbike_shop.util.FileUploadUtils.*;

public class SettingStoreService {
    private final HttpServletRequest request;
    private final HttpServletResponse response;

    private final SettingDAO settingDAO = SettingDAO.getInstance();

    public SettingStoreService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Show setting store page.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void showSettingStore() throws ServletException, IOException {
        List<Setting> stores = settingDAO.findAllByCategory(GENERAL_SETTING_CATEGORY);

        for (Setting store : stores) {
            request.setAttribute(store.getKey(), store.getValue());
        }

        String settingStorePage = "setting-store.jsp";
        request.getRequestDispatcher(settingStorePage).forward(request, response);
    }

    public List<Setting> updateSettingValuesFromForm() {
        List<Setting> generals = settingDAO.findAllByCategory(GENERAL_SETTING_CATEGORY);
        for (Setting general : generals) {
            String value = request.getParameter(general.getKey());
            if (value != null) general.setValue(value);
        }

        return generals;
    }

    public void updateSettingStore() throws IOException, ServletException {
        Part part = request.getPart("image");
        String fileName = part.getSubmittedFileName();
        List<Setting> settings = updateSettingValuesFromForm();

        if (!fileName.isEmpty()) {
            for (Setting setting : settings) {
                if (setting.getKey().equals("SITE_LOGO")) setting.setValue(fileName);
            }

            String serverPath = request.getServletContext().getRealPath("");
            String directoryServerPath = serverPath + File.separator + DEFAULT_IMAGE_DIRECTORY;

            String nameDirectoryServer = "setting" + File.separator + "logo";
            directoryServerPath = directoryServerPath + File.separator + nameDirectoryServer;

            cleanDir(directoryServerPath);
            cleanDir(DEFAULT_APP_IMAGE_DIRECTORY + nameDirectoryServer);

            saveFile(directoryServerPath, fileName, part);
            String fileServerPath = directoryServerPath + File.separator + fileName;
            copyFile(fileServerPath, nameDirectoryServer);
        }


        for (Setting setting : settings) {
            settingDAO.updateSettingStore(setting);
        }

        String message = "Thông tin cửa hàng đã được cập nhật thành công.";
        request.setAttribute("message", message);

        showSettingStore();
    }
}
