package edu.nlu.motorbike_shop.service;

import edu.nlu.motorbike_shop.dao.EmployeeDAO;
import edu.nlu.motorbike_shop.dao.RoleDAO;
import edu.nlu.motorbike_shop.entity.Address;
import edu.nlu.motorbike_shop.entity.Employee;
import edu.nlu.motorbike_shop.entity.Role;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class EmployeeService {
    private EmployeeDAO employeeDAO = EmployeeDAO.getInstance();
    private RoleDAO roleDAO = RoleDAO.getInstance();
    private HttpServletRequest request;
    private HttpServletResponse response;

    private final String DEFAULT_SORT_TYPE = "ASC";

    private final String DEFAULT_SORT_FIELD = "id";

    private final int DEFAULT_PAGE_SIZE = 5;

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

    public void getRolesDisplayedAdminInterface() {
        List<Role> roles = roleDAO.findAllRolesExceptAdmin();
        request.setAttribute("roles", roles);
    }

    public void createEmployee() throws ServletException, IOException {
        getRolesDisplayedAdminInterface();
        request.getRequestDispatcher("employee-form.jsp").forward(request, response);
    }

    /**
     * Get the employee's information from the request and save it to the database.
     *
     * @throws ServletException If the request for the POST could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the POST request
     */
    public void save() throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String imagePath = request.getParameter("imagePath");
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
        boolean enabled = Boolean.parseBoolean(request.getParameter("enabled"));

        boolean existEmployee = employeeDAO.checkEmailExists(email);

        if (existEmployee) {
            String message = "Email " + email + " đã tồn tại!!!";
            request.setAttribute("message", message);

            Employee employee = new Employee(firstName, lastName, phone, new Address(street, ward, district, city),
                    imagePath, email, password, enabled);
            getRolesDisplayedAdminInterface();
            request.setAttribute("employee", employee);

            String employeeFormPage = "employee-form.jsp";
            request.getRequestDispatcher(employeeFormPage).forward(request, response);
        } else {
            Employee newEmployee = new Employee(firstName, lastName, phone, new Address(street, ward, district, city),
                    imagePath, email, password, enabled);
            for (String role : roles) {
                newEmployee.addRole(new Role(Integer.parseInt(role)));
            }
            employeeDAO.save(newEmployee);

            String message = "Nhân viên " + lastName + " " + firstName + " đã được thêm thành công !";
            listEmployee(message);
        }
    }

    /**
     * Get the employee's infornamtions byid and display it to the user.
     *
     * @throws ServletException If the request for the GET could not be handled
     * @throws IOException      If an input or output error is detected when the servlet handles the GET request
     */

    public void editEmployee() throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        Employee employee = employeeDAO.findById(id);
        Map<Role, String> roleMap = new HashMap<>();

        RoleDAO.getInstance().findAllRolesExceptAdmin().forEach(role -> roleMap.put(role, ""));
        employee.getRoles().forEach(role -> roleMap.put(role, "checked"));

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
}
