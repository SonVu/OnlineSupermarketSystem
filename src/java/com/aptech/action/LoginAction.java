/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.helper.MD5Hash;
import com.aptech.model.UserModel;
import com.aptech.obj.User;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author SonVu
 */
public class LoginAction extends ActionSupport {

    private UserModel userModel;
    private User userBean;

    public LoginAction() {
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String signin() throws Exception {
        String userName = userBean.getUsername();
        String password = MD5Hash.hash(userBean.getPassword());
        User user = null;
        try {
            user = userModel.getUser(userName);
            if (user == null) {
                System.out.println("fucked");
            }
            System.out.println(user.getFullname());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public User getUserBean() {
        return userBean;
    }

    public void setUserBean(User userBean) {
        this.userBean = userBean;
    }
}
