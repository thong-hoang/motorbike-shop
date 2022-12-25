package edu.nlu.motorbike_shop.controller.backend.employee;

import edu.nlu.motorbike_shop.dao.EmployeeDAO;
import edu.nlu.motorbike_shop.entity.Address;
import edu.nlu.motorbike_shop.entity.Role;
import edu.nlu.motorbike_shop.entity.Employee;
import edu.nlu.motorbike_shop.service.EmployeeService;
import edu.nlu.motorbike_shop.util.FileUploadUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "CreateEmployeeServlet", value = "/backend/create_employee")
public class CreateEmployeeServlet extends HttpServlet {
    private final EmployeeDAO employeeDAO = EmployeeDAO.getInstance();
//    private ServletFileUpload uploader = null;
//
//    @Override
//    public void init() throws ServletException {
//        // Create a factory for disk-based file items
//        DiskFileItemFactory fileFactory = new DiskFileItemFactory();
//
//        // Configure a repository (to ensure a secure temp location is used)
//        File filesDirFile = (File) getServletContext().getAttribute("FILES_DIR_FILE");
//        fileFactory.setRepository(filesDirFile);
//
//        // Create a new file upload handler
//        this.uploader = new ServletFileUpload(fileFactory);
//    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeService service = new EmployeeService(request, response);

        service.createEmployee();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployeeService employeeService = new EmployeeService(request, response);

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String street = request.getParameter("street");
        String ward = request.getParameter("ward");
        String district = request.getParameter("district");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String[] roles = request.getParameterValues("roles");
        boolean enabled = "on".equals(request.getParameter("enabled"));

//        Part part = request.getPart("imagePath");
//
//        String directory = ROOT_DIRECTORY + "images\\employee";
//        String imagePath = FileUploadUtils.extractFileName(part);

        boolean existEmployee = employeeDAO.checkEmailExists(email);

        if (existEmployee) {
            String message = "Email " + email + " đã tồn tại!!!";
            request.setAttribute("message", message);

            Employee employee = new Employee(firstName, lastName, phone, new Address(street, ward, district, city),
                    email, password, enabled);
            employeeService.getRolesDisplayedAdminInterface();
            request.setAttribute("employee", employee);

            String employeeFormPage = "employee-form.jsp";
            request.getRequestDispatcher(employeeFormPage).forward(request, response);
        } else {
//            if (imagePath.isEmpty() || imagePath == null) {
            Employee newEmployee = new Employee(firstName, lastName, phone, new Address(street, ward, district, city),
                    email, password, enabled);
            for (String role : roles) {
                newEmployee.addRole(new Role(Integer.parseInt(role)));
            }

            employeeDAO.save(newEmployee);
//            } else {
//                Employee newEmployee = new Employee(firstName, lastName, phone, new Address(street, ward, district, city),
//                        imagePath, email, password, enabled);
//                for (String role : roles) {
//                    newEmployee.addRole(new Role(Integer.parseInt(role)));
//                }
//
//                employeeDAO.save(newEmployee);
//
//                Integer employeeId = employeeDAO.findByEmail(email).getId();
//
//                FileUploadUtils.saveFile(directory + "/" + employeeId, imagePath, part);
//            }
            String message = "Nhân viên " + lastName + " " + firstName + " đã được thêm thành công !";
            employeeService.listEmployee(message);
        }


//        // Check if file upload is required
//        if (!ServletFileUpload.isMultipartContent(request))
//            throw new ServletException("Content type is not multipart/form-data");
//
//        try {
//            // Parse the request
//            List<FileItem> fileItemsList = uploader.parseRequest(request);
//
//            // Process the uploaded items
//            Iterator<FileItem> fileItemsIterator = fileItemsList.iterator();
//            while (fileItemsIterator.hasNext()) {
//                FileItem fileItem = fileItemsIterator.next();
//
//                String filesDir = request.getServletContext().getAttribute("FILES_DIR") + File.separator + fileItem.getName();
//                File file = new File(filesDir);
//                if (file.getName().equals("null"))
//                    break;
//                else {
//                    fileItem.write(file);
//                    System.out.println(filesDir);
//
//                }
//
//                request.setAttribute("image", filesDir);
//                request.getRequestDispatcher("/backend/test").forward(request, response);
//            }
//
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
    }
}
