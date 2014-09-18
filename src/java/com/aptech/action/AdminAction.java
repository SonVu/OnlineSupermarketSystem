/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.model.CategoryDao;
import com.aptech.obj.Category;
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

    public AdminAction() {
        categoryDao = new CategoryDao();
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

}
