/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.obj.*;
import com.aptech.model.*;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author SonVu
 */
public class CartAction extends ActionSupport {

    private ProductModel model;

    public CartAction() {
        model = new ProductModel();
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Integer id = Integer.parseInt(request.getParameter("id"));
        Cart cart = (Cart) ActionContext.getContext().getSession().get("cart");
        if (cart == null) {
            cart = new Cart();
        }
        Product p = model.getProduct(id);
        cart.addProduct(p);
        ActionContext.getContext().getSession().put("cart", cart);
        return SUCCESS;
    }
}
