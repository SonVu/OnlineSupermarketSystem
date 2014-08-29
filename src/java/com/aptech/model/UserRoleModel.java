/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.UserRole;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author sonvu
 */
public class UserRoleModel {

    private UserRole user;
    private List<UserRole> listUserRole;

    public UserRole getUserRole(int userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        user = null;
        try {
            user = (UserRole) session.get(UserRole.class, userId);
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

    public UserRole getUserRole(String username) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        user = null;
        try {
            user = (UserRole) session.createQuery("from UserRole where username=?").setString(0, username);
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

    public List<UserRole> listUserRole() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<UserRole> listUserRole = null;
        try {
            listUserRole = session.createQuery("from UserRole").list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return listUserRole;
    }

    public void delete(Integer userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        UserRole user = new UserRole();
        user.setId(userId);
        try {
            session.delete(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
    }

    public UserRole get(int userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        UserRole user = null;
        try {
            user = (UserRole) session.get(UserRole.class, userId);
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

    public void save(UserRole user) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            if (user.getId() != 0) {
                session.update(user);
            } else {
                session.save(user);
            }
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
    }
}
