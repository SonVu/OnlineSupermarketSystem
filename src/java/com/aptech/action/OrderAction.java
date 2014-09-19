/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.model.OrderDao;
import com.aptech.model.OrderDetailDao;
import com.aptech.model.UserDao;
import com.aptech.model.UserRoleDao;
import com.aptech.obj.Order;
import com.aptech.obj.OrderDetail;
import com.aptech.obj.User;
import com.aptech.obj.UserRole;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.VisitorFieldValidator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.validation.SkipValidation;

/**
 *
 * @author SonVu
 */
@Validation
public class OrderAction extends ActionSupport {

    private List<Order> listOrder;
    private UserDao userDao;
    private OrderDao orderDao;
    private Order order;

    public OrderAction() {
        userDao = new UserDao();
        orderDao = new OrderDao();
    }

    @Override
    @SkipValidation
    public String execute() throws Exception {
        return SUCCESS;
    }

    @SkipValidation
    public String getOrderByUser() throws Exception {
        try {
            Integer id = ((User) ActionContext.getContext().getSession().get("user")).getId();
            User user = userDao.findWithOrder(id);
            listOrder = user.getOrder();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    @SkipValidation
    public String getOrderDetailById() throws Exception {
        try {
            HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
            Integer id = Integer.parseInt(request.getParameter("id"));
            order = orderDao.find(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
    
    @SkipValidation
    public String index() throws Exception {
        try {
            listOrder = orderDao.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    @SkipValidation
    public String delete() throws Exception {
        try {
            Integer orderId = 0;
            HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
            orderId = Integer.parseInt(request.getParameter("id"));
            orderDao.delete(orderDao.find(orderId));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    @SkipValidation
    public String edit() throws Exception {
        try {
            HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
            Integer orderId = Integer.parseInt(request.getParameter("id"));
            order = orderDao.find(orderId);
            System.out.println(order.getCode() + "cpde");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    @SkipValidation
    public String save() throws Exception {
        try {
            orderDao.save(order);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public List<Order> getListOrder() {
        return listOrder;
    }

    public void setListOrder(List<Order> listOrder) {
        this.listOrder = listOrder;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }

}
