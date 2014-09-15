/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.obj.*;
import com.aptech.model.*;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author SonVu
 */
public class CategoryAction extends ActionSupport {

    private CategoryModel categoryModel;
    private ProductModel productModel;
    private List<Category> listCategory;
    private Category category;
    private List<Product> listProduct;
    private Integer maxPage;

    public CategoryAction() {
        categoryModel = new CategoryModel();
        productModel = new ProductModel();
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Integer id = Integer.parseInt(request.getParameter("id"));
        category = categoryModel.getCategory(id);
        return SUCCESS;
    }

    public String categoryPaging() throws Exception {
        Integer pageIndex = 0;
        Integer totalNumberOfRecords = 0;
        Integer numberOfRecordsPerPage = 9;
        Integer categoryId = 0;
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        categoryId = Integer.parseInt(request.getParameter("id"));

        if (request.getParameter("page") != null) {
            pageIndex = Integer.parseInt(request.getParameter("page"));
        } else {
            pageIndex = 1;
        }
        totalNumberOfRecords = productModel.totalRecords(categoryId);
        int startIndex = (pageIndex * numberOfRecordsPerPage) - numberOfRecordsPerPage;
        maxPage = totalNumberOfRecords / numberOfRecordsPerPage;
        if (totalNumberOfRecords % 2 != 0) {
            maxPage += 1;
        }
        listProduct = productModel.pagination(startIndex, numberOfRecordsPerPage, categoryId);
        return SUCCESS;
    }

    public String index() throws Exception {
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String insert() throws Exception {
        category = new Category();
        category.setId(0);
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String delete() throws Exception {
        Integer categoryId = 0;
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        categoryId = Integer.parseInt(request.getParameter("id"));
        categoryModel.delete(categoryId);
        return SUCCESS;
    }

    public String edit() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        int categoryId = Integer.parseInt(request.getParameter("id"));
        category = categoryModel.getCategory(categoryId);
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String save() throws Exception {
        try {
            categoryModel.save(category);
            System.out.println("saved");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    //<editor-fold defaultstate="collapsed" desc="getter setter">
    public List<Category> getListCategory() {
        return listCategory;
    }

    public void setListCategory(List<Category> listCategory) {
        this.listCategory = listCategory;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public List<Product> getListProduct() {
        return listProduct;
    }

    public void setListProduct(List<Product> listProduct) {
        this.listProduct = listProduct;
    }

    public Integer getMaxPage() {
        return maxPage;
    }

    public void setMaxPage(Integer maxPage) {
        this.maxPage = maxPage;
    }
//</editor-fold>

}
