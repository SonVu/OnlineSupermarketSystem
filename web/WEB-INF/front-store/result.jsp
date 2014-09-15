<%@ taglib prefix="s" uri="/struts-tags"%>
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
                            <a href="single-item.html"><img src="store/img/photos/2.png" alt="" class="img-responsive" /></a>
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
                            <a href="single-item.html"><img src="store/img/photos/3.png" alt="" class="img-responsive" /></a>
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
                            <a href="single-item.html"><img src="store/img/photos/4.png" alt="" class="img-responsive" /></a>
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
                            <a href="single-item.html"><img src="store/img/photos/5.png" alt="" class="img-responsive" /></a>
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
                    <s:iterator value="listProduct" var="product">
                        <div class="col-md-4 col-sm-6">
                            <!-- Each item should be enclosed in "item" class -->
                            <div class="item">
                                <!-- Item image -->
                                <div class="item-image">
                                    <s:url action="product" var="urlTag">
                                        <s:param name="id"><s:property value="#product.id" /></s:param>
                                    </s:url>
                                    <s:a href="%{urlTag}"><img src="store/img/photos/3.png" alt="<s:property value="#product.name"/>" /></s:a>
                                    </div>
                                    <!-- Item details -->
                                    <div class="item-details">
                                        <!-- Name -->
                                        <!-- Use the span tag with the class "ico" and icon link (hot, sale, deal, new) -->
                                        <h5><a href="single-item.html"><s:property value="#product.name" /></a><span class="ico"><img src="store/img/hot.png" alt="" /></span></h5>
                                    <div class="clearfix"></div>
                                    <!-- Para. Note more than 2 lines. -->
                                    <hr />
                                    <!-- Price -->
                                    <div class="item-price pull-left">$<s:property value="getText('{0,number,#,##0}',{#product. price})"/></div>
                                    <!-- Add to cart -->
                                    <s:url action="buy" var="buyTag">
                                        <s:param name="id"><s:property value="#product.id" /></s:param>
                                    </s:url>
                                    <div class="button pull-right"><s:a href="%{buyTag}">Add to Cart</s:a></div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                    </s:iterator>
                    <div class="col-md-9 col-sm-9">
                        <!-- Pagination -->
                        <div class="paging">
                            <span class='current'>1</span>
                            <a href='#'>2</a>
                            <span class="dots">&hellip;</span>
                            <a href='#'>6</a>
                            <a href="#">Next</a>
                        </div>
                    </div>           

                </div>


            </div>                                                                    



        </div>
    </div>
</div>

<%@include file="/template/footer.jsp" %>