package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Role;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class RoleDAOTest {

    private final RoleDAO roleDAO = RoleDAO.getInstance();

    @Test
    public void testListAllRoles() {
        List<Role> roles = roleDAO.findAll();

        assertTrue(roles.size() > 0);
    }

    @Test
    public void testCreateRole() {
        Role role = new Role();
        role.setName("Quản trị viên");
        role.setDescription("Quản lý tất cả");

        assertTrue(roleDAO.save(role));
    }

    @Test
    public void testFindRoleByName() {
        String nameExists = "Quản trị viên";
        String nameNotExists = "Khách hàng";

        Role admin = roleDAO.findByName(nameExists);
        Role customer = roleDAO.findByName(nameNotExists);

        assertNotNull(admin);
        assertNull(customer);
    }

    @Test
    public void testFindRoleById() {
        Integer id = 1;
        Role role = roleDAO.findById(id);

        assertNotNull(role);
    }

    @Test
    public void testUpdateRole() {
        Role role = roleDAO.findByName("Quản trị viên");
        role.setName("Nhân viên bán hàng");
        role.setDescription("Quản lý sản phẩm");

        roleDAO.update(role);

        assertEquals("Nhân viên bán hàng", role.getName());
        assertEquals("Quản lý sản phẩm", role.getDescription());
    }

    @Test
    public void testDeleteRole() {
        Integer id = 1;

        roleDAO.delete(id);

        Role role = roleDAO.findById(1);

        assertNull(role);
    }
}