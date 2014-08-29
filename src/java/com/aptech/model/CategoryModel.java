/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.*;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author SonVu
 */
public class CategoryModel {

    public List<Category> listCategory() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Category> listCategory = null;
        try {
            listCategory = session.createQuery("from Category").list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return listCategory;
    }

    public Category getCategory(Integer id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Category category = null;
        try {
            category = (Category) session.get(Category.class, id);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return category;
    }

    public void delete(Integer categoryId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Category category = new Category();
        category.setId(categoryId);
        try {
            session.delete(category);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
    }

    public void save(Category category) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            if (category.getId() != 0) {
                session.update(category);
            } else {
                session.save(category);
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
