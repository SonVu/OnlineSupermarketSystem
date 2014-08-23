package com.aptech.obj;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order_detail")
public class OrderDetail implements Serializable {

    private static final long serialVersionUID = -8767337896773261247L;

    private Integer id;
    private Integer order_id;
    private Integer product_id;
    private Double price;
    private Double quantity;
    private Double discount;

    @Id
    @GeneratedValue
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    @Column(name = "order_id")
    public Integer getOrder_id() {
        return order_id;
    }

    @Column(name = "product_id")
    public Integer getProduct_id() {
        return product_id;
    }

    @Column(name = "price")
    public Double getPrice() {
        return price;
    }

    @Column(name = "quantity")
    public Double getQuantity() {
        return quantity;
    }

    @Column(name = "dscount")
    public Double getDiscount() {
        return discount;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public void setQuantity(Double quantity) {
        this.quantity = quantity;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }
}
