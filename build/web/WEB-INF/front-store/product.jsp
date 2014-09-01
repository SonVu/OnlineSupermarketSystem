<%@ taglib prefix="s" uri="/struts-tags"%>
<s:action name="header" executeResult="true">
</s:action>
<!-- Items -->

<div class="items">
    <div class="container">
        <div class="row">

            <!-- Sidebar -->
            <div class="col-md-4 col-sm-4 hidden-xs">

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
                            <a href="single-item.html"><img src="store/img/photos/2.png" alt="" /></a>
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
                            <a href="single-item.html"><img src="store/img/photos/3.png" alt="" /></a>
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
                            <a href="single-item.html"><img src="store/img/photos/4.png" alt="" /></a>
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
                            <a href="single-item.html"><img src="store/img/photos/5.png" alt="" /></a>
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

            <div class="col-md-8 col-sm-8">

                <!-- Breadcrumbs -->
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
                    <li><a href="items.html">Smartphone</a> <span class="divider">/</span></li>
                    <li class="active">Apple</li>
                </ul>

                <!-- Product details -->

                <div class="product-main">
                    <div class="row">
                        <div class="col-md-6 col-sm-6">

                            <!-- Image. Flex slider -->
                            <div class="product-slider">
                                <div class="product-image-slider flexslider">
                                    <ul class="slides">
                                        <!-- Each slide should be enclosed inside li tag. -->

                                        <!-- Slide #1 -->
                                        <s:iterator value="product.productImage" var="image">
                                            <li>
                                                <!-- Image -->
                                                <img src="${image.url}" alt=""/>
                                            </li>
                                        </s:iterator>
                                    </ul>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6 col-sm-6">
                            <!-- Title -->
                            <h4 class="title"><s:property value="product.name" /></h4>
                            <h5>$<s:property value="getText('{0,number,#,##0}',{product.price})"/></h5>
                            <p>Shipping : Free</p>
                            <p><s:property value="product.brand" /></p>
                            <p>Modal : 5G</p>
                            <p>Availability : In Stock</p>
                            <!-- Dropdown menu -->
                            <div class="form-group">                               
                                <select class="form-control">
                                    <option>Color</option>
                                    <option>Black</option>
                                    <option>White</option>
                                    <option>Grey</option>
                                </select>  
                            </div>

                            <!-- Quantity and add to cart button -->

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control input-sm" value="2">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-sm" type="button">Add to Cart</button>
                                        </span>								  
                                    </div>
                                </div>
                            </div>

                            <!-- Add to wish list -->
                            <a href="wish-list.html">+ Add to Wish List</a>


                        </div>
                    </div>
                </div>

                <br />

                <!-- Description, specs and review -->

                <ul class="nav nav-tabs">
                    <!-- Use uniqe name for "href" in below anchor tags -->
                    <li class="active"><a href="#tab1" data-toggle="tab">Description</a></li>
                    <li><a href="#tab2" data-toggle="tab">Specs</a></li>
                    <li><a href="#tab3" data-toggle="tab">Review (5)</a></li>
                </ul>

                <!-- Tab Content -->
                <div class="tab-content">
                    <!-- Description -->
                    <div class="tab-pane active" id="tab1">
                        <h5><s:property value="product.name" /></h5>
                        <p><s:property value="product.description" /></p>
                        <h6>Features</h6>
                    </div>

                    <!-- Sepcs -->
                    <div class="tab-pane" id="tab2">

                        <h5 class="title">Product Specs</h5>
                        <table class="table table-striped tcart">
                            <tbody>
                                <tr>
                                    <td><strong>Name</strong></td>
                                    <td>Apple iPhone 5G</td>
                                </tr>
                                <tr>
                                    <td><strong>Brand</strong></td>
                                    <td>Apple</td>
                                </tr>
                                <tr>
                                    <td><strong>Modal</strong></td>
                                    <td>Fifth Generation</td>
                                </tr>
                                <tr>
                                    <td><strong>Memory</strong></td>
                                    <td>2GB RAM</td>
                                </tr>
                                <tr>
                                    <td><strong>Storage</strong></td>
                                    <td>16GB, 32GB, 64GB</td>
                                </tr>
                                <tr>
                                    <td><strong>Camera</strong></td>
                                    <td>Front VGA, Read 8MP</td>
                                </tr>
                                <tr>
                                    <td><strong>Processor</strong></td>
                                    <td>Apple 1.25GHz Processor</td>
                                </tr>
                                <tr>
                                    <td><strong>Battery</strong></td>
                                    <td>30 Hours Standby</td>
                                </tr>                                                                                                
                            </tbody>
                        </table>

                    </div>

                    <!-- Review -->
                    <div class="tab-pane" id="tab3">
                        <h5>Product Reviews</h5>
                        <div class="item-review">
                            <h5>Ravi Kumar - <span class="color">4/5</span></h5>
                            <p class="rmeta">27/1/2012</p>
                            <p>Suspendisse potenti. Morbi ac felis nec mauris imperdiet fermentum. Aenean sodales augue ac lacus hendrerit sed rhoncus erat hendrerit. Vivamus vel ultricies elit. Curabitur lacinia nulla vel tellus elementum non mollis justo aliquam.</p>
                        </div>

                        <hr />
                        <h5 class="title">Write a Review</h5>

                        <div class="form form-small">

                            <!-- Review form (not working)-->
                            <form class="form-horizontal">                                         
                                <!-- Name -->
                                <div class="form-group">
                                    <label class="control-label col-md-3" for="name2">Your Name</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" id="name2">
                                    </div>
                                </div>
                                <!-- Select box -->
                                <div class="form-group">
                                    <label class="control-label col-md-3">Rating</label>
                                    <div class="col-md-6">                               
                                        <select class="form-control">
                                            <option>&nbsp;</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>  
                                    </div>
                                </div>

                                <!-- Review -->
                                <div class="form-group">
                                    <label class="control-label col-md-3" for="name">Your Review</label>
                                    <div class="col-md-6">
                                        <textarea class="form-control"></textarea>
                                    </div>
                                </div>
                                <!-- Buttons -->
                                <div class="form-group">
                                    <!-- Buttons -->
                                    <div class="col-md-6 col-md-offset-3">
                                        <button type="submit" class="btn btn-default">Post</button>
                                        <button type="reset" class="btn btn-default">Reset</button>
                                    </div>
                                </div>
                            </form>
                        </div> 

                    </div>

                </div>

            </div>                                                                    
        </div>
    </div>
</div>
<%@include file="/template/footer.jsp" %>