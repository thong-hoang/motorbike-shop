package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Role;
import edu.nlu.motorbike_shop.util.DBUtils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;

/**
 * Provides APIs for manipulating data with the database
 *
 * @author hoang pham thong
 * @version 1.0
 * @since 2022-11-1
 */

public class RoleDAO implements Serializable {
    private static RoleDAO instance;

    private RoleDAO() {

    }

    // should not be used in multithreading because only 1 instance exists
    public static RoleDAO getInstance() {
        if (instance == null)
            instance = new RoleDAO();

        return instance;
    }

    /**
     * Returns all instance of Role
     *
     * @return list of role entities
     */

    public List<Role> findAll() {
        List<Role> roles = new ArrayList<>();
        String sql = "SELECT * FROM roles";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Integer id = rs.getInt("id");
                    String name = rs.getString("name");
                    String description = rs.getString("description");

                    Role role = new Role(id, name, description);

                    roles.add(role);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return roles;
    }

    /**
     * Saving a role object
     *
     * @param role must not be null.
     * @return true if the Role object is saved
     * @throws SQLIntegrityConstraintViolationException In case the name field is duplicated..
     */

    public boolean save(Role role) {
        String sql = "INSERT INTO roles (name, description) value(?, ?)";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, role.getName());
            stm.setString(2, role.getDescription());

            if (stm.executeUpdate() > 0) return true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}
