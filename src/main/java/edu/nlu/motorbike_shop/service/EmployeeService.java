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
import java.io.IOException;
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
    private final int DEFAULT_PAGE_SIZE = 10;

    public EmployeeService(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    /**
     * Returns a list of employees and a response message to the user.
     *
     * @param message A message specified to display to the user
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void listEmployee(String message) throws ServletException, IOException {
        List<Employee> employees = employeeDAO.findAll(DEFAULT_SORT_TYPE, DEFAULT_PAGE_SIZE, DEFAULT_SORT_FIELD);
        long numberOfEmployees = employeeDAO.count();

        request.setAttribute("listEmployees", employees);
        request.setAttribute("numberOfEmployees", numberOfEmployees);
        request.setAttribute("totalEmployees", numberOfEmployees);

        if (message != null)
            request.setAttribute("message", message);

        String listPage = "employee.jsp";
        request.getRequestDispatcher(listPage).forward(request, response);
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
     * Get the employee's infornamtions by id from request and display it to user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */
    public void editEmployee() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

//        Employee employee = employeeDAO.findById(id);
        Employee employee = null;

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
     * Get the employee's information from the request and update it to the database.
     *
     * @throws ServletException If the request for the POST could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the POST request
     */
    public void updateEmployee() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));
        String imagePath = request.getParameter("imagePath");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        Integer addressId = Integer.valueOf(request.getParameter("addressId"));
        String street = request.getParameter("street");
        String ward = request.getParameter("ward");
        String district = request.getParameter("district");
        String city = request.getParameter("city");
        String phone = request.getParameter("phone");
        String[] roles = request.getParameterValues("roles");
        boolean enabled = "on".equals(request.getParameter("enabled"));

//        Employee employeeById = employeeDAO.findById(id);
        Employee employeeById = null;
        Employee employeeByEmail = employeeDAO.findByEmail(email);

        String message;

        if (employeeById == null) {
            message = "Không tìm thấy nhân viên";
            listEmployee(message);
        } else {
            if (employeeByEmail != null && id != employeeByEmail.getId()) {
                message = "Email " + email + " đã tồn tại!!!";
                request.setAttribute("message", message);

//                Employee employee = new Employee(id, firstName, lastName, phone, new Address(addressId, street, ward, district, city),
//                        imagePath, email, password, enabled);
                Employee employee = null;

                Map<Role, String> roleMap = getSelectedRoles(employeeById);

                request.setAttribute("roleMap", roleMap);
                request.setAttribute("employee", employee);

                request.setAttribute("title", "Chỉnh sửa nhân viên");

                String updatePage = "employee-form.jsp";
                request.getRequestDispatcher(updatePage).forward(request, response);
            } else {
                password = HashGenerator.generateMD5(password);
//                Employee employee = new Employee(id, firstName, lastName, phone, new Address(addressId, street, ward, district, city),
//                        imagePath, email, password, enabled);
                Employee employee = null;
                for (String role : roles) {
                    employee.addRole(new Role(Integer.parseInt(role)));
                }

                employeeDAO.update(employee);

                message = "Nhân viên " + lastName + " " + firstName + " đã được cập nhật thành công !";
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

//        Employee employee = employeeDAO.findById(id);
        Employee employee = null;

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

//        Employee employee = employeeDAO.findById(id);
        Employee employee = null;

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
}
