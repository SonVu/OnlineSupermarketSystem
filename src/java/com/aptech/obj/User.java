package com.aptech.obj;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User implements Serializable {

    private static final long serialVersionUID = -8767337896773261247L;

    private Integer id;
    private String username;
    private String password;
    private String fullname;
    private String address;
    private String phone;
    private String email;
    private Integer role_id;

    @Id
    @GeneratedValue
    @Column(name = "id")
    public Integer getId() {
        return id;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    @Column(name = "username")
    public String getUsername() {
        return username;
    }
    @Column(name = "password")
    public String getPassword() {
        return password;
    }
    @Column(name = "fullname")
    public String getFullname() {
        return fullname;
    }
    @Column(name = "address")
    public String getAddress() {
        return address;
    }
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }
    @Column(name = "email")
    public String getEmail() {
        return email;
    }
    @Column(name = "role_id")
    public Integer getRole_id() {
        return role_id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }

    
}
