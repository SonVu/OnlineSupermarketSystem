<%@ taglib prefix="s" uri="/struts-tags"%>
<s:action name="header" executeResult="true">
</s:action>
<!-- Cart starts -->

<div class="cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <!-- Title with number of items in shopping kart -->
                <h3 class="title"><i class="icon-shopping-cart"></i> Items in your cart [<span class="color"><s:property value="#session.cart.size" /></span>]</h3>
                <br />

                <!-- Table -->
                <table class="table table-striped tcart">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Quantity</th>
                            <th>Unit Price</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="products" var="product">
                            <tr>
                                <!-- Index -->
                                <td>1</td>
                                <!-- Product  name -->
                                <td><a href="single-item.html"><s:property value="key.name"/></a></td>
                                <!-- Product image -->
                                <td><a href="single-item.html"><img src="store/img/photos/2.png" alt="" /></a></td>
                                <!-- Quantity with refresh and remove button -->
                                <td class="item-input">
                                    <div class="input-group">
                                        <input class="form-control" type="text" value="<s:property value="value"/>">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button"><i class="icon-refresh"></i></button>
                                            <button class="btn btn-danger" type="button"><i class="icon-remove"></i></button>     
                                        </span>
                                    </div>
                                </td>
                                <!-- Unit price -->
                                <td>$150</td>
                                <!-- Total cost -->
                                <td>$300</td>
                            </tr>
                        </s:iterator>
                        <tr>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th>Total</th>
                            <th><s:property value="total"/></th>
                        </tr>
                    </tbody>
                </table>


                <form class="form-inline">
                    <!-- Discount Coupen -->
                    <h5 class="title">Discount Coupen</h5>
                    <div class="form-group">
                        <input type="email" class="form-control" id="" placeholder="Discount Coupon">
                    </div>

                    <button type="submit" class="btn btn-default">Apply</button>
                    <br />
                    <br />
                    <!-- Gift coupen -->
                    <h5 class="title">Gift Coupen</h5>
                    <div class="form-group">
                        <input type="email" class="form-control" id="" placeholder="Gift Coupon">
                    </div>

                    <button type="submit" class="btn btn-default">Apply</button>           
                </form>  

                <!-- Button s-->
                <div class="row">
                    <div class="col-md-4 col-md-offset-8">
                        <div class="pull-right">
                            <a href="index.jsp" class="btn btn-default">Continue Shopping</a>
                            <a href="checkout.html" class="btn btn-danger">CheckOut</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Cart ends -->
<%@include file="/template/footer.jsp" %>