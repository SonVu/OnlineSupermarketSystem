/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.Category;
import java.util.List;

/**
 *
 * @author SonVu
 */
public class CategoryDao extends AbstractDao {

    public CategoryDao() {
        super();
    }

    public List paging(Integer pageNumber, Integer perPage) {
        return super.paging(Category.class, pageNumber, perPage); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer count() {
        return super.count(Category.class); //To change body of generated methods, choose Tools | Templates.
    }

    public List findAll() {
        return super.findAll(Category.class); //To change body of generated methods, choose Tools | Templates.
    }

    public Category find(Integer id) {
        return (Category) super.find(Category.class, id); //To change body of generated methods, choose Tools | Templates.
    }

    public void delete(Category obj) {
        super.delete(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void update(Category obj) {
        super.update(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void save(Category obj) {
        super.save(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void saveOrUpdate(Category obj) {
        super.saveOrUpdate(obj); //To change body of generated methods, choose Tools | Templates.
    }

}
