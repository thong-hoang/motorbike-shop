package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Address;
import edu.nlu.motorbike_shop.entity.Customer;
import edu.nlu.motorbike_shop.util.DBUtils;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Provides APIs for manipulating data with the database
 *
 * @author Nguyen Hoang Vinh
 * @version 2.0
 * @since 2022-12-18
 */

public class CustomerDAO implements Serializable {
    private static CustomerDAO instance;

    private CustomerDAO() {

    }

    public static CustomerDAO getInstance() {
        if (instance == null)
            instance = new CustomerDAO();

        return instance;
    }

    /**
     * Get address by customer id.
     *
     * @param customerId The id of the user.
     * @return The address entity.
     */
    public Address findAddressByCustomerId(Integer customerId) {
        String sql = "SELECT street, ward, district, city FROM addresses WHERE customer_id = ?";
        Address address = null;

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, customerId);

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
     * Returns all instance of customer with pagination
     *
     * @param sortType Specify the sort type, ASC or DESC.
     * @param pageSize Specify the number of records per page.
     * @return List of Customer entities.
     */
    public List<Customer> findAll(String sortType, int pageSize, String columnName) {
        List<Customer> customers = new ArrayList<>();
        String sql = "SELECT id, first_name, last_name, email, phone_number, enabled " +
                "FROM customers ORDER BY ?, ? LIMIT ?";
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
                    String firstName = rs.getString(3);
                    String lastName = rs.getString(4);
                    String email = rs.getString(5);
                    String phoneNumber = rs.getString(6);
                    boolean enabled = rs.getBoolean(7);

                    Address address = findAddressByCustomerId(id);

                    Customer customer = new Customer(id, firstName, lastName, phoneNumber, email, address, enabled);
                    customers.add(customer);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return customers;
    }

    /**
     * Retrieves an Customer entity by its id.
     *
     * @param id An id specifying the id of the Customer
     * @return Customer entity if the Customer entity with the given id exists, false otherwise.
     */

    public Customer findById(Integer id) {
        String sql = "SELECT c.*, a.id, a.street, a.ward, a.district, a.city " +
                "FROM customers c  LEFT JOIN addresses a ON c.id = a.customer_id WHERE c.id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    String firstName = rs.getString(2);
                    String lastName = rs.getString(3);
                    String phoneNumber = rs.getString(4);
                    String email = rs.getString(5);
                    String password = rs.getString(6);
                    Date createdTime = rs.getDate(7);
                    String authenticationType = rs.getString(8);
                    String verificationCode = rs.getString(9);
                    boolean enabled = rs.getBoolean(10);
                    Integer addressId = rs.getInt(11);
                    String street = rs.getString(12);
                    String ward = rs.getString(13);
                    String district = rs.getString(14);
                    String city = rs.getString(15);

                    Address address = new Address(addressId, street, ward, district, city);
                    Customer customer = new Customer(id, firstName, lastName, phoneNumber, address, email, password, createdTime, authenticationType, verificationCode, enabled);
                    System.out.println(sql);

                    return customer;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Delete an customer from the database.
     *
     * @param id The id of the customer to be deleted.
     */

    public void delete(Integer id) {
        String sql = "DELETE FROM customers WHERE id = ?";

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
     * @return The number of Customer entities.
     */

    public long count() {
        String sql = "SELECT COUNT(id) FROM customers";
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
