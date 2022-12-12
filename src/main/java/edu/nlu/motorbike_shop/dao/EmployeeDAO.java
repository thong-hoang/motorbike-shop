package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Address;
import edu.nlu.motorbike_shop.entity.Employee;
import edu.nlu.motorbike_shop.entity.Role;
import edu.nlu.motorbike_shop.util.DBUtils;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Provides APIs for manipulating data with the database
 *
 * @author Hoang Pham Thong
 * @version 1.0
 * @since 2022-11-5
 */

public class EmployeeDAO implements Serializable {
    private static EmployeeDAO instance;

    private EmployeeDAO() {

    }

    public static EmployeeDAO getInstance() {
        if (instance == null)
            instance = new EmployeeDAO();

        return instance;
    }

    /**
     * Insert a new address into the database
     *
     * @param address    The address to be inserted.
     * @param employeeId The id of the employee who owns the address.
     */
    public void insertAddress(Address address, int employeeId) {
        String sql = "INSERT INTO addresses (street, ward, district, city, user_id) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
            stm.setString(1, address.getStreet());
            stm.setString(2, address.getWard());
            stm.setString(3, address.getDistrict());
            stm.setString(4, address.getCity());
            stm.setInt(5, employeeId);

            System.out.println(sql);
            stm.executeUpdate();


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Get address by user id.
     *
     * @param userId The id of the user.
     * @return The address entity.
     */
    public Address findAddressByUserId(Integer userId) {
        String sql = "SELECT street, ward, district, city FROM addresses WHERE user_id = ?";
        Address address = null;

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, userId);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    String street = rs.getString(1);
                    String ward = rs.getString(2);
                    String district = rs.getString(3);
                    String city = rs.getString(4);

                    address = new Address(street, ward, district, city);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(sql);
        return address;
    }

    /**
     * Updates an address record in the database.
     *
     * @param address    The address to be updated.
     * @param employeeId The id of the employee who owns the address.
     */
    public void updateAddress(Address address, int employeeId) {
        String sql = "UPDATE addresses SET street = ?, ward = ?, district = ?, city = ? WHERE user_id = ? AND id = ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, address.getStreet());
            stm.setString(2, address.getWard());
            stm.setString(3, address.getDistrict());
            stm.setString(4, address.getCity());
            stm.setInt(5, employeeId);
            stm.setInt(6, address.getId());

            stm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(sql);
    }

    /**
     * Return list of roles by user id.
     *
     * @param id The id of the user.
     * @return List of Role entities.
     */
    public List<Role> findRolesByUserId(Integer id) {
        List<Role> roles = new ArrayList<>();
        String sql = "SELECT r.* FROM user_role ur INNER JOIN roles r ON ur.role_id = r.id " +
                "WHERE ur.user_id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Integer roleId = rs.getInt(1);
                    String roleName = rs.getString(2);
                    String description = rs.getString(3);

                    Role role = new Role(roleId, roleName, description);

                    roles.add(role);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(sql);
        return roles;
    }

