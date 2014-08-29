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
public class RoleAction extends ActionSupport {

    private UserModel userModel;
    private UserRoleModel userRoleModel;
    private User user;
    private UserRole userRole;
    private List<User> listUser;
    private List<UserRole> listUserRole;

    public RoleAction() {
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
        listUserRole = userRoleModel.listUserRole();
        return SUCCESS;
    }

    public String insert() throws Exception {
        userRole = new UserRole();
        userRole.setId(0);
        return SUCCESS;
    }

    public String delete() throws Exception {
        Integer userId = 0;
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        userId = Integer.parseInt(request.getParameter("id"));
        userRoleModel.delete(userId);
        return SUCCESS;
    }

    public String edit() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int userId = Integer.parseInt(request.getParameter("id"));
        userRole = userRoleModel.get(userId);
        listUserRole = userRoleModel.listUserRole();
        return SUCCESS;
    }

    public String save() throws Exception {
        try {
            userRoleModel.save(userRole);
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

    public UserRole getUserRole() {
        return userRole;
    }

    public void setUserRole(UserRole userRole) {
        this.userRole = userRole;
    }
    //</editor-fold>   
}
