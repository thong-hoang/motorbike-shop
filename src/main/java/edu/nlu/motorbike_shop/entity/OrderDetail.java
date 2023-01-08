package edu.nlu.motorbike_shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetail {
    private Order order;
    private Product product;
    private int quantity;
    private int productCost;
    private int subTotal;
}
