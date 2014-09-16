/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.aptech.model;

import com.aptech.obj.UserRole;
import java.util.List;

/**
 *
 * @author SonVu
 */
public class UserRoleDAO extends AbstractDao{

    public UserRoleDAO() {
        super();
    }

    public List findAll() {
        return super.findAll(UserRole.class); //To change body of generated methods, choose Tools | Templates.
    }

    public Object find(Integer id) {
        return super.find(UserRole.class, id); //To change body of generated methods, choose Tools | Templates.
    }

    public void delete(UserRole obj) {
        super.delete(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void update(UserRole obj) {
        super.update(obj); //To change body of generated methods, choose Tools | Templates.
    }
    
    public void save(UserRole obj) {
        super.save(obj); //To change body of generated methods, choose Tools | Templates.
    }

    public void saveOrUpdate(UserRole obj) {
        super.saveOrUpdate(obj); //To change body of generated methods, choose Tools | Templates.
    }

}
