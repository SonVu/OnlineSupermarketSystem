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

//<editor-fold defaultstate="collapsed" desc="variable">
    private ProductModel productModel;
    private CategoryModel categoryModel;
    private static final long serialVersionUID = 9149826260758390091L;
    private List<Category> listCategory;
    private List<Product> listProduct;
    private String searchString;
    private Integer maxPage;

    private Map<Product, Integer> products;
    private Double total;
//</editor-fold>

    public StoreAction() {
        productModel = new ProductModel();
        categoryModel = new CategoryModel();
    }

    @Override
    public String execute() throws Exception {
        listProduct = productModel.recentProduct();
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String pagingProduct() throws Exception {
        Integer pageIndex = 0;
        Integer totalNumberOfRecords = 0;
        Integer numberOfRecordsPerPage = 8;
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);

        if (request.getParameter("page") != null) {
            pageIndex = Integer.parseInt(request.getParameter("page"));
        } else {
            pageIndex = 1;
        }
        totalNumberOfRecords = productModel.totalRecords(-1);
        int startIndex = (pageIndex * numberOfRecordsPerPage) - numberOfRecordsPerPage;
        maxPage = totalNumberOfRecords / numberOfRecordsPerPage;
        if (totalNumberOfRecords % 2 != 0) {
            maxPage += 1;
        }
        listProduct = productModel.pagination(startIndex, numberOfRecordsPerPage, -1);
        return SUCCESS;
    }

    public String header() throws Exception {
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String sidebar() throws Exception {
        listCategory = categoryModel.listCategory();
        return SUCCESS;
    }

    public String search() throws Exception {
        listProduct = productModel.search(searchString);
        return SUCCESS;
    }

    public String buy() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Integer id = Integer.parseInt(request.getParameter("id"));

        ArrayList<OrderDetail> cart = (ArrayList<OrderDetail>) ActionContext.getContext().getSession().get("cart");
        if (cart == null) {
            cart = new ArrayList<OrderDetail>();
        }

        Product p = productModel.getProduct(id);
        cart.add(new OrderDetail(p, p.getPrice(), 1.0, p.getDiscount()));

        ActionContext.getContext().getSession().put("cart", cart);
        return SUCCESS;
    }

    public String cart() throws Exception {
        ArrayList<OrderDetail> cart = (ArrayList<OrderDetail>) ActionContext.getContext().getSession().get("cart");
        if (cart != null) {
            total = 0.0;
            for (OrderDetail orderDetail : cart) {
                total = total + orderDetail.getQuantity();
            }
        }
        return SUCCESS;
    }

    // <editor-fold defaultstate="collapsed" desc="Getter setter">
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

    public Integer getMaxPage() {
        return maxPage;
    }

    public void setMaxPage(Integer maxPage) {
        this.maxPage = maxPage;
    }

    public Map<Product, Integer> getProducts() {
        return products;
    }

    public Double getTotal() {
        return total;
    }
// </editor-fold>
}
