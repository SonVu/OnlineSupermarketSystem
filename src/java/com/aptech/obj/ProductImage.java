package com.aptech.obj;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product_image")
public class ProductImage implements Serializable {

    private static final long serialVersionUID = -8767337896773261247L;

    private Integer id;
    private String url;
    private Integer product_id;

    @Id
    @GeneratedValue
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    @Column(name = "product_id")
    public Integer getProduct_id() {
        return product_id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

}
