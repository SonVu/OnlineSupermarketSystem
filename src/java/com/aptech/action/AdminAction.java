/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.obj.User;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author sonvu
 */
public class AdminAction extends ActionSupport {

    private User userBean;

    public AdminAction() {
    }

    public String execute() throws Exception {
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
}
