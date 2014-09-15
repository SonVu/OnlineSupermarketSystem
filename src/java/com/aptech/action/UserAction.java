/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.model.*;
import com.aptech.obj.*;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author SonVu
 */
public class UserAction extends ActionSupport {

    private UserModel userModel;
    private UserRoleModel userRoleModel;
    private User user;
    private List<User> listUser;
    private List<UserRole> listUserRole;

    public UserAction() {
        userModel = new UserModel();
        userRoleModel = new UserRoleModel();
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Integer id = Integer.parseInt(request.getParameter("id"));
        user = userModel.getUser(id);
        return SUCCESS;
    }

    public String index() throws Exception {
        listUser = userModel.listUser();
        return SUCCESS;
    }

    public String insert() throws Exception {
        user = new User();
        user.setId(0);
        listUserRole = userRoleModel.listUserRole();
        return SUCCESS;
    }

    public String delete() throws Exception {
        Integer userId = 0;
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        userId = Integer.parseInt(request.getParameter("id"));
        userModel.delete(userId);
        return SUCCESS;
    }

    public String edit() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int userId = Integer.parseInt(request.getParameter("id"));
        user = userModel.get(userId);
        listUserRole = userRoleModel.listUserRole();
        return SUCCESS;
    }
    
    public String editProfile() throws Exception {
        int userId = ((User) ActionContext.getContext().getSession().get("user")).getId();
        user = userModel.get(userId);
        return SUCCESS;
    }


    public String save() throws Exception {
        try {
            userModel.save(user);
            ActionContext.getContext().getSession().remove("user");
             ActionContext.getContext().getSession().put("user", userModel.get(user.getId()));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    //<editor-fold defaultstate="collapsed" desc="getter setter">
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getListUser() {
        return listUser;
    }

    public void setListUser(List<User> listUser) {
        this.listUser = listUser;
    }

    public List<UserRole> getListUserRole() {
        return listUserRole;
    }

    public void setListUserRole(List<UserRole> listUserRole) {
        this.listUserRole = listUserRole;
    }
    //</editor-fold>   

}
