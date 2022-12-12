package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Address;
import edu.nlu.motorbike_shop.entity.Employee;
import edu.nlu.motorbike_shop.entity.Role;
import org.junit.Test;

import java.util.HashSet;
import java.util.Set;

import static org.junit.Assert.*;

public class EmployeeDAOTest {
    private final EmployeeDAO employeeDAO = EmployeeDAO.getInstance();
    @Test
    public void testFindAll() {
        String sortType = "ASC";
        int pageSize = 5;
        String columnName = "id";

        assertTrue(employeeDAO.findAll(sortType, pageSize, columnName).size() > 0);
    }

    @Test
    public void testCreateEmployee() {
        Address address = new Address("đường số 12", "bình hưng hòa", "bình tân", "hồ chí minh");
        Employee employee = new Employee("Thông", "Hoàng", "0123", address,
                "1/thong.png", "thong@gmail.com", "thong123", true);
        employee.addRole(RoleDAO.getInstance().findById(2));
        employee.addRole(RoleDAO.getInstance().findById(3));

        assertTrue(employeeDAO.save(employee));
    }

    @Test
    public void testFindEmployeeById() {
        Integer id = 1;
        Employee employee = employeeDAO.findById(id);
        System.out.println(employee);

        assertEquals("thong@gmail.com", employee.getEmail());
    }

    @Test
    public void testUpdateEmployee() {
        Integer id = 1;
        Set<Role> roles = new HashSet<>();
        roles.add(RoleDAO.getInstance().findById(1));
        roles.add(RoleDAO.getInstance().findById(2));

        Employee employee = employeeDAO.findById(id);
        employee.setLastName("Hoàng Phạm");
        employee.setAddress(new Address(1, "113/4 đường số 12", "bình hưng hòa", "bình tân", "hồ chí minh"));
        employee.setRoles(roles);

        employeeDAO.update(employee);

        assertEquals("Hoàng Phạm", employeeDAO.findById(1).getLastName());
        assertEquals("113/4 đường số 12", employeeDAO.findById(1).getAddress().getStreet());
        assertEquals(2, employeeDAO.findById(1).getRoles().size());
    }

    @Test
    public void testDeleteEmployee() {
        Integer id = 2;

        employeeDAO.delete(id);

        assertNull(employeeDAO.findById(id));
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
}