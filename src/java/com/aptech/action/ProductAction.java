/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.model.*;
import com.aptech.obj.*;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author SonVu
 */
public class ProductAction extends ActionSupport {

    private ProductModel productModel;
    private CategoryModel categoryModel;
    private Product product;
    private List<Product> listProduct;
    private List<Category> listCategory;

    public ProductAction() {
        productModel = new ProductModel();
        categoryModel = new CategoryModel();
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Integer id = Integer.parseInt(request.getParameter("id"));
        product = productModel.getProduct(id);
        return SUCCESS;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String index() throws Exception {
        listProduct = productModel.listProduct();
        return SUCCESS;
    }

    public String insert() throws Exception {
        product = new Product();
        product.setId(0);
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String delete() throws Exception {
        Integer productId = 0;
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        productId = Integer.parseInt(request.getParameter("id"));
        productModel.delete(productId);
        return SUCCESS;
    }

    public String edit() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int productId = Integer.parseInt(request.getParameter("id"));
        product = productModel.get(productId);
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String save() throws Exception {
        try {
            productModel.save(product);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public List<Product> getListProduct() {
        return listProduct;
    }

    public void setListProduct(List<Product> listProduct) {
        this.listProduct = listProduct;
    }

    public List<Category> getListCategory() {
        return listCategory;
    }

    public void setListCategory(List<Category> listCategory) {
        this.listCategory = listCategory;
    }

}
