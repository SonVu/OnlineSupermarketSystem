<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<s:action name="header" executeResult="true"></s:action>
    <!-- Main content starts -->
    <br />
    <div class="content">
        <!-- Sidebar -->
    <s:action name="sidebar" executeResult="true"></s:action>
        <!-- Sidebar ends -->
        <!-- Main bar -->
        <div class="mainbar">
            <!-- Page heading -->
            <div class="page-head">
                <h2 class="pull-left"><i class="icon-home"></i> Dashboard</h2>
                <div class="clearfix"></div>
            </div>
            <!-- Page heading ends -->
            <!-- Matter -->
            <div class="matter">
                <div class="container">
                    <!-- Dashboard Graph starts -->
                    <div class="row">
                        <div class="col-md-8">
                            <!-- Widget -->
                            <div class="widget">
                                <!-- Widget head -->
                                <div class="widget-head">
                                    <div class="pull-left">Dashboard</div>
                                    <div class="widget-icons pull-right">
                                        <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                                        <a href="#" class="wclose"><i class="icon-remove"></i></a>
                                    </div>  
                                    <div class="clearfix"></div>
                                </div>              
                                <!-- Widget content -->
                                <div class="widget-content">
                                    <div class="padd">
                                        <!-- Curve chart (Blue color). jQuery Flot plugin used. -->
                                        <div id="curve-chart"></div>
                                        <hr />
                                        <!-- Hover location -->
                                        <div id="hoverdata">Mouse hovers at
                                            (<span id="x">0</span>, <span id="y">0</span>). <span id="clickdata"></span></div>          
                                        <!-- Skil this line. <div class="uni"><input id="enableTooltip" type="checkbox">Enable tooltip</div> -->
                                    </div>
                                </div>
                                <!-- Widget ends -->
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="widget">
                                <div class="widget-head">
                                    <div class="pull-left">Today Status</div>
                                    <div class="widget-icons pull-right">
                                        <a href="#" class="wminimize"><i class="icon-chevron-up"></i></a> 
                                        <a href="#" class="wclose"><i class="icon-remove"></i></a>
                                    </div>  
                                    <div class="clearfix"></div>
                                </div>             
                                <div class="widget-content">
                                    <div class="padd">
                                        <!-- Visitors, pageview, bounce rate, etc., Sparklines plugin used -->
                                        <ul class="current-status">
                                            <li>
                                                <span id="status1"></span> <span class="bold">Visits : 2000</span>
                                            </li>
                                            <li>
                                                <span id="status2"></span> <span class="bold">Unique Visitors : 1,345</span>
                                            </li>
                                            <li>
                                                <span id="status3"></span> <span class="bold">Pageviews : 2000</span>
                                            </li>
                                            <li>
                                                <span id="status4"></span> <span class="bold">Pages / Visit : 2000</span>
                                            </li>
                                            <li>
                                                <span id="status5"></span> <span class="bold">Avg. Visit Duration : 2000</span>
                                            </li>
                                            <li>
                                                <span id="status6"></span> <span class="bold">Bounce Rate : 2000</span>
                                            </li>   
                                            <li>
                                                <span id="status7"></span> <span class="bold">% New Visits : 2000</span>
                                            </li>                                                                                                            
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Dashboard graph ends -->
                </div>
            </div>
            <!-- Matter ends -->
        </div>
        <!-- Mainbar ends -->
        <div class="clearfix"></div>
    </div>
    <!-- Content ends -->
<%@include file="/template/admin_footer.jsp" %>