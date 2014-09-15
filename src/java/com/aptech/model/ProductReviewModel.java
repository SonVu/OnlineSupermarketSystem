/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.ProductReview;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author SonVu
 */
public class ProductReviewModel {

    public ProductReview getProductReview(Integer id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        ProductReview product = null;
        try {
            product = (ProductReview) session.get(ProductReview.class, id);
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

    public List<ProductReview> search(String searchString) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<ProductReview> recentProductReview = null;
        try {
            recentProductReview = session.createQuery("from ProductReview where name like ? order by id desc").setString(0, "%" + searchString + "%").list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return recentProductReview;
    }

    public List<ProductReview> listProductReview() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<ProductReview> listProductReview = null;
        try {
            listProductReview = session.createQuery("from ProductReview").list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return listProductReview;
    }

    public void delete(Integer productId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        ProductReview product = new ProductReview();
        product.setId(productId);
        try {
            session.delete(product);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
    }

    public ProductReview get(int productId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        ProductReview product = null;
        try {
            product = (ProductReview) session.get(ProductReview.class, productId);
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

    public void save(ProductReview product) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            if (product.getId() != 0) {
                session.update(product);
            } else {
                session.save(product);
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
