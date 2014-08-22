/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.obj;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Cart {

    private final Map<Product, Integer> cart = new HashMap<Product, Integer>();

    public Cart() {
    }

    public void addProduct(Product p) {
        Integer amount = cart.get(p);
        cart.put(p, amount==null?1:(amount + 1));
    }

    public Map<Product, Integer> getProducts() {
        return cart;
    }

    public Double getTotalPrice() {
        Double total = 0.0;

        Set<Product> keys = cart.keySet();
        for (Product product : keys) {
            total += product.getPrice() * cart.get(product);
        }
        
        return total;
    }
}
