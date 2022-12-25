package edu.nlu.motorbike_shop.util;

import javax.servlet.ServletException;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

public class FileUploadUtils {
    /**
     * Save file to disk on server.
     *
     * @param directory The directory specified to save the file.
     * @param fileName  The name of the file to be saved.
     * @param part      send from multipart/form-data POST request
     * @throws IOException      If an input or output exception occurred.
     * @throws ServletException If a servlet exception occurred.
     */
    public static void saveFile(String directory, String fileName, Part part) throws IOException, ServletException {
        File fileUploadDirectory = new File(directory);
        if (!fileUploadDirectory.exists()) {
            fileUploadDirectory.mkdirs();
        }

        part.write(directory + "/" + fileName);
    }

    /**
     * Get file name from part.
     *
     * @param part send from multipart/form-data POST request
     * @return The file name sent from form.
     */
    public static String extractFileName(Part part) {
        // content-disposition header= form-data; name="imagePath"; filename="199391618_4108159169276854_1096528955587106310_n.jpg"
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
