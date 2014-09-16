/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.Product;
import java.util.List;

/**
 *
 * @author SonVu
 */
public class ProductDao extends AbstractDao {

    public ProductDao() {
        super();
    }

    public List findAll() {
        return super.findAll(Product.class); //To change body of generated methods, choose Tools | Templates.
    }

    public Object find(Integer id) {
        return super.find(Product.class, id); //To change body of generated methods, choose Tools | Templates.
    }

    public void delete(Product obj) {
        super.delete(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void update(Product obj) {
        super.update(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void save(Product obj) {
        super.save(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void saveOrUpdate(Product obj) {
        super.saveOrUpdate(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public List paging(Integer pageNumber, Integer perPage) {
        return super.paging(Product.class, pageNumber, perPage); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer count() {
        return super.count(Product.class); //To change body of generated methods, choose Tools | Templates.
    }

}
