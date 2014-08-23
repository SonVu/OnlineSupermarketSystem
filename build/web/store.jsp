<%--<%@include file="template/header.jsp" %>--%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<s:action name="header" executeResult="true">
</s:action>
<!-- Flex Slider starts -->
<div class="container flex-main">
    <div class="row">
        <div class="col-md-12">

            <div class="flex-image flexslider">
                <ul class="slides">
                    <!-- Each slide should be enclosed inside li tag. -->

                    <!-- Slide #1 -->
                    <li>
                        <!-- Image -->
                        <img src="img/photos/slider1.jpg" alt=""/>
                        <!-- Caption -->
                        <div class="flex-caption">
                            <!-- Title -->
                            <h3>Levi's T-Shirt - <span class="color">Just $49</span></h3>
                            <!-- Para -->
                            <p>Ut commodo ullamcorper risus nec mattis. Fusce imperdiet ornare dignissim. Donec aliquet convallis tortor, et placerat quam posuere posuere. Morbi tincidunt posuere turpis eu laoreet. </p>
                            <div class="button">
                                <a href="single-item.html">Buy Now</a>
                            </div>
                        </div>
                    </li>

                    <!-- Slide #2 -->
                    <li>
                        <img src="img/photos/slider2.jpg" alt=""/>
                        <div class="flex-caption">
                            <!-- Title -->
                            <h3>Denim Jeans - <span class="color">Just $149</span></h3>
                            <!-- Para -->
                            <p>Ut commodo ullamcorper risus nec mattis. Fusce imperdiet ornare dignissim. Donec aliquet convallis tortor, et placerat quam posuere posuere. Morbi tincidunt posuere turpis eu laoreet. </p>
                            <div class="button">
                                <a href="single-item.html">Buy Now</a>
                            </div>
                        </div>                  
                    </li>

                    <li>
                        <img src="img/photos/slider3.jpg" alt=""/>
                        <div class="flex-caption">
                            <!-- Title -->
                            <h3>Polo Shirts - <span class="color">Just $79</span></h3>
                            <!-- Para -->
                            <p>Ut commodo ullamcorper risus nec mattis. Fusce imperdiet ornare dignissim. Donec aliquet convallis tortor, et placerat quam posuere posuere. Morbi tincidunt posuere turpis eu laoreet. </p>
                            <div class="button">
                                <a href="single-item.html">Buy Now</a>
                            </div>
                        </div>                  
                    </li>

                    <li>
                        <img src="img/photos/slider4.jpg" alt=""/>
                        <div class="flex-caption">
                            <!-- Title -->
                            <h3>Raymonds Suitings - <span class="color">Just $449</span></h3>
                            <!-- Para -->
                            <p>Ut commodo ullamcorper risus nec mattis. Fusce imperdiet ornare dignissim. Donec aliquet convallis tortor, et placerat quam posuere posuere. Morbi tincidunt posuere turpis eu laoreet. </p>
                            <div class="button">
                                <a href="single-item.html">Buy Now</a>
                            </div>
                        </div>                  
                    </li>

                </ul>
            </div>

        </div>
    </div>
</div>

<!-- Flex slider ends -->

<!-- Promo box starts -->

<div class="promo">
    <div class="container">
        <div class="row">

            <!-- Red color promo box -->
            <div class="col-md-4">
                <!-- rcolor =  Red color -->
                <div class="pbox rcolor">
                    <div class="pcol-left">
                        <!-- Image -->
                        <a href="items.html"><img src="img/photos/promo-1.png" alt="" /></a>
                    </div>
                    <div class="pcol-right">
                        <!-- Title -->
                        <p class="pmed"><a href="items.html">HTC One</a></p>
                        <!-- Para -->
                        <p class="psmall"><a href="items.html">Buy HTC Phones just for $250. Cheap. Dont miss this offer. Keep it checking for more.</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>


            <!-- Blue color promo box -->
            <div class="col-md-4">
                <!-- bcolor =  Blue color -->
                <div class="pbox bcolor">
                    <div class="pcol-left">
                        <a href="items.html"><img src="img/photos/promo-2.png" alt="" /></a>
                    </div>
                    <div class="pcol-right">
                        <p class="pmed"><a href="items.html">Blackberry</a></p>
                        <p class="psmall"><a href="items.html">Buy Blackberry phones just for $250. Dont miss this offer. Keep it checking for more.</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <!-- Green color promo box -->
            <div class="col-md-4">
                <!-- gcolor =  Green Color -->
                <div class="pbox gcolor">
                    <div class="pcol-left">
                        <a href="items.html"><img src="img/photos/promo-3.png" alt="" /></a>
                    </div>
                    <div class="pcol-right">
                        <p class="pmed"><a href="items.html">Nokia Lumia</a></p>
                        <p class="psmall"><a href="items.html">Buy Nokia Lumia Phones just for $200. Dont miss  offer. Keep it checking for more.</a></p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Promo box ends -->

<!-- Items -->

<div class="items">
    <div class="container">
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
            <!--            <div class="paging">
            <c:forEach var="i" begin="1" end="${maxPage}">
                <s:url action="store" var="urlTag">
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
        </div>-->
        </div>
    </div>
</div>
<%@include file="template/footer.jsp" %>