/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.obj.*;
import com.aptech.model.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author SonVu
 */
public class StoreAction extends ActionSupport {

    private ProductModel productModel;
    private CategoryModel categoryModel;
    private static final long serialVersionUID = 9149826260758390091L;
    private List<Product> recentProduct;
    private List<Category> listCategory;
    private List<Product> listProduct;
    private String searchString;

    public StoreAction() {
        productModel = new ProductModel();
        categoryModel = new CategoryModel();
    }

    @Override
    public String execute() throws Exception {
        recentProduct = productModel.recentProduct();
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String pagingProduct() throws Exception {
        int pageNumber = 1;
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Integer page = Integer.parseInt(request.getParameter("page"));
        if (request.getParameter("page") != null) {
            ActionContext.getContext().getSession().put("page", page);
        } else {
            ActionContext.getContext().getSession().put("page", 1);
        }
        String nextPage = (pageNumber + 1) + "";
        ActionContext.getContext().getSession().put("pageList", listProduct = productModel.pagination(pageNumber));
        String myUrl = "pagingEmp.jsp?page=" + nextPage;
        System.out.println(myUrl);
        listProduct = productModel.pagination(pageNumber);
        return SUCCESS;
    }

    public String header() throws Exception {
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String search() throws Exception {
        System.out.println(searchString);
        listProduct = productModel.search(searchString);
        if (listProduct != null) {
            System.out.println(listProduct.size());
        }
        return SUCCESS;
    }

    public List<Product> getRecentProduct() {
        return recentProduct;
    }

    public void setRecentProduct(List<Product> recentProduct) {
        this.recentProduct = recentProduct;
    }

    public List<Category> getListCategory() {
        return listCategory;
    }

    public void setListCategory(List<Category> listCategory) {
        this.listCategory = listCategory;
    }

    public String getSearchString() {
        return searchString;
    }

    public void setSearchString(String searchString) {
        this.searchString = searchString;
    }

    public List<Product> getListProduct() {
        return listProduct;
    }

    public void setListProduct(List<Product> listProduct) {
        this.listProduct = listProduct;
    }

}
