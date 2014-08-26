<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="col-md-3 col-sm-3 hidden-xs">

    <h5 class="title">Categories</h5>
    <!-- Sidebar navigation -->
    <nav>
        <ul id="nav">
            <!-- Main menu. Use the class "has_sub" to "li" tag if it has submenu. -->
            <s:url action="store" var="urlTag">
            </s:url>
            <li><s:a href="%{urlTag}">Home</s:a></li>
                <s:iterator value="listCategory" var="parent">
                    <s:if test="%{parent_id == 0}">
                    <li class="has_sub">
                        <a href="#"><s:property value="#parent.name" /></a>
                        <ul>
                            <s:iterator var="child" value="listCategory">
                                <s:if test="#child.parent_id == #parent.id">
                                    <s:url action="category" var="urlTag">
                                        <s:param name="id"><s:property value="#child.id" /></s:param>
                                    </s:url>
                                    <li><s:a href="%{urlTag}"><s:property value="#child.name" /></s:a></li>
                                    </s:if>
                                </s:iterator>
                        </ul>
                    </li>
                </s:if>
            </s:iterator>
        </ul>
    </nav>
    <br>
    <!-- Sidebar items (featured items)-->

    <div class="sidebar-items">

        <h5 class="title">Featured Items</h5>

        <!-- Item #1 -->
        <div class="sitem">
            <!-- Don't forget the class "onethree-left" and "onethree-right" -->
            <div class="onethree-left">
                <!-- Image -->
                <a href="single-item.html"><img src="store/img/photos/2.png" alt="" class="img-responsive"></a>
            </div>
            <div class="onethree-right">
                <!-- Title -->
                <a href="single-item.html">HTC One V</a>
                <!-- Para -->
                <p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
                <!-- Price -->
                <p class="bold">$199</p>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="sitem">
            <div class="onethree-left">
                <a href="single-item.html"><img src="store/img/photos/3.png" alt="" class="img-responsive"></a>
            </div>
            <div class="onethree-right">
                <a href="single-item.html">Sony One V</a>
                <p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
                <p class="bold">$399</p>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="sitem">
            <div class="onethree-left">
                <a href="single-item.html"><img src="store/img/photos/4.png" alt="" class="img-responsive"></a>
            </div>
            <div class="onethree-right">
                <a href="single-item.html">Nokia One V</a>
                <p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
                <p class="bold">$159</p>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="sitem">
            <div class="onethree-left">
                <a href="single-item.html"><img src="store/img/photos/5.png" alt="" class="img-responsive"></a>
            </div>
            <div class="onethree-right">
                <a href="single-item.html">Samsung One V</a>
                <p>Aenean ullamcorper justo tincidunt justo aliquet.</p>
                <p class="bold">$299</p>
            </div>
            <div class="clearfix"></div>
        </div>

    </div>

</div>