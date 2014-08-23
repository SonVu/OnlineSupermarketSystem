/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.User;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author sonvu
 */
public class UserModel {

    private User user;
    private List<User> userList;

    public User getUser(int userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        user = null;
        try {
            user = (User) session.get(User.class, userId);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return user;
    }

    public User getUser(String username) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        user = null;
        try {
            user = (User) session.createQuery("from User where username=?").setString(0, username);
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return user;
    }
}
