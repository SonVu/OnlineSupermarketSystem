<%@ taglib prefix="s" uri="/struts-tags"%>
<s:action name="header" executeResult="true">
</s:action>
<!-- Items -->

<div class="items">
    <div class="container">
        <div class="row">
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