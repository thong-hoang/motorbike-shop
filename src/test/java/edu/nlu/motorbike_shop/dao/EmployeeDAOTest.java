package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Address;
import edu.nlu.motorbike_shop.entity.Employee;
import edu.nlu.motorbike_shop.entity.Role;
import org.junit.Test;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import static org.junit.Assert.*;

public class EmployeeDAOTest {
    private final EmployeeDAO employeeDAO = EmployeeDAO.getInstance();

    @Test
    public void testFindAll() {
        String sortType = "ASC";
        int pageSize = 2;
        String sortField = "id";
        int index = 1;

        assertTrue(employeeDAO.findAll("", sortField, sortType, pageSize, index).size() > 0);
    }

    @Test
    public void testCreateEmployee() throws IOException {
        Address address = new Address("đường số 12", "bình hưng hòa", "bình tân", "hồ chí minh");
        Employee employee = new Employee("Thông", "Hoàng", "0123", address,
                "thong@gmail.com", "thong123", true);

        employee.addRole(RoleDAO.getInstance().findById(2));
        employee.addRole(RoleDAO.getInstance().findById(3));

        assertTrue(employeeDAO.save(employee));
    }

    @Test
    public void testFindEmployeeById() {
        Integer id = 2;
        Employee employee = employeeDAO.findById(id);

        assertEquals("thong@gmail.com", employee.getEmail());
    }

    @Test
    public void testUpdateEmployee() {
        Set<Role> roles = new HashSet<>();
        roles.add(RoleDAO.getInstance().findById(1));
        roles.add(RoleDAO.getInstance().findById(2));

        Integer id = 2;
        Employee employee = employeeDAO.findById(id);
        employee.setLastName("Hoàng Phạm");
        employee.setRoles(roles);
        employee.setAddress(new Address(1, "113/4 đường số 12", "bình hưng hòa", "bình tân", "hồ chí minh"));

        assertTrue(employeeDAO.update(employee));

        assertEquals("Hoàng Phạm", employeeDAO.findById(2).getLastName());
        assertEquals("113/4 đường số 12", employeeDAO.findById(2).getAddress().getStreet());
        assertEquals(2, employeeDAO.findById(2).getRoles().size());
    }

    @Test
    public void testDeleteEmployee() {
        Integer id = 2;

        employeeDAO.delete(id);

        assertNull(employeeDAO.findById(id));
    }

    @Test
    public void testFindEmployeeByEmail() {
        String email = "thong@gmail.com";
        Employee employee = employeeDAO.findByEmail(email);
        System.out.println(employee);

        assertEquals("Hoàng Phạm", employee.getLastName());
    }

    @Test
    public void testCheckEmailExists() {
        String email = "thong@gmail.com";
        assertTrue(employeeDAO.checkEmailExists(email));
    }

    @Test
    public void testCount() {
        assertTrue(employeeDAO.count() > 0);
    }

    @Test
    public void testCheckLoginSuccess() {
        String email = "admin@gmail.com";
        String password = "0192023a7bbd73250516f069df18b500";

        assertNotNull(employeeDAO.login(email, password));
    }

    @Test
    public void testCheckLoginFail() {
        String email = "admin@gmail.com";
        String password = "admin";

        assertNull(employeeDAO.login(email, password));
    }

    @Test
    public void testCountByKeyword() {
        String keyword = "";
        assertTrue(employeeDAO.countByKeyword(keyword) > 0);
    }
}