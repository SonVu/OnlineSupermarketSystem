<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <!-- Title and other stuffs -->
        <title>Items - MacKart</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
        <!-- Stylesheets -->
        <link href="store/style/bootstrap.css" rel="stylesheet">
        <!-- Pretty Photo -->
        <link href="store/style/prettyPhoto.css" rel="stylesheet">
        <!-- Sidebar nav -->
        <link href="store/style/sidebar-nav.css" rel="stylesheet">
        <!-- Flex slider -->
        <link href="store/style/flexslider.css" rel="stylesheet">
        <!-- Font awesome icon -->
        <link rel="stylesheet" href="store/style/font-awesome.css"> 
        <!-- Main stylesheet -->
        <link href="store/style/style.css" rel="stylesheet">
        <!-- Stylesheet for Color -->
        <link href="store/style/red.css" rel="stylesheet">
        <!-- HTML5 Support for IE -->
        <!--[if lt IE 9]>
        <script src="js/html5shim.js"></script>
        <![endif]-->
        <!-- Favicon -->
        <link rel="shortcut icon" href="store/img/favicon/favicon.png">
    </head>
    <body>
        <!-- Header starts -->
        <header>
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <!-- Logo. Use class "color" to add color to the text. -->
                        <div class="logo">
                            <h1><a href="store/#">Mac<span class="color bold">Kart</span></a></h1>
                            <p class="meta">online shopping is fun!!!</p>
                        </div>
                    </div>
                    <div class="col-md-5 col-md-offset-3">
                        <!-- Search form -->
                        <s:form action="search" cssClass="form-inline" theme="simple">
                            <div class="form-group">
                                <s:textfield name="searchString" label="" cssClass="form-control" id="search"/>
                            </div>
                            <s:submit label="Search" cssClass="btn btn-default btn-small"/>
                        </s:form>
                        <div class="hlinks">
                            <span>
                                <!-- item details with price -->
                                <a href="store/#cart" role="button" data-toggle="modal">3 Item(s) in your <i class="icon-shopping-cart"></i></a> -<span class="bold">$25</span>
                            </span>
                            <!-- Login and Register link -->
                            <span class="lr"><a href="store/#login" role="button" data-toggle="modal">Login</a> or <a href="store/#register" role="button" data-toggle="modal">Register</a></span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header ends -->
        <!-- Cart, Login and Register form (Modal) -->
        <!-- Cart Modal starts -->
        <div id="cart" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã</button>
                        <h4>Shopping Cart</h4>
                    </div>
                    <div class="modal-body">
                        <table class="table table-striped tcart">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Quantity</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><a href="store/single-item.html">HTC One</a></td>
                                    <td>2</td>
                                    <td>$250</td>
                                </tr>
                                <tr>
                                    <td><a href="store/single-item.html">Apple iPhone</a></td>
                                    <td>1</td>
                                    <td>$502</td>
                                </tr>
                                <tr>
                                    <td><a href="store/single-item.html">Galaxy Note</a></td>
                                    <td>4</td>
                                    <td>$1303</td>
                                </tr>
                                <tr>
                                    <th></th>
                                    <th>Total</th>
                                    <th>$2405</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <s:a href="store/%{urlTag}" cssClass="btn">Continue Shopping</s:a>
                            <a href="store/checkout.html" class="btn btn-danger">Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Cart modal ends -->
            <!-- Login Modal starts -->
            <div id="login" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã</button>
                            <h4>Login</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-3" for="username">Username</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" id="username">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3" for="email">Password</label>
                                        <div class="col-md-9">
                                            <input type="password" class="form-control" id="password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-9 col-md-offset-3">
                                            <div class="checkbox inline">
                                                <label>
                                                    <input type="checkbox" id="inlineCheckbox1" value="agree"> Remember Password
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-9 col-md-offset-3">
                                            <button type="submit" class="btn btn-default">Login</button>
                                            <button type="reset" class="btn btn-default">Reset</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <p>Dont have account? <a href="store/register.html">Register</a> here.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Login modal ends -->
            <!-- Register Modal starts -->
            <div id="register" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã</button>
                            <h4>Register</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-3" for="name">Name</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" id="name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3" for="email">Email</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" id="email">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Drop Down</label>
                                        <div class="col-md-9">
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
                                    <div class="form-group">
                                        <label class="control-label col-md-3" for="username1">Username</label>
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" id="username1">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3" for="password1">Password</label>
                                        <div class="col-md-9">
                                            <input type="password" class="form-control" id="password1">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-9 col-md-offset-3">
                                            <div class="checkbox inline">
                                                <label>
                                                    <input type="checkbox" id="inlineCheckbox2" value="agree"> Agree with Terms and Conditions
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-9 col-md-offset-3">
                                            <button type="submit" class="btn btn-default">Register</button>
                                            <button type="reset" class="btn btn-default">Reset</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <p>Already have account? <a href="store/login.html">Login</a> here.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Register modal ends -->
            <!-- Navigation -->
            <div class="navbar bs-docs-nav" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
                        <ul class="nav navbar-nav">
                        <s:url action="store" var="urlTag">
                        </s:url>
                        <li><s:a href="store/%{urlTag}"><i class="icon-home"></i></s:a></li>
                            <s:iterator value="listCategory" var="parent">
                                <s:if test="%{parent_id == 0}">
                                <li class="dropdown">
                                    <a href="store/#" class="dropdown-toggle" data-toggle="dropdown"><s:property value="#parent.name" /><b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <s:iterator var="child" value="listCategory">
                                            <s:if test="#child.parent_id == #parent.id">
                                                <s:url action="category" var="urlTag">
                                                    <s:param name="id"><s:property value="#child.id" /></s:param>
                                                </s:url>
                                                <li><s:a href="store/%{urlTag}"><s:property value="#child.name" /></s:a></li>
                                                </s:if>
                                            </s:iterator>
                                    </ul>
                                </li>
                            </s:if>
                        </s:iterator>
                    </ul>
                </nav>
            </div>
        </div>
