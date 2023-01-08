package edu.nlu.motorbike_shop.entity;

import edu.nlu.motorbike_shop.dao.ProductDAO;
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

    @Test
    public void testUpdateCart() {
        ShoppingCart cart = new ShoppingCart();
        Product product1 = ProductDAO.getInstance().findById(1);
        Product product2 = ProductDAO.getInstance().findById(2);

        cart.addItem(product1);
        cart.addItem(product2);

        int[] productIds = {1, 2};
        int[] quantities = {3, 4};

        cart.updateCart(productIds, quantities);

        assertEquals(7, cart.getTotalQuantity());
    }
}