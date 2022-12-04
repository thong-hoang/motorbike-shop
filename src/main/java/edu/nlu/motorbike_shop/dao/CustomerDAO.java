package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Customer;
import edu.nlu.motorbike_shop.entity.Role;
import edu.nlu.motorbike_shop.util.DBUtils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Provides APIs for manipulating data with the database
 *
 * @author Nguyen Hoang Vinh
 * @version 1.0
 * @since 2022-12-4
 */
public class CustomerDAO implements Serializable {
    private static CustomerDAO instance;
    private CustomerDAO() {

    }

    // should not be used in multithreading because only 1 instance exists
    public static CustomerDAO getInstance() {
        if (instance == null)
            instance = new CustomerDAO();

        return instance;
    }
    /**
     * Returns all Customer
     *
     * @return list of customer entities
     */

    public List<Customer> findAll() {
        List<Customer> customers = new ArrayList<>();
        String sql = "SELECT * FROM customers";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Integer id = rs.getInt("id");
                    String fistName = rs.getString("fist_name");
                    String lastName = rs.getString("last_name");
                    Integer phoneNumber = rs.getInt("phone_number");
                    String address = rs.getString("address");
                    String email = rs.getString("email");
                    String password = rs.getString("password");
                    Date createdTime = rs.getDate("created_time");
                    String authenticationType = rs.getString("authentication_type");
                    String verificationCode = rs.getString("verification_code");
                    Integer enable = rs.getInt("enable");

                    Customer customer = new Customer(id, fistName, lastName, phoneNumber, address, email, password, createdTime, authenticationType, verificationCode, enable);

                    customers.add(customer);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return customers;
    }
}
