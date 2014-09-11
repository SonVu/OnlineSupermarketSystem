/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.model;

import com.aptech.obj.Order;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author SonVu
 */
public class OrderModel {

    public List<Order> recentOrder() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Order> recentOrder = null;
        try {
            recentOrder = session.createQuery("from Order order by id desc").setMaxResults(8).list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return recentOrder;
    }

    public Order getOrder(Integer id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Order order = null;
        try {
            order = (Order) session.get(Order.class, id);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return order;
    }

    public List<Order> search(String searchString) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Order> recentOrder = null;
        try {
            recentOrder = session.createQuery("from Order where name like ? order by id desc").setString(0, "%" + searchString + "%").list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return recentOrder;
    }

    public List<Order> pagination(int pageNumber, int perPage, int orderId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Order> pagingOrder = null;
        Query query = null;
        try {
            if (orderId == -1) {
                query = session.createQuery("from Order");
            } else {
                query = session.createQuery("from Order as p where p.category.id=?").setInteger(0, orderId);
            }
            query = query.setFirstResult(pageNumber);
            query.setMaxResults(perPage);
            pagingOrder = query.list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return pagingOrder;
    }

    public Integer totalRecords(int orderId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Order> pagingOrder = null;
        Query query = null;
        try {
            if (orderId == -1) {
                query = session.createQuery("from Order");
            } else {
                query = session.createQuery("from Order as p where p.category.id=?").setInteger(0, orderId);
            }
            pagingOrder = query.list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return pagingOrder.size();
    }

    public List<Order> listOrder() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        List<Order> listOrder = null;
        try {
            listOrder = session.createQuery("from Order").list();
            session.getTransaction().commit();
        } catch (HibernateException e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return listOrder;
    }

    public void delete(Integer orderId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Order order = new Order();
        order.setId(orderId);
        try {
            session.delete(order);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
    }

    public Order get(int orderId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Order order = null;
        try {
            order = (Order) session.get(Order.class, orderId);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        } finally {
            session.flush();
            session.close();
        }
        return order;
    }

    public void save(Order order) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        try {
            if (order.getId() != 0) {
                session.update(order);
            } else {
                session.save(order);
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
