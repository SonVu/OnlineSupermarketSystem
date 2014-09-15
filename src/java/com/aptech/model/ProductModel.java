/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.Product;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

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
    
    public List<Product> pagination(int pageNumber, int perPage, int productId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Product> pagingProduct = null;
        Query query = null;
        try {
            if (productId == -1) {
                query = session.createQuery("from Product");
            } else {
                query = session.createQuery("from Product as p where p.category.id=?").setInteger(0, productId);
            }
            query = query.setFirstResult(pageNumber);
            query.setMaxResults(perPage);
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
    
    public Integer totalRecords(int productId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Product> pagingProduct = null;
        Query query = null;
        try {
            if (productId == -1) {
                query = session.createQuery("from Product");
            } else {
                query = session.createQuery("from Product as p where p.category.id=?").setInteger(0, productId);
            }
            pagingProduct = query.list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return pagingProduct.size();
    }
    
    public List<Product> listProduct() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Product> listProduct = null;
        try {
            listProduct = session.createQuery("from Product").list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return listProduct;
    }
    
    public void delete(Integer productId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Product product = new Product();
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
    
    public Product get(int productId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Product product = null;
        try {
            product = (Product) session.get(Product.class, productId);
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
    
    public Product getProductWithReviewById(Integer productId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Product product = null;
        try {
            product = (Product) session.get(Product.class, productId);
            Hibernate.initialize(product.getProductReview());
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
    
    public void save(Product product) {
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
