/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.Product;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author SonVu
 */
public class ProductModel {

    public List<Product> recentProduct() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Product> recentProduct = null;
        try {
            recentProduct = session.createQuery("from Product order by id desc").setMaxResults(8).list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return recentProduct;
    }

    public Product getProduct(Integer id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Product product = null;
        try {
            product = (Product) session.get(Product.class, id);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return product;
    }

    public List<Product> search(String searchString) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Product> recentProduct = null;
        try {
            recentProduct = session.createQuery("from Product where name like ? order by id desc").setString(0, "%" + searchString + "%").list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return recentProduct;
    }

    public List<Product> pagination(int pageNumber) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Product> pagingProduct = null;
        try {
            Query query = session.createQuery("from Product");
            query = query.setFirstResult(3 * (pageNumber - 1));
            query.setMaxResults(3);
            pagingProduct = query.list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return pagingProduct;
    }
}
