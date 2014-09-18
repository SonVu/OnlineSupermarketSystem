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
import org.hibernate.Transaction;

/**
 *
 * @author SonVu
 */
public class ProductDao extends AbstractDao {

    private Session session;
    private Transaction tx;

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

    public List pagingWithCategoryId(Integer pageNumber, Integer perPage, Integer catId) {
        List objects = null;
        try {
            startOperation();
            Query query = session.createQuery("from " + Product.class.getName() + " p where p.category.id = " + catId);
            query.setMaxResults(perPage);
            query.setFirstResult(pageNumber);
            objects = query.list();
            tx.commit();
        } catch (HibernateException e) {
            handleException(e);
        } finally {
            HibernateFactory.close(session);
        }
        return objects;
    }
    
    public List findRecent() {
        List objects = null;
        try {
            startOperation();
            Query query = session.createQuery("from Product order by id desc").setMaxResults(8);
            objects = query.list();
            tx.commit();
        } catch (HibernateException e) {
            handleException(e);
        } finally {
            HibernateFactory.close(session);
        }
        return objects;
    }

    public Integer count() {
        return super.count(Product.class); //To change body of generated methods, choose Tools | Templates.
    }

    public Integer countWithCategoryId(Integer catId) {
        Long size = null;
        startOperation();
        try {
            startOperation();
            Query query = session.createQuery("select count(*) from " + Product.class.getName() + " p where p.category.id = " + catId);
            size = (Long) query.uniqueResult();
            tx.commit();
        } catch (HibernateException e) {
            handleException(e);
        } finally {
            HibernateFactory.close(session);
        }
        return size.intValue();
    }

    public Product getProductWithReviewById(Integer productId) {
        startOperation();
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
    
    public void startOperation() throws HibernateException {
        session = HibernateFactory.openSession();
        tx = session.beginTransaction();
    }

}
