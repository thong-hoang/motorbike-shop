package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Role;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class RoleDAOTest {

    private final RoleDAO roleDAO = RoleDAO.getInstance();

    @Test
    public void testListAllUsers() {
        List<Role> roles = roleDAO.findAll();

        assertTrue(roles.size() > 0);
    }
}