/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.model.CategoryDao;
import com.aptech.model.OrderDao;
import com.aptech.obj.Category;
import com.aptech.obj.Order;
import com.aptech.obj.User;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author sonvu
 */
public class AdminAction extends ActionSupport {

    private User userBean;
    private List<Category> listCategory;
    private CategoryDao categoryDao;
    private List<Order> listOrder;
    private OrderDao orderDao;
   
    public AdminAction() {
        categoryDao = new CategoryDao();
        orderDao = new OrderDao();
    }
    
    public String getLatest() throws Exception {
        try {
            listOrder = orderDao.findLatest();
        } catch (Exception e) { 
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public String execute() throws Exception {
        listCategory = categoryDao.findAll();
        return SUCCESS;
    }

    public User getUserBean() {
        return userBean;
    }

    public void setUserBean(User userBean) {
        this.userBean = userBean;
    }

    public String header() throws Exception {
        return SUCCESS;
    }

    public String sidebar() throws Exception {
        return SUCCESS;
    }

    public List<Category> getListCategory() {
        return listCategory;
    }

    public void setListCategory(List<Category> listCategory) {
        this.listCategory = listCategory;
    }

    public List<Order> getListOrder() {
        return listOrder;
    }

    public void setListOrder(List<Order> listOrder) {
        this.listOrder = listOrder;
    }

    
}
