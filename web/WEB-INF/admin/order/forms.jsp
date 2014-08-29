<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<s:action name="header" executeResult="true">
</s:action>
<body>

    <div class="navbar navbar-fixed-top bs-docs-nav" role="banner">

        <div class="conjtainer">
            <!-- Menu button for smallar screens -->
            <div class="navbar-header">
                <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                    <span>Menu</span>
                </button>
                <!-- Site name for smallar screens -->
                <a href="index.html" class="navbar-brand hidden-lg">MacBeth</a>
            </div>

            <!-- Navigation starts -->
            <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         

                <ul class="nav navbar-nav">  

                    <!-- Upload to server link. Class "dropdown-big" creates big dropdown -->
                    <li class="dropdown dropdown-big">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-success"><i class="icon-cloud-upload"></i></span> Upload to Cloud</a>
                        <!-- Dropdown -->
                        <ul class="dropdown-menu">
                            <li>
                                <!-- Progress bar -->
                                <p>Photo Upload in Progress</p>
                                <!-- Bootstrap progress bar -->
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info"  role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                        <span class="sr-only">40% Complete</span>
                                    </div>
                                </div>

                                <hr />

                                <!-- Progress bar -->
                                <p>Video Upload in Progress</p>
                                <!-- Bootstrap progress bar -->
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success"  role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        <span class="sr-only">80% Complete</span>
                                    </div>
                                </div> 

                                <hr />             

                                <!-- Dropdown menu footer -->
                                <div class="drop-foot">
                                    <a href="#">View All</a>
                                </div>

                            </li>
                        </ul>
                    </li>

                    <!-- Sync to server link -->
                    <li class="dropdown dropdown-big">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="label label-danger"><i class="icon-refresh"></i></span> Sync with Server</a>
                        <!-- Dropdown -->
                        <ul class="dropdown-menu">
                            <li>
                                <!-- Using "icon-spin" class to rotate icon. -->
                                <p><span class="label label-info"><i class="icon-cloud"></i></span> Syncing Members Lists to Server</p>
                                <hr />
                                <p><span class="label label-warning"><i class="icon-cloud"></i></span> Syncing Bookmarks Lists to Cloud</p>

                                <hr />

                                <!-- Dropdown menu footer -->
                                <div class="drop-foot">
                                    <a href="#">View All</a>
                                </div>

                            </li>
                        </ul>
                    </li>

                </ul>

                <!-- Search form -->
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                </form>
                <!-- Links -->
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown pull-right">            
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-user"></i> Admin <b class="caret"></b>              
                        </a>

                        <!-- Dropdown menu -->
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="icon-user"></i> Profile</a></li>
                            <li><a href="#"><i class="icon-cogs"></i> Settings</a></li>
                            <li><a href="login.html"><i class="icon-off"></i> Logout</a></li>
                        </ul>
                    </li>

                </ul>
            </nav>

        </div>
    </div>

    <!-- Header starts -->
    <header>

    </header>

    <!-- Header ends -->

    <!-- Main content starts -->

    <div class="content">

        <!-- Sidebar -->
        <div class="sidebar">
            <div class="sidebar-dropdown"><a href="#">Navigation</a></div>

            <!--- Sidebar navigation -->
            <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
            <ul id="nav">
                <!-- Main menu with font awesome icon -->
                <li><a href="index.html"><i class="icon-home"></i> Dashboard</a>
                    <!-- Sub menu markup 
                    <ul>
                      <li><a href="#">Submenu #1</a></li>
                      <li><a href="#">Submenu #2</a></li>
                      <li><a href="#">Submenu #3</a></li>
                    </ul>-->
                </li>
                <li class="has_sub"><a href="#"><i class="icon-list-alt"></i> Widgets  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
                    <ul>
                        <li><a href="widgets1.html">Widgets #1</a></li>
                        <li><a href="widgets2.html">Widgets #2</a></li>
                        <li><a href="widgets3.html">Widgets #3</a></li>
                    </ul>
                </li>  
                <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> Pages #1  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
                    <ul>
                        <li><a href="post.html">Post</a></li>
                        <li><a href="login.html">Login</a></li>
                        <li><a href="register.html">Register</a></li>
                        <li><a href="support.html">Support</a></li>
                        <li><a href="invoice.html">Invoice</a></li>
                        <li><a href="profile.html">Profile</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                    </ul>
                </li> 
                <li class="has_sub"><a href="#"><i class="icon-file-alt"></i> Pages #2  <span class="pull-right"><i class="icon-chevron-right"></i></span></a>
                    <ul>
                        <li><a href="media.html">Media</a></li>
                        <li><a href="statement.html">Statement</a></li>
                        <li><a href="error.html">Error</a></li>
                        <li><a href="error-log.html">Error Log</a></li>
                        <li><a href="calendar.html">Calendar</a></li>
                        <li><a href="grid.html">Grid</a></li>
                    </ul>
                </li>                             
                <li><a href="charts.html"><i class="icon-bar-chart"></i> Charts</a></li> 
                <li><a href="tables.html"><i class="icon-table"></i> Tables</a></li>
                <li><a href="forms.html"  class="open"><i class="icon-tasks"></i> Forms</a></li>
                <li><a href="ui.html"><i class="icon-magic"></i> User Interface</a></li>
                <li><a href="calendar.html"><i class="icon-calendar"></i> Calendar</a></li>
            </ul>
        </div>

        <!-- Sidebar ends -->

        <!-- Main bar -->
        <div class="mainbar">

            <!-- Page heading -->
            <div class="page-head">
                <!-- Page heading -->
                <h2 class="pull-left">Category 
                </h2>
                <!-- Breadcrumb -->
                <div class="bread-crumb pull-right">
                    <a href="index.html"><i class="icon-home"></i> Home</a> 
                    <!-- Divider -->
                    <span class="divider">/</span> 
                    <a href="#" class="bread-current">Forms</a>
                </div>

                <div class="clearfix"></div>

            </div>
            <!-- Page heading ends -->
            <!-- Matter -->
            <div class="matter">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="widget wgreen">
                                <div class="widget-content">
                                    <div class="padd">
                                        <!-- Form starts.  -->
                                        <s:form action="updateCategory" cssClass="form-horizontal" theme="simple">
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-2 control-label">Name</label>
                                                <div class="col-sm-10">
                                                    <s:textfield name="category.name" cssClass="form-control"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-2 control-label">Description</label>
                                                <div class="col-sm-10">
                                                    <s:textarea name="category.description" cssClass="form-control" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-2 control-label">Parent</label>
                                                <div class="col-sm-10">
                                                    <s:select headerKey="0" headerValue="--None--"
                                                              list="listCategory" 
                                                              name="category.parent_id" cssClass="form-control" listKey="id" listValue="name"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword3" class="col-sm-2 control-label">Status</label>
                                                <div class="col-sm-10">
                                                </div>
                                            </div>
                                            <hr />
                                            <div class="form-group">
                                                <div class="col-lg-offset-1 col-lg-9">
                                                    <s:submit cssClass="btn btn-primary"/>
                                                    <s:a action="index" cssClass="btn btn-default">Discard</s:a>
                                                    </div>
                                                </div>
                                        </s:form>
                                    </div>
                                </div>
                                <div class="widget-foot">
                                    <!-- Footer goes here -->
                                </div>
                            </div>  

                        </div>

                    </div>

                </div>
            </div>

            <!-- Matter ends -->

        </div>

        <!-- Mainbar ends -->	    	
        <div class="clearfix"></div>

    </div>
    <!-- Content ends -->

    <!-- Footer starts -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <!-- Copyright info -->
                    <p class="copy">Copyright &copy; 2012 | <a href="#">Your Site</a> </p>
                </div>
            </div>
        </div>
    </footer> 	

    <!-- Footer ends -->

    <!-- Scroll to top -->
    <span class="totop"><a href="#"><i class="icon-chevron-up"></i></a></span> 

    <!-- JS -->
    <script src="js/jquery.js"></script> <!-- jQuery -->
    <script src="js/bootstrap.js"></script> <!-- Bootstrap -->
    <script src="js/jquery-ui-1.9.2.custom.min.js"></script> <!-- jQuery UI -->
    <script src="js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
    <script src="js/jquery.rateit.min.js"></script> <!-- RateIt - Star rating -->
    <script src="js/jquery.prettyPhoto.js"></script> <!-- prettyPhoto -->

    <!-- jQuery Flot -->
    <script src="js/excanvas.min.js"></script>
    <script src="js/jquery.flot.js"></script>
    <script src="js/jquery.flot.resize.js"></script>
    <script src="js/jquery.flot.pie.js"></script>
    <script src="js/jquery.flot.stack.js"></script>

    <!-- jQuery Notification - Noty -->
    <script src="js/jquery.noty.js"></script> <!-- jQuery Notify -->
    <script src="js/themes/default.js"></script> <!-- jQuery Notify -->
    <script src="js/layouts/bottom.js"></script> <!-- jQuery Notify -->
    <script src="js/layouts/topRight.js"></script> <!-- jQuery Notify -->
    <script src="js/layouts/top.js"></script> <!-- jQuery Notify -->
    <!-- jQuery Notification ends -->

    <script src="js/sparklines.js"></script> <!-- Sparklines -->
    <script src="js/jquery.cleditor.min.js"></script> <!-- CLEditor -->
    <script src="js/bootstrap-datetimepicker.min.js"></script> <!-- Date picker -->
    <script src="js/jquery.uniform.min.js"></script> <!-- jQuery Uniform -->
    <script src="js/bootstrap-switch.min.js"></script> <!-- Bootstrap Toggle -->
    <script src="js/filter.js"></script> <!-- Filter for support page -->
    <script src="js/custom.js"></script> <!-- Custom codes -->
    <script src="js/charts.js"></script> <!-- Charts & Graphs -->

</body>
</html>