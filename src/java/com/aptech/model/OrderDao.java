/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.Order;
import java.util.List;

/**
 *
 * @author SonVu
 */
public class OrderDao extends AbstractDao {

    public OrderDao() {
        super();
    }

    public List paging(Integer pageNumber, Integer perPage) {
        return super.paging(Order.class, pageNumber, perPage); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer count() {
        return super.count(Order.class); //To change body of generated methods, choose Tools | Templates.
    }

    public List findAll() {
        return super.findAll(Order.class); //To change body of generated methods, choose Tools | Templates.
    }

    public Object find(Integer id) {
        return super.find(Order.class, id); //To change body of generated methods, choose Tools | Templates.
    }

    public void delete(Object obj) {
        super.delete(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void update(Object obj) {
        super.update(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void save(Object obj) {
        super.save(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void saveOrUpdate(Object obj) {
        super.saveOrUpdate(obj); //To change body of generated methods, choose Tools | Templates.
    }

}
