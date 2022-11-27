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
 * @author Hoang Pham Thong
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
     * @return List of role entities
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
     * Save a role entity
     *
     * @param role Must not be null.
     * @return true if the Role entity is saved, false otherwise.
     * @throws SQLIntegrityConstraintViolationException In case the name field is duplicated.
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

    /**
     * Retrieves an role entity by its name.
     *
     * @param name A string specifying the name of the role
     * @return Role entity if the role entity with the given name exists, false otherwise.
     */

    public Role findByName(String name) {
        String sql = "SELECT * FROM roles WHERE name = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, name);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    Integer id = rs.getInt("id");
                    String description = rs.getString("description");

                    return new Role(id, name, description);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    /**
     * Update a role entity
     *
     * @param role Must not be null.
     * @return true if the Role entity is updated, false otherwise.
     * @throws SQLIntegrityConstraintViolationException In case the name field is duplicated.
     */

    public boolean update(Role role) {
        String sql = "UPDATE roles SET name = ?, description = ? WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, role.getName());
            stm.setString(2, role.getDescription());
            stm.setInt(3, role.getId());

            if (stm.executeUpdate() > 0) return true;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    /**
     * Retrieves an role entity by its id.
     *
     * @param id A id specifying the id of the role
     * @return Role entity if the role entity with the given id exists, false otherwise.
     */

    public Role findById(Integer id) {
        String sql = "SELECT * FROM roles WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    String name = rs.getString("name");
                    String description = rs.getString("description");

                    return new Role(id, name, description);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    /**
     * Delete a role entity
     *
     * @param id Id of role entity
     */

    public void delete(Integer id) {
        String sql = "DELETE FROM roles WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Returns the number of role entities available.
     *
     * @return The number of role entities, 0 if entity is not available.
     */

    public long count() {
        String sql = "SELECT COUNT (*) FROM roles";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next())
                    return rs.getLong(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }
}
