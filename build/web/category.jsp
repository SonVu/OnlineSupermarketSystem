<%--<%@include file="template/header.jsp" %>--%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<s:action name="header" executeResult="true">
</s:action>
<!-- Items -->

<div class="items">
    <div class="container">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-sm-3 hidden-xs">

                <h5 class="title">Categories</h5>
                <!-- Sidebar navigation -->
                <nav>
                    <ul id="nav">
                        <!-- Main menu. Use the class "has_sub" to "li" tag if it has submenu. -->
                        <li><a href="index.jsp">Home</a></li>
                        <li class="has_sub"><a href="#">Smartphone</a>
                            <!-- Submenu -->
                            <ul>
                                <li><a href="items.html">HTC</a></li>
                                <li><a href="items.html">Samsung</a></li>
                                <li><a href="items.html">Apple</a></li>
                                <li><a href="items.html">Motorola</a></li>
                                <li><a href="items.html">Nokia</a></li>
                            </ul>
                        </li>
                        <li class="has_sub"><a href="#">Tablet</a>
                            <ul>
                                <li><a href="items.html">Samsung</a></li>
                                <li><a href="items.html">Apple</a></li>
                                <li><a href="items.html">Motorola</a></li>
                            </ul>
                        </li>
                        <li class="has_sub"><a href="#">Digital Camera</a>
                            <ul>
                                <li><a href="items.html">Nikkon</a></li>
                                <li><a href="items.html">Samsung</a></li>
                                <li><a href="items.html">Sony</a></li>
                                <li><a href="items.html">Cannon</a></li>
                            </ul>
                        </li>
                        <li class="has_sub"><a href="#">Computers</a>
                            <ul>
                                <li><a href="items.html">Dell</a></li>
                                <li><a href="items.html">Lenovo</a></li>
                                <li><a href="items.html">Apple</a></li>
                                <li><a href="items.html">Samsung</a></li>
                            </ul>
                        </li>
                        <li class="has_sub"><a href="#">Software</a>
                            <ul>
                                <li><a href="items.html">Microsoft</a></li>
                                <li><a href="items.html">Nero</a></li>
                                <li><a href="items.html">Apple</a></li>
                                <li><a href="items.html">Avaira</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <br />
                <!-- Sidebar items (featured items)-->

                <div class="sidebar-items">

                    <h5 class="title">Featured Items</h5>

                    <!-- Item #1 -->
                    <div class="sitem">
                        <!-- Don't forget the class "onethree-left" and "onethree-right" -->
                        <div class="onethree-left">
                            <!-- Image -->
                            <a href="single-item.html"><img src="img/photos/2.png" alt="" class="img-responsive" /></a>
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
                            <a href="single-item.html"><img src="img/photos/3.png" alt="" class="img-responsive" /></a>
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
                            <a href="single-item.html"><img src="img/photos/4.png" alt="" class="img-responsive" /></a>
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
                            <a href="single-item.html"><img src="img/photos/5.png" alt="" class="img-responsive" /></a>
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
            <!-- Main content -->
            <div class="col-md-9 col-sm-9">

                <!-- Breadcrumb -->
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li><a href="items.html">Smartphone</a> <span class="divider">/</span></li>
                    <li class="active">Apple</li>
                </ul>

                <!-- Title -->
                <h4 class="pull-left"><s:property value="category.name"/></h4>
                <!-- Sorting -->
                <div class="form-group pull-right">                               
                    <select class="form-control">
                        <option>Sort By</option>
                        <option>Name (A-Z)</option>
                        <option>Name (Z-A></option>
                        <option>Price (Low-High)</option>
                        <option>Price (High-Low)</option>
                        <option>Ratings</option>
                    </select>  
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12">
                        <h3 class="title">Popular Deals</h3>
                    </div>
                    <s:iterator value="listProduct" var="product">
                        <div class="col-md-3 col-sm-4">
                            <div class="item">
                                <div class="item-image">
                                    <s:url action="product" var="urlTag">
                                        <s:param name="id"><s:property value="id" /></s:param>
                                    </s:url>
                                    <s:a href="%{urlTag}"><img src="img/photos/3.png" alt="<s:property value="name"/>" /></s:a>
                                    </div>
                                    <div class="item-details">
                                        <h5><a href="single-item.html"><s:property value="name"/></a></h5>
                                    <div class="item-price pull-left">$<s:property value="getText('{0,number,#,##0}',{price})"/></div>
                                    <s:url action="buy" var="buyTag">
                                        <s:param name="id"><s:property value="#product.id" /></s:param>
                                    </s:url>
                                    <div class="button pull-right"><s:a href="%{buyTag}">Add to Cart</s:a></div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>  
                    </s:iterator>
                    <div class="paging">
                        <c:forEach var="i" begin="1" end="${maxPage}">
                            <s:url action="category" var="urlTag">
                                <s:param name="id">${param.id}</s:param>
                                <s:param name="page">${i}</s:param>
                            </s:url>

                            <c:choose>
                                <c:when test="${param.page == i}"><s:a href="%{urlTag}" cssClass="current">${i}</s:a></c:when>
                                <c:when test="${param.page == null}">
                                    <c:choose>
                                        <c:when test="${i == 1}">
                                            <s:a href="%{urlTag}" cssClass="current">${i}</s:a>
                                        </c:when>
                                        <c:otherwise>
                                            <s:a href="%{urlTag}">${i}</s:a>
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                                <c:otherwise><s:a href="%{urlTag}">${i}</s:a></c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>
                </div>
            </div>                                                                    
        </div>
    </div>
</div>

<%@include file="template/footer.jsp" %>