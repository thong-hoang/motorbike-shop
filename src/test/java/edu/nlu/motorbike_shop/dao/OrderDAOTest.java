package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.*;
import org.junit.Test;

import java.util.HashSet;
import java.util.Set;

import static org.junit.Assert.*;

public class OrderDAOTest {

    private final OrderDAO orderDAO = OrderDAO.getInstance();

    @Test
    public void testFindAll() {
        String sortType = "DESC";
        int pageSize = 5;
        String sortField = "order_date";
        int index = 1;

        orderDAO.findAll("", sortField, sortType, pageSize, index).forEach(System.out::println);

        assertTrue(orderDAO.findAll("", sortField, sortType, pageSize, index).size() > 0);
    }

    @Test
    public void testSave() {
        Order order = new Order();
        Customer customer = new Customer();
        customer.setId(2);
        order.setCustomer(customer);
        order.setPaymentMethod("Thanh toán khi nhận hàng");
        order.setPrice(46000000);
        order.setDiscount(0);
        order.setTax(0);
        order.setTotal(46000000);
        order.setStatus("Đã giao hàng");
        order.setRecipientName("Nguyễn Văn A");
        order.setRecipientPhone("0123456789");
        Address address = new Address("Hà Nội", "Hà Nội", "Hoàng Mai", "Ngõ 123");
        order.setAddress(address);

        Set<OrderDetail> orderDetails = new HashSet<>();
        OrderDetail orderDetail1 = new OrderDetail();
        Product product = new Product();
        product.setId(1);
        orderDetail1.setProduct(product);
        orderDetail1.setQuantity(1);
        orderDetail1.setProductCost(46000000);
        orderDetail1.setSubTotal(46000000);

        OrderDetail orderDetail2 = new OrderDetail();
        Product product2 = new Product();
        product2.setId(2);
        orderDetail2.setProduct(product2);
        orderDetail2.setQuantity(1);
        orderDetail2.setProductCost(46000000);
        orderDetail2.setSubTotal(46000000);

        orderDetails.add(orderDetail2);
        orderDetails.add(orderDetail1);

        order.setOrderDetails(orderDetails);

        assertTrue(orderDAO.save(order));
    }

    @Test
    public void testFindById() {
        Integer id = 1;
        Order order = orderDAO.findById(id);
        System.out.println(order);

        assertNotNull(order);
    }

    @Test
    public void testUpdate() {
        Set<OrderDetail> orderDetails = new HashSet<>();
        OrderDetail orderDetail1 = new OrderDetail();
        Product product = new Product();
        product.setId(2);
        orderDetail1.setProduct(product);
        orderDetail1.setQuantity(1);
        orderDetail1.setProductCost(46000000);
        orderDetail1.setSubTotal(46000000);

        OrderDetail orderDetail2 = new OrderDetail();
        Product product2 = new Product();
        product2.setId(3);
        orderDetail2.setProduct(product2);
        orderDetail2.setQuantity(1);
        orderDetail2.setProductCost(46000000);
        orderDetail2.setSubTotal(46000000);

        orderDetails.add(orderDetail1);
        orderDetails.add(orderDetail2);

        Integer id = 1;
        Order order = orderDAO.findById(id);
        order.setRecipientName("Nguyễn Văn B");
        order.setOrderDetails(orderDetails);
        Address address = new Address(1,"12", "bhh", "bình tân", "hcm");
        order.setAddress(address);

        assertTrue(orderDAO.update(order));
    }

    @Test
    public void testDelete() {
        Integer id = 1;
        orderDAO.delete(id);
        assertNull(orderDAO.findById(id));
    }
}