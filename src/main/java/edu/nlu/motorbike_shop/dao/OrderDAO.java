package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.*;
import edu.nlu.motorbike_shop.util.DBUtils;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * Provides APIs for manipulating data with the database
 *
 * @author Hoang Pham Thong
 * @version 1.0
 * @since 2022-12-15
 */

public class OrderDAO implements Serializable {
    private static OrderDAO instance;

    private OrderDAO() {

    }

    public static OrderDAO getInstance() {
        if (instance == null)
            instance = new OrderDAO();

        return instance;
    }

    /**
     * Get address by order id.
     *
     * @param orderId The id of the order.
     * @return The address entity.
     */
    public Address findAddressByOrderId(Integer orderId) {
        String sql = "SELECT street, ward, district, city FROM addresses WHERE order_id = ?";
        Address address = null;

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, orderId);

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
        return address;
    }

    /**
     * Return list of order details by order id.
     *
     * @param id The id of the order.
     * @return List of order detail entities.
     */
    public List<OrderDetail> findOrderDetailsByOrderId(Integer id) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        String sql = "SELECT d.* FROM order_details d INNER JOIN orders o ON d.order_id = o.id " +
                "WHERE d.order_id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    int orderId = rs.getInt(1);
                    Order order = new Order();
                    order.setId(orderId);
                    int productId = rs.getInt(2);
                    Product product = new Product();
                    product.setId(productId);
                    int quantity = rs.getInt(3);
                    int productCost = rs.getInt(4);
                    int subtotal = rs.getInt(5);

                    OrderDetail orderDetail = new OrderDetail(order, product, quantity, productCost, subtotal);

                    orderDetails.add(orderDetail);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orderDetails;
    }

    /**
     * Returns all instance of order with pagination after searching.
     *
     * @param sortType  Specify the sort type, ASC or DESC.
     * @param pageSize  Specify the number of records per page.
     * @param sortField Specify the column name to sort.
     * @param index     Specify the page index.
     * @return List of order entities.
     */
    public List<Order> findAll(String keyword, String sortField, String sortType, int pageSize, int index) {
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM orders WHERE recipient_name LIKE ? " +
                "ORDER BY " + sortField + " " + sortType + " LIMIT ? OFFSET ?";

        // use try-with-resources Statement to auto close the connection.
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setString(1, "%" + keyword + "%");
            stm.setInt(2, pageSize);
            stm.setInt(3, (index - 1) * pageSize);

            // use try-with-resources Statement to auto close the ResultSet.
            try (ResultSet rs = stm.executeQuery()) {
                // fetch data from result set
                while (rs.next()) {
                    Integer id = rs.getInt(1);
                    Customer customer = new Customer();
                    customer.setId(rs.getInt(2));
                    Date orderDate = rs.getDate(3);
                    String paymentMethod = rs.getString(4);
                    int price = rs.getInt(5);
                    int discount = rs.getInt(6);
                    int tax = rs.getInt(7);
                    int total = rs.getInt(8);
                    String status = rs.getString(9);
                    String recipientName = rs.getString(10);
                    String recipientPhone = rs.getString(11);

                    Address address = findAddressByOrderId(id);

                    Order order = new Order(id, customer, orderDate, paymentMethod, price, discount, tax, total, status,
                            recipientName, recipientPhone, address);

                    findOrderDetailsByOrderId(id).forEach(order::addOrderDetail);

                    orders.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }

    /**
     * Insert a new address into the database
     *
     * @param address The address to be inserted.
     * @param orderId The id of the order .
     */
    public void insertAddress(Address address, int orderId) {
        String sql = "INSERT INTO addresses (street, ward, district, city, order_id) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, address.getStreet());
            stm.setString(2, address.getWard());
            stm.setString(3, address.getDistrict());
            stm.setString(4, address.getCity());
            stm.setInt(5, orderId);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Save an order to the database.
     *
     * @param order The order entity to be saved.
     * @return True if the order is saved successfully, false otherwise.
     */
    public boolean save(Order order) {
        String sqlInsertOrder = "INSERT INTO orders (customer_id, order_date, payment_method, price, discount, tax, " +
                "total, status, recipient_name, recipient_phone) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        String sqlInsertOrderDetail = "INSERT INTO order_details (order_id, product_id, quantity, product_cost, " +
                "subtotal) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement orderStm = conn.prepareStatement(sqlInsertOrder, Statement.RETURN_GENERATED_KEYS);
             PreparedStatement detailStm = conn.prepareStatement(sqlInsertOrderDetail)) {

            orderStm.setInt(1, order.getCustomer().getId());
            orderStm.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
            orderStm.setString(3, order.getPaymentMethod());
            orderStm.setInt(4, order.getPrice());
            orderStm.setInt(5, order.getDiscount());
            orderStm.setInt(6, order.getTax());
            orderStm.setInt(7, order.getTotal());
            orderStm.setString(8, order.getStatus());
            orderStm.setString(9, order.getRecipientName());
            orderStm.setString(10, order.getRecipientPhone());

            orderStm.executeUpdate();

            ResultSet rs = orderStm.getGeneratedKeys();
            int orderKey;

            if (rs.next()) {
                orderKey = rs.getInt(1);

                insertAddress(order.getAddress(), orderKey);

                Set<OrderDetail> details = order.getOrderDetails();
                for (OrderDetail detail : details) {
                    detailStm.setInt(1, orderKey);
                    detailStm.setInt(2, detail.getProduct().getId());
                    detailStm.setInt(3, detail.getQuantity());
                    detailStm.setInt(4, detail.getProductCost());
                    detailStm.setInt(5, detail.getSubTotal());

                    detailStm.addBatch();
                }

                if (detailStm.executeBatch().length > 0) return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Updates an address record in the database.
     *
     * @param address The address to be updated.
     * @param orderId The id of the order.
     */
    public void updateAddress(Address address, int orderId) {
        String sql = "UPDATE addresses SET street = ?, ward = ?, district = ?, city = ? WHERE order_id = ? AND id = ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, address.getStreet());
            stm.setString(2, address.getWard());
            stm.setString(3, address.getDistrict());
            stm.setString(4, address.getCity());
            stm.setInt(5, orderId);
            stm.setInt(6, address.getId());

            stm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Delete an order detail record from the database.
     *
     * @param orderId The id of the order.
     */
    public void deleteOrderDetail(Integer orderId) {
        String sql = "DELETE FROM order_details WHERE order_id = ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, orderId);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Update an order in the database.
     *
     * @param order The order entity to be updated.
     * @return True if the order is updated successfully, false otherwise.
     */

    public boolean update(Order order) {
        String updateOrder = "UPDATE orders SET order_date = ?, payment_method = ?, price = ?, discount = ?, tax = ?," +
                "total = ?, status = ?, recipient_name = ?, recipient_phone = ? WHERE id = ?";
        String sqlInsertOrderDetail = "INSERT INTO order_details (order_id, product_id, quantity, product_cost, " +
                "subtotal) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement orderStm = conn.prepareStatement(updateOrder);
             PreparedStatement detailStm = conn.prepareStatement(sqlInsertOrderDetail)) {
            orderStm.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
            orderStm.setString(2, order.getPaymentMethod());
            orderStm.setInt(3, order.getPrice());
            orderStm.setInt(4, order.getDiscount());
            orderStm.setInt(5, order.getTax());
            orderStm.setInt(6, order.getTotal());
            orderStm.setString(7, order.getStatus());
            orderStm.setString(8, order.getRecipientName());
            orderStm.setString(9, order.getRecipientPhone());
            orderStm.setInt(10, order.getId());

            orderStm.executeUpdate();

            updateAddress(order.getAddress(), order.getId());

            deleteOrderDetail(order.getId());

            Set<OrderDetail> details = order.getOrderDetails();
            for (OrderDetail detail : details) {
                detailStm.setInt(1, order.getId());
                detailStm.setInt(2, detail.getProduct().getId());
                detailStm.setInt(3, detail.getQuantity());
                detailStm.setInt(4, detail.getProductCost());
                detailStm.setInt(5, detail.getSubTotal());

                detailStm.addBatch();
            }

            if (detailStm.executeBatch().length > 0) return true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Retrieves an order entity by its id.
     *
     * @param id An id specifying the id of the order.
     * @return Order entity if the Order entity with the given id exists, null otherwise.
     */

    public Order findById(Integer id) {
        String sql = "SELECT o.*, a.id, a.street, a.ward, a.district, a.city " +
                "FROM orders o LEFT JOIN addresses a ON o.id = a.order_id WHERE o.id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    int customerId = rs.getInt(2);
                    Customer customer = new Customer();
                    customer.setId(customerId);
                    Date orderDate = rs.getDate(3);
                    String paymentMethod = rs.getString(4);
                    int price = rs.getInt(5);
                    int discount = rs.getInt(6);
                    int tax = rs.getInt(7);
                    int total = rs.getInt(8);
                    String status = rs.getString(9);
                    String recipientName = rs.getString(10);
                    String recipientPhone = rs.getString(11);
                    Integer addressId = rs.getInt(12);
                    String street = rs.getString(13);
                    String ward = rs.getString(14);
                    String district = rs.getString(15);
                    String city = rs.getString(16);

                    Address address = new Address(addressId, street, ward, district, city);
                    Order order = new Order(id, customer, orderDate, paymentMethod, price, discount, tax, total, status,
                            recipientName, recipientPhone, address);
                    findOrderDetailsByOrderId(id).forEach(order::addOrderDetail);

                    return order;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Delete an order from the database.
     *
     * @param id The id of the order to be deleted.
     */

    public void delete(Integer id) {
        String sql = "DELETE FROM orders WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

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
        String sql = "SELECT COUNT(id) FROM orders";
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

    /**
     * Total results keyword search.
     *
     * @return The number of results. 0 if no results.
     */
    public int countByKeyword(String keyword) {
        String sql = "SELECT COUNT(id) FROM orders WHERE recipient_name LIKE ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, "%" + keyword + "%");
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next())
                    return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }
}
