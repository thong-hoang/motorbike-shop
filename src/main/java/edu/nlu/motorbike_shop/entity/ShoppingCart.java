package edu.nlu.motorbike_shop.entity;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ShoppingCart {
    private Map<Product, Integer> cart = new HashMap<>();

    public void addItem(Product product) {
        if (cart.containsKey(product)) {
            cart.put(product, cart.get(product) + 1);
        } else {
            cart.put(product, 1);
        }
    }

    public void removeItem(Product product) {
        cart.remove(product);
    }

    public int getTotalQuantity() {
        int total = 0;

        Iterator<Product> iterator = cart.keySet().iterator();

        while (iterator.hasNext()) {
            Product product = iterator.next();
            Integer quantity = cart.get(product);
            total += quantity;
        }
        return total;
    }

    public int getTotalAmount() {
        int total = 0;

        Iterator<Product> iterator = cart.keySet().iterator();

        while (iterator.hasNext()) {
            Product product = iterator.next();
            Integer quantity = cart.get(product);
            int subTotal = product.getPrice() * quantity;
            total += subTotal;
        }
        return total;
    }

    public int getTotalItems() {
        return cart.size();
    }

    public Map<Product, Integer> getItems() {
        return this.cart;
    }

    public void clear() {
        cart.clear();
    }
}