    /**
     * Insert a new user_role record into the database.
     *
     * @param userId The id of the user.
     * @param roleId The id of the role.
     */
    public void insertUserRole(Integer userId, Integer roleId) {
        String sql = "INSERT INTO user_role (user_id, role_id) VALUE(?, ?)";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, userId);
            stm.setInt(2, roleId);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(sql);
    }

    /**
     * Delete a user_role record from the database.
     *
     * @param userId The id of the user.
     * @param roleId The id of the role.
     */
    public void deleteUserRole(Integer userId, Integer roleId) {
        String sql = "DELETE FROM user_role WHERE user_id = ? AND role_id = ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, userId);
            stm.setInt(2, roleId);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(sql);
    }

    /**
     * Returns all instance of employee with pagination
     *
     * @param sortType Specify the sort type, ASC or DESC.
     * @param pageSize Specify the number of records per page.
     * @return List of Employee entities.
     */
    public List<Employee> findAll(String sortType, int pageSize, String columnName) {
        List<Employee> employees = new ArrayList<>();
        String sql = "SELECT id, image_path, first_name, last_name, email, phone_number, enabled " +
                "FROM users ORDER BY ?, ? LIMIT ?";
        System.out.println(sql);

        // use try-with-resources Statement to auto close the connection.
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setString(1, columnName);
            stm.setString(2, sortType);
            stm.setInt(3, pageSize);

            // use try-with-resources Statement to auto close the ResultSet.
            try (ResultSet rs = stm.executeQuery()) {
                // fetch data from result set
                while (rs.next()) {
                    Integer id = rs.getInt(1);
                    String imagePath = rs.getString(2);
                    String firstName = rs.getString(3);
                    String lastName = rs.getString(4);
                    String email = rs.getString(5);
                    String phoneNumber = rs.getString(6);
                    boolean enabled = rs.getBoolean(7);

                    Address address = findAddressByUserId(id);

                    Employee employee = new Employee(id, firstName, lastName, phoneNumber, address, imagePath, email, enabled);
                    // findRolesByUserId(id).forEach(role -> employee.addRole(role));
                    findRolesByUserId(id).forEach(employee::addRole);

                    employees.add(employee);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return employees;
    }

    /**
     * Save an employee to the database.
     *
     * @param employee The employee entity to be saved.
     * @return True if the employee is saved successfully, false otherwise.
     * @throws SQLIntegrityConstraintViolationException If the email is already in use.
     */

    public boolean save(Employee employee) {
        String sqlInsertUser = "INSERT INTO users (first_name, last_name, phone_number, image_path, email, "
                + "password, enabled) value(?, ?, ?, ?, ?, ?, ?)";
        String sqlInsertUserRole = "INSERT INTO user_role (user_id, role_id) value(?, ?)";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement userStm = conn.prepareStatement(sqlInsertUser, Statement.RETURN_GENERATED_KEYS);
             PreparedStatement userRoleStm = conn.prepareStatement(sqlInsertUserRole)) {

            userStm.setString(1, employee.getFirstName());
            userStm.setString(2, employee.getLastName());
            userStm.setString(3, employee.getPhoneNumber());
            userStm.setString(4, employee.getImagePath());
            userStm.setString(5, employee.getEmail());
            userStm.setString(6, employee.getPassword());
            userStm.setBoolean(7, employee.isEnabled());
            System.out.println(sqlInsertUser);

            userStm.executeUpdate();

            // get the id of the inserted user
            ResultSet rs = userStm.getGeneratedKeys();
            int userKey;

            // If the result set is not empty, get the id
            if (rs.next()) {
                userKey = rs.getInt(1);

                insertAddress(employee.getAddress(), userKey);

                Set<Role> roles = employee.getRoles();
                for (Role role : roles) {
                    userRoleStm.setInt(1, userKey);
                    userRoleStm.setInt(2, role.getId());
                    userRoleStm.addBatch();
                }

                System.out.println(sqlInsertUserRole);
                // execute multiple commands at the same time
                if (userRoleStm.executeBatch().length > 0) return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Check if the email is already in use.
     *
     * @param email The email to be checked.
     * @return True if the email is already in use, false otherwise.
     */

    public boolean checkEmailExists(String email) {
        String sql = "SELECT COUNT(email) FROM users WHERE email = ?";
        System.out.println(sql);
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, email);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    /**
     * Update an employee in the database.
     *
     * @param employee The employee entity to be updated.
     * @return True if the employee is updated successfully, false otherwise.
     * @throws SQLIntegrityConstraintViolationException If the email is already in use.
     */

    public boolean update(Employee employee) {
        String sql = "UPDATE users SET first_name = ?, last_name = ?, phone_number = ?, " +
                "image_path = ?, email = ?, password = ?, enabled = ? WHERE id = ?";
        System.out.println(sql);
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, employee.getFirstName());
            stm.setString(2, employee.getLastName());
            stm.setString(3, employee.getPhoneNumber());
            stm.setString(4, employee.getImagePath());
            stm.setString(5, employee.getEmail());
            stm.setString(6, employee.getPassword());
            stm.setBoolean(7, employee.isEnabled());
            stm.setInt(8, employee.getId());

            updateAddress(employee.getAddress(), employee.getId());

            Set<Role> newRoles = employee.getRoles();
            List<Role> oldRoles = findRolesByUserId(employee.getId());
            Set<Role> updatedRoles = new HashSet<>(oldRoles);
            for (Role oldRole : oldRoles) {
                boolean flag = false;
                for (Role newRole : newRoles) {
                    if (oldRole.getId().equals(newRole.getId())) {
                        flag = true;
                        break;
                    }
                }
                if (!flag) {
                    deleteUserRole(employee.getId(), oldRole.getId());
                    updatedRoles.remove(oldRole);
                }
            }

            for (Role newRole : newRoles) {
                boolean flag = false;
                for (Role oldRole : updatedRoles) {
                    if (oldRole.getId().equals(newRole.getId())) {
                        flag = true;
                        break;
                    }
                }
                if (!flag) {
                    insertUserRole(employee.getId(), newRole.getId());
                }
            }

            if (stm.executeUpdate() > 0) return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Retrieves an Employee entity by its id.
     *
     * @param id An id specifying the id of the Employee
     * @return Employee entity if the Employee entity with the given id exists, false otherwise.
     */

    public Employee findById(Integer id) {

        // use left join to get the address, user_role and role even though it is null
        String sql = "SELECT u.*, a.id, a.street, a.ward, a.district, a.city " +
                "FROM users u  LEFT JOIN addresses a ON u.id = a.user_id WHERE u.id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    String firstName = rs.getString(2);
                    String lastName = rs.getString(3);
                    String phoneNumber = rs.getString(4);
                    String imagePath = rs.getString(5);
                    String email = rs.getString(6);
                    String password = rs.getString(7);
                    boolean enabled = rs.getBoolean(8);
                    Integer addressId = rs.getInt(9);
                    String street = rs.getString(10);
                    String ward = rs.getString(11);
                    String district = rs.getString(12);
                    String city = rs.getString(13);

                    Address address = new Address(addressId, street, ward, district, city);
                    Employee employee = new Employee(id, firstName, lastName, phoneNumber, address, imagePath, email, password, enabled);
                    System.out.println(sql);
                    findRolesByUserId(id).forEach(employee::addRole);

                    return employee;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Delete an user from the database.
     *
     * @param id The id of the user to be deleted.
     */

    public void delete(Integer id) {
        String sql = "DELETE FROM users WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            System.out.println(sql);
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Total number of users in the database.
     *
     * @return The number of Employee entities.
     */

    public long count() {
        String sql = "SELECT COUNT(id) FROM users";
        System.out.println(sql);
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
