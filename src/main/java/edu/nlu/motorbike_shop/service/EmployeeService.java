package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.EmployeeDAO;
import edu.nlu.motorbike_shop.dao.RoleDAO;
import edu.nlu.motorbike_shop.entity.Address;
import edu.nlu.motorbike_shop.entity.Employee;
import edu.nlu.motorbike_shop.entity.HashGenerator;
import edu.nlu.motorbike_shop.entity.Role;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EmployeeService {
    private final EmployeeDAO employeeDAO = EmployeeDAO.getInstance();
    private final RoleDAO roleDAO = RoleDAO.getInstance();
    private final HttpServletRequest request;
    private final HttpServletResponse response;
    private final String DEFAULT_SORT_TYPE = "ASC";
    private final String DEFAULT_SORT_FIELD = "id";
    private final int DEFAULT_PAGE_SIZE = 1;

    public EmployeeService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of employees that respond back to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listEmployee() throws ServletException, IOException {
        listEmployee(null);
    }

    /**
     * Returns a list of employees and a response message to the user.
     *
     * @param message A message specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listEmployee(String message) throws ServletException, IOException {
        String pageNumberString = request.getParameter("pageNumber");
        int pageNumber;

        if (pageNumberString == null) {
            pageNumber = 1;
        } else {
            pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
        }

        List<Employee> employees = employeeDAO.findAll(DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, DEFAULT_SORT_FIELD, pageNumber);
        long numberOfEmployees = employeeDAO.count();

        long totalPages = numberOfEmployees / DEFAULT_PAGE_SIZE;
        if (numberOfEmployees % DEFAULT_PAGE_SIZE != 0) totalPages++;

        request.setAttribute("currentPage", pageNumber);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("listEmployees", employees);
        request.setAttribute("numberOfEmployees", numberOfEmployees);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "employee.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

    /**
     * Displays all roles except admin role from database to employee form.
     */
    public void getRolesDisplayedAdminInterface() {
        List<Role> roles = roleDAO.findAllRolesExceptAdmin();
        request.setAttribute("roles", roles);
    }

    /**
     * Display employee form to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void createEmployee() throws ServletException, IOException {
        getRolesDisplayedAdminInterface();
        request.getRequestDispatcher("employee-form.jsp").forward(request, response);
    }

    /**
     * Get role of employee corresponding from database and display it to user.
     *
     * @param employee The employee to get role.
     * @return A map of role and checked status.
     */
    public Map<Role, String> getSelectedRoles(Employee employee) {
        Map<Role, String> roleMap = new HashMap<>();

        RoleDAO.getInstance().findAllRolesExceptAdmin().forEach(role -> roleMap.put(role, ""));
        employee.getRoles().forEach(role -> roleMap.put(role, "checked"));
        return roleMap;
    }

    /**
     * Read employee information submitted from the form.
     *
     * @return An employee object with information read from form.
     */
    public Employee readAllEmployeeFieldsExceptRole() {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String street = request.getParameter("street");
        String ward = request.getParameter("ward");
        String district = request.getParameter("district");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        boolean enabled = "on".equals(request.getParameter("enabled"));

        Address address = new Address(street, ward, district, city);
        return new Employee(firstName, lastName, phone, address, email, password, enabled);
    }

    /**
     * Read the employee image information submitted from the form.
     *
     * @param employee The employee to set image.
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     * @throws ServletException If the request for the GET could not be handled
     */
    public void readImageFieldFromForm(Employee employee) throws IOException, ServletException {
        Part part = request.getPart("image");
        if (part != null && part.getSize() > 0) {
            long size = part.getSize();
            byte[] imageBytes = new byte[(int) size];

            InputStream inputStream = part.getInputStream();
            inputStream.read(imageBytes);
            inputStream.close();

            employee.setImage(imageBytes);
        } else {
            employee.setImage(null);
        }
    }

    /**
     * Get employee information from the form and save it in the database.
     *
     * @throws ServletException If the request for the POST could not be handled.
     * @throws IOException      If an input or output error is detected when the servlet handles the POST request.
     */
    public void saveEmployee() throws ServletException, IOException {
        String[] roles = request.getParameterValues("roles");

        Employee employee = readAllEmployeeFieldsExceptRole();
        boolean existEmployee = employeeDAO.checkEmailExists(employee.getEmail());

        if (existEmployee) {
            String message = "Email " + employee.getEmail() + " đã tồn tại!!!";
            request.setAttribute("message", message);

            getRolesDisplayedAdminInterface();
            request.setAttribute("employee", employee);

            String employeeFormPage = "employee-form.jsp";
            request.getRequestDispatcher(employeeFormPage).forward(request, response);
        } else {
            readImageFieldFromForm(employee);

            for (String role : roles) {
                employee.addRole(new Role(Integer.parseInt(role)));
            }

            employeeDAO.save(employee);

            String message = "Nhân viên " + employee.getLastName() + " " + employee.getFirstName() + " đã được thêm thành công !";
            listEmployee(message);
        }
    }

    /**
     * Get the employee's infornamtions by id from request and display it to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void editEmployee() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        Employee employee = employeeDAO.findById(id);

        Map<Role, String> roleMap = getSelectedRoles(employee);

        request.setAttribute("roleMap", roleMap);

        String message;

        if (employee == null) {
            message = "Không tìm thấy nhân viên";
            listEmployee(message);
        } else {
            request.setAttribute("employee", employee);
            request.setAttribute("title", "Chỉnh sửa nhân viên");
            String roleFormPage = "employee-form.jsp";
            request.getRequestDispatcher(roleFormPage).forward(request, response);
        }
    }

    /**
     * Get the employee's information from the request and update it into the database.
     *
     * @throws ServletException If the request for the POST could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the POST request
     */
    public void updateEmployee() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        Integer addressId = Integer.valueOf(request.getParameter("addressId"));
        String[] roles = request.getParameterValues("roles");

        Employee employee = readAllEmployeeFieldsExceptRole();
        employee.setId(id);
        employee.getAddress().setId(addressId);

        Employee employeeById = employeeDAO.findById(id);
        Employee employeeByEmail = employeeDAO.findByEmail(employee.getEmail());

        String message;

        if (employeeById == null) {
            message = "Không tìm thấy nhân viên";
            listEmployee(message);
        } else {
            if (employeeByEmail != null && id != employeeByEmail.getId()) {
                message = "Email " + employee.getEmail() + " đã tồn tại!!!";
                request.setAttribute("message", message);

                Map<Role, String> roleMap = getSelectedRoles(employeeById);

                request.setAttribute("roleMap", roleMap);
                request.setAttribute("employee", employee);

                request.setAttribute("title", "Chỉnh sửa nhân viên");

                String updatePage = "employee-form.jsp";
                request.getRequestDispatcher(updatePage).forward(request, response);
            } else {
                readImageFieldFromForm(employee);

                if (!employee.getPassword().isEmpty())
                    employee.setPassword(HashGenerator.generateMD5(employee.getPassword()));
                else
                    employee.setPassword(employeeById.getPassword());

                for (String role : roles) {
                    employee.addRole(new Role(Integer.parseInt(role)));
                }

                employeeDAO.update(employee);

                message = "Nhân viên " + employee.getLastName() + " " + employee.getFirstName() + " đã được cập nhật thành công !";
                listEmployee(message);
            }
        }
    }

    /**
     * Get the employee's id from the request and delete it from the database.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void deleteEmployee() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        Employee employee = employeeDAO.findById(id);

        String message;

        if (employee == null) {
            message = "Không tìm thấy nhân viên hoặc nhân viên đã bị xóa";
        } else {
            employeeDAO.delete(id);
            message = "Nhân viên " + employee.getLastName() + " " + employee.getFirstName() + " đã được xóa thành công !";
        }
        listEmployee(message);
    }

    /**
     * Get the employee's id and enable status from the request and update it to the database.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void enabledEmployee() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        boolean enabled = Boolean.parseBoolean(request.getParameter("enabled"));

        Employee employee = employeeDAO.findById(id);

        String message;

        if (employee == null) {
            message = "Không tìm thấy nhân viên hoặc nhân viên đã bị xóa";
        } else {
            employeeDAO.updateEnabledStatus(id, enabled);
            message = "Nhân viên " + employee.getLastName() + " " + employee.getFirstName() + " đã được "
                    + (enabled ? "kích hoạt" : "vô hiệu hóa") + " thành công !";
        }
        listEmployee(message);
    }

    /**
     * Check login information and redirect to the appropriate page.
     *
     * @throws ServletException If the request for the POST could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the POST request
     */
    public void checkLogin() throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = HashGenerator.generateMD5(request.getParameter("password"));

        Employee employee = employeeDAO.login(email, password);

        if (employee != null) {
            request.getSession().setAttribute("email", email);
            request.getSession().setAttribute("firstName", employee.getFirstName());
            request.getSession().setAttribute("lastName", employee.getLastName());
            request.getSession().setAttribute("imagePath", employee.getBase64Image());
            request.getSession().setAttribute("id", employee.getId());

            request.getRequestDispatcher("/backend/").forward(request, response);
        } else {
            String message = "Email hoặc mật khẩu không đúng";
            request.setAttribute("message", message);

            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    /**
     * Return list of employees searched by keyword.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void searchEmployee() throws ServletException, IOException {
        String keyword = request.getParameter("keyword");

        List<Employee> result;

        if (keyword.equals("")) {
            result = employeeDAO.findAll(DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, DEFAULT_SORT_FIELD, 1);
        } else {
            result = employeeDAO.search(keyword, DEFAULT_SORT_FIELD, DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE);
        }

        request.setAttribute("result", result);

        long numberOfEmployees = employeeDAO.count();
        request.setAttribute("numberOfEmployees", numberOfEmployees);

        String listPage = "employee.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
    }

//    public void paginationEmployee() throws ServletException, IOException {
//        int pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
//        long numberOfEmployees = employeeDAO.count();
////        List<Employee> pageable = employeeDAO.pageable(pageNumber, DEFAULT_PAGE_SIZE);
//
//        long totalPages = numberOfEmployees / DEFAULT_PAGE_SIZE;
//        if (numberOfEmployees % DEFAULT_PAGE_SIZE != 0) totalPages++;
//
//        request.setAttribute("currentPage", pageNumber);
//        request.setAttribute("totalPages", totalPages);
////        request.setAttribute("listEmployees", pageable);
//
//        String listPage = "employee.jsp";
//        request.getRequestDispatcher(listPage).forward(request, response);
//    }
}
