/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.aptech.obj.*;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.Map;

/**
 *
 * @author cibervn
 */
public class ViewCartAction extends ActionSupport {

    private Map<Product, Integer> products;
    private Double total;
    
    @Override
    public String execute() throws Exception {
        Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");
        products = cart.getProducts();
        total = cart.getTotalPrice();
        return SUCCESS;
    }

    public Map<Product, Integer> getProducts() {
        return products;
    }

    public Double getTotal() {
        return total;
    }
}
