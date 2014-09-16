/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aptech.action;

import com.aptech.model.CategoryModel;
import com.aptech.model.ProductDao;
import com.aptech.model.ProductModel;
import com.aptech.model.ProductReviewModel;
import com.aptech.obj.Category;
import com.aptech.obj.Product;
import com.aptech.obj.ProductImage;
import com.aptech.obj.ProductReview;
import com.aptech.obj.User;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author SonVu
 */
public class ProductAction extends ActionSupport implements ServletRequestAware {

    private ProductModel productModel;
    private CategoryModel categoryModel;
    private ProductReviewModel productReviewModel;
    private Product product;
    private List<Product> listProduct;
    private List<Category> listCategory;
    private ProductReview productReview;
    private File userImage;
    private String userImageContentType;
    private String userImageFileName;
    private HttpServletRequest servletRequest;
    private ProductDao dao;
    private Integer maxPage;

    public ProductAction() {
        productModel = new ProductModel();
        categoryModel = new CategoryModel();
        productReviewModel = new ProductReviewModel();
        dao = new ProductDao();
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Integer id = Integer.parseInt(request.getParameter("id"));
        product = productModel.getProductWithReviewById(id);
        return SUCCESS;
    }

    public String review() throws Exception {
        product = new Product();
        product.setId(productReview.getId());
        productReview.setProduct(product);
        User user = (User) ActionContext.getContext().getSession().get("user");
        productReview.setUser(user);
        try {
            productReview.setId(0);
            productReviewModel.save(productReview);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    public String index() throws Exception {
        try {
            Integer page;
            Integer totalNumberOfRecords = 0;
            Integer numberOfRecordsPerPage = 4;
            HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
            if (request.getParameter("page") != null) {
                page = Integer.parseInt(request.getParameter("page"));
            } else {
                page = 1;
            }
            totalNumberOfRecords = dao.count();
            Integer startIndex = (page * numberOfRecordsPerPage) - numberOfRecordsPerPage;
            maxPage = totalNumberOfRecords / numberOfRecordsPerPage;
            if (totalNumberOfRecords % 2 != 0) {
                maxPage += 1;
            }
            listProduct = dao.paging(startIndex, numberOfRecordsPerPage);
            System.out.println(maxPage + "max page" + totalNumberOfRecords + "records ");
        } catch (Exception e) {
            e.printStackTrace();
        }
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
        String timeStamp = new SimpleDateFormat("HHmmss").format(Calendar.getInstance().getTime());
        try {
            try {

                String filePath = servletRequest.getSession().getServletContext().getRealPath(
                        "/store/product/" + timeStamp);
                System.out.println("Server path:" + filePath);
                File fileToCreate = new File(filePath, this.userImageFileName);
                FileUtils.copyFile(this.userImage, fileToCreate);
            } catch (Exception e) {
                e.printStackTrace();
                addActionError(e.getMessage());
            }
            ProductImage image = new ProductImage();
            image.setUrl("store/product/" + timeStamp + "/" + this.userImageFileName);
            image.setProduct(product);
            List<ProductImage> listImage = new ArrayList<ProductImage>();
            listImage.add(image);
            product.setProductImage(listImage);

            productModel.save(product);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }

    //<editor-fold defaultstate="collapsed" desc="getter-setter">
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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public File getUserImage() {
        return userImage;
    }

    public void setUserImage(File userImage) {
        this.userImage = userImage;
    }

    public String getUserImageContentType() {
        return userImageContentType;
    }

    public void setUserImageContentType(String userImageContentType) {
        this.userImageContentType = userImageContentType;
    }

    public String getUserImageFileName() {
        return userImageFileName;
    }

    public void setUserImageFileName(String userImageFileName) {
        this.userImageFileName = userImageFileName;
    }

    @Override
    public void setServletRequest(HttpServletRequest servletRequest) {
        this.servletRequest = servletRequest;

    }

    //</editor-fold>
    public ProductReview getProductReview() {
        return productReview;
    }

    public void setProductReview(ProductReview productReview) {
        this.productReview = productReview;
    }

    public Integer getMaxPage() {
        return maxPage;
    }

    public void setMaxPage(Integer maxPage) {
        this.maxPage = maxPage;
    }

}
