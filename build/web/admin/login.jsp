<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <!-- Title and other stuffs -->
        <title>Login - MacAdmin</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">

        <!-- Stylesheets -->
        <link href="style/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="style/font-awesome.css">
        <link href="style/style.css" rel="stylesheet">
        <link href="style/bootstrap-responsive.css" rel="stylesheet">

        <!-- HTML5 Support for IE -->
        <!--[if lt IE 9]>
        <script src="js/html5shim.js"></script>
        <![endif]-->

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/favicon/favicon.png">
    </head>

    <body>

        <!-- Form area -->
        <div class="admin-form">
            <div class="container">

                <div class="row">
                    <div class="col-md-12">
                        <!-- Widget starts -->
                        <div class="widget worange">
                            <!-- Widget head -->
                            <div class="widget-head">
                                <i class="icon-lock"></i> Login 
                            </div>

                            <div class="widget-content">
                                <div class="padd">
                                    <!-- Login form -->
                                    <s:form action="signin" cssClass="form-horizontal" theme="simple">
                                        <!-- Email -->
                                        <div class="form-group">
                                            <label class="control-label col-lg-3" for="inputEmail">Email</label>
                                            <div class="col-lg-9">
                                                <s:textfield name="userBean.username" id="inputEmail" cssClass="form-control"/>
                                            </div>
                                        </div>
                                        <!-- Password -->
                                        <div class="form-group">
                                            <label class="control-label col-lg-3" for="inputPassword">Password</label>
                                            <div class="col-lg-9">
                                                <s:password name="userBean.password" id="inputPassword" cssClass="form-control"/>
                                            </div>
                                        </div>
                                        <!-- Remember me checkbox and sign in button -->
                                        <div class="form-group">
                                            <div class="col-lg-9 col-lg-offset-3">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox"> Remember me
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-9 col-lg-offset-2">
                                            <s:submit cssClass="btn btn-danger"/>
                                            <button type="reset" class="btn btn-default">Reset</button>
                                        </div>
                                        <br />
                                    </s:form>
                                </div>
                            </div>

                            <div class="widget-foot">
                                Not Registred? <a href="#">Register here</a>
                            </div>
                        </div>  
                    </div>
                </div>
            </div> 
        </div>



        <!-- JS -->
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>