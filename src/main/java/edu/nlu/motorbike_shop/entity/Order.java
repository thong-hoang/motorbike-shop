package edu.nlu.motorbike_shop.entity;

import lombok.*;

import java.util.Date;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Order {
    private Integer id;
    private Customer customer;
    private Date orderDate;
    private String paymentMethod;
    private int price;
    private int discount;
    private int tax;
    private int total;
    private String status;
    private String recipientName;
    private String recipientPhone;
    private Address address;
    private Set<OrderDetail> orderDetails = new HashSet<>();

    public Order(Integer id, Customer customer, Date orderDate, String paymentMethod, int price, int discount, int tax,
                 int total, String status, String recipientName, String recipientPhone, Address address) {
        this.id = id;
        this.customer = customer;
        this.orderDate = orderDate;
        this.paymentMethod = paymentMethod;
        this.price = price;
        this.discount = discount;
        this.tax = tax;
        this.total = total;
        this.status = status;
        this.recipientName = recipientName;
        this.recipientPhone = recipientPhone;
        this.address = address;
    }

    public void addOrderDetail(OrderDetail orderDetail) {
        this.orderDetails.add(orderDetail);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return Objects.equals(id, order.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @Override
    public String toString() {
        return "Order{" + "id=" + id + ", customer=" + customer + ", orderDate=" + orderDate +
                ", paymentMethod='" + paymentMethod + '\'' + ", price=" + price + ", discount=" + discount +
                ", tax=" + tax + ", total=" + total + ", status='" + status + '\'' +
                ", recipientName='" + recipientName + '\'' + ", recipientPhone='" + recipientPhone + '\'' +
                ", address=" + address + ", orderDetails=" + orderDetails + '}';
    }
}
