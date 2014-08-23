<%@ taglib prefix="s" uri="/struts-tags"%>
<s:action name="header" executeResult="true">
</s:action>
<!-- Page content starts -->

<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <!-- Some content -->
                <h3 class="title">Register Today <span class="color">!!!</span></h3>
                <h4 >Morbi tincidunt posuere turpis eu laoreet</h4>
                <p>Nullam in est urna. In vitae adipiscing enim. Curabitur rhoncus condimentum lorem, non convallis dolor faucibus eget. In vitae adipiscing enim. Curabitur rhoncus condimentum lorem, non convallis dolor faucibus eget. In ut nulla est. </p>
                <h5>Maecenas hendrerit neque id</h5>
                <div class="lists">
                    <ul>
                        <li>Etiam adipiscing posuere justo, nec iaculis justo dictum non</li>
                        <li>Cras tincidunt mi non arcu hendrerit eleifend</li>
                        <li>Aenean ullamcorper justo tincidunt justo aliquet et lobortis diam faucibus</li>
                        <li>Maecenas hendrerit neque id ante dictum mattis</li>
                        <li>Vivamus non neque lacus, et cursus tortor</li>
                    </ul>
                </div>
                <p>Nullam in est urna. In vitae adipiscing enim. In ut nulla est. Nullam in est urna. In vitae adipiscing enim. Curabitur rhoncus condimentum lorem, non convallis dolor faucibus eget. In ut nulla est. </p>

            </div>

            <div class="col-md-6">
                <div class="formy well">
                    <h4 class="title">Register for New Account</h4>
                    <div class="form">
                        <!-- Register form (not working)-->
                        <form class="form-horizontal">
                            <!-- Name -->
                            <div class="form-group">
                                <label class="control-label col-md-3" for="name1">Name</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" id="name1">
                                </div>
                            </div>   
                            <!-- Email -->
                            <div class="form-group">
                                <label class="control-label col-md-3" for="email1">Email</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" id="email1">
                                </div>
                            </div>
                            <!-- Select box -->
                            <div class="form-group">
                                <label class="control-label col-md-3">Drop Down</label>
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
                            <!-- Username -->
                            <div class="form-group">
                                <label class="control-label col-md-3" for="username2">Username</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" id="username2">
                                </div>
                            </div>
                            <!-- Password -->
                            <div class="form-group">
                                <label class="control-label col-md-3" for="password2">Password</label>
                                <div class="col-md-6">
                                    <input type="password" class="form-control" id="password2">
                                </div>
                            </div>
                            <!-- Checkbox -->
                            <div class="form-group">
                                <div class="col-md-9 col-md-offset-3">
                                    <label class="checkbox-inline">
                                        <input type="checkbox" id="inlineCheckbox3" value="agree"> Agree with Terms and Conditions
                                    </label>
                                </div>
                            </div> 

                            <!-- Buttons -->
                            <div class="form-actions">
                                <!-- Buttons -->
                                <div class="col-md-9 col-md-offset-3">
                                    <button type="submit" class="btn btn-default">Register</button>
                                    <button type="reset" class="btn btn-default">Reset</button>
                                </div>
                            </div>
                        </form>
                        <div class="clearfix"></div>
                        <hr />
                        <p>Already have an Account? <a href="login.html">Login</a></p>
                    </div> 
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Page content ends -->
<%@include file="/template/footer.jsp" %>