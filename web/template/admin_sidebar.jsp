<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="sidebar">
    <div class="sidebar-dropdown"><a href="#">Navigation</a></div>
    <!--- Sidebar navigation -->
    <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
    <ul id="nav">
        <!-- Main menu with font awesome icon -->
        <li><s:a action="index" namespace="/admin" cssClass="open"><i class="icon-home"></i> Dashboard</s:a>
            </li>
            <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> Catalog  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
                <ul>
                    <li><s:a action="index" namespace="/admin/category">Categories</s:a></li>
                <li><s:a action="index" namespace="/admin/product">Products</s:a></li>
                    <li><a href="widgets3.html">Brands</a></li>
                    <li><a href="widgets3.html">Reviews</a></li>
                </ul>
            </li>  
            <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> Sales <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
                <ul>
                    <li><a href="post.html">Orders</a></li>
                    <li><a href="login.html">Customers</a></li>
                </ul>
            </li> 
            <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> System  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
                <ul>
                    <li><a href="media.html">Settings</a></li>
                    <li><a href="statement.html">Design</a></li>
                    <li><s:a action="index" namespace="/admin/user">Users</s:a></li>
                <li><s:a action="index" namespace="/admin/role">User Roles</s:a></li>
                <li><a href="error-log.html">Error Log</a></li>
                <li><a href="calendar.html">Backup / Restore</a></li>
            </ul>
        </li>                             
        <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> Reports  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
            <ul>
                <li><a href="media.html">Sales</a></li>
                <li><a href="statement.html">Products</a></li>
                <li><a href="error.html">Customers</a></li>
            </ul>
        </li> 
    </ul>
</div>