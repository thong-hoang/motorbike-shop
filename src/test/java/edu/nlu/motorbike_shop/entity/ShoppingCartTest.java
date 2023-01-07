package edu.nlu.motorbike_shop.entity;

import org.junit.BeforeClass;
import org.junit.Test;

import java.util.Map;

import static org.junit.Assert.*;

public class ShoppingCartTest {

    @Test
    public void testAddItem() {
        ShoppingCart cart = new ShoppingCart();
        Product product = new Product();
        product.setId(1);

        cart.addItem(product);
        cart.addItem(product);

        Map<Product, Integer> items = cart.getItems();
        int quantity = items.get(product);

        assertEquals(2, quantity);
    }

    @Test
    public void testRemoveItem() {
        ShoppingCart cart = new ShoppingCart();
        Product product = new Product();
        product.setId(1);

        cart.addItem(product);

        cart.removeItem(product);

        assertTrue(cart.getItems().isEmpty());
    }

    @Test
    public void testGetTotalQuantity() {
        ShoppingCart cart = new ShoppingCart();
        Product product = new Product();
        product.setId(1);

        cart.addItem(product);
        cart.addItem(product);

        assertEquals(2, cart.getTotalQuantity());
    }

    @Test
    public void testGetTotalAmount() {
        ShoppingCart cart = new ShoppingCart();
        Product product = new Product();
        product.setId(1);
        product.setPrice(100);

        cart.addItem(product);
        cart.addItem(product);

        assertEquals(200, cart.getTotalAmount());
    }
}