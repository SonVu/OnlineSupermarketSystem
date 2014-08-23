package com.aptech.obj;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "order")
public class Order implements Serializable {

    private static final long serialVersionUID = -8767337896773261247L;

    private Integer id;
    private Integer user_id;
    private String code;
    private Date created;
    private Integer status;

    @Id
    @GeneratedValue
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    @Column(name = "user_id")
    public Integer getUser_id() {
        return user_id;
    }

    @Column(name = "code")
    public String getCode() {
        return code;
    }

    @Column(name = "created")
    public Date getCreated() {
        return created;
    }

    @Column(name = "status")
    public Integer getStatus() {
        return status;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
