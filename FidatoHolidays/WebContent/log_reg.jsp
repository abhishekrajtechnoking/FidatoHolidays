<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE HTML>
<html class="full">


<!-- Mirrored from remtsoy.com/tf_templates/traveler/demo_v1_7/login-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Apr 2019 14:24:37 GMT -->
<head>
    <title>Traveler - Login register</title>


   <%@include file="include/head_css.jsp" %>
</head>

<body class="full">

	<!-- <script type="text/javascript" src="auth/login_valid.js"></script> -->

   <!-- FACEBOOK WIDGET -->
     <!-- <div id="fb-root"></div>
    <script type="text/javascript" src="login_valid.js">
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "http://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script> -->
    
 
    
    <!-- /FACEBOOK WIDGET -->
    <div class="global-wrap">
        <div class="demo_changer" id="demo_changer">
            <div class="demo-icon fa fa-sliders"></div>
            <div class="form_holder">
                <div class="line"></div>
                <p>Color Scheme</p>
                <div class="predefined_styles" id="styleswitch_area">
                    <a class="styleswitch" href="login-registerc392.html?default=true" style="background:#ED8323;"></a>
                    <a class="styleswitch" href="#" data-src="bright-turquoise" style="background:#0EBCF2;"></a>
                    <a class="styleswitch" href="#" data-src="turkish-rose" style="background:#B66672;"></a>
                    <a class="styleswitch" href="#" data-src="salem" style="background:#12A641;"></a>
                    <a class="styleswitch" href="#" data-src="hippie-blue" style="background:#4F96B6;"></a>
                    <a class="styleswitch" href="#" data-src="mandy" style="background:#E45E66;"></a>
                    <a class="styleswitch" href="#" data-src="green-smoke" style="background:#96AA66;"></a>
                    <a class="styleswitch" href="#" data-src="horizon" style="background:#5B84AA;"></a>
                    <a class="styleswitch" href="#" data-src="cerise" style="background:#CA2AC6;"></a>
                    <a class="styleswitch" href="#" data-src="brick-red" style="background:#cf315a;"></a>
                    <a class="styleswitch" href="#" data-src="de-york" style="background:#74C683;"></a>
                    <a class="styleswitch" href="#" data-src="shamrock" style="background:#30BBB1;"></a>
                    <a class="styleswitch" href="#" data-src="studio" style="background:#7646B8;"></a>
                    <a class="styleswitch" href="#" data-src="leather" style="background:#966650;"></a>
                    <a class="styleswitch" href="#" data-src="denim" style="background:#1A5AE4;"></a>
                    <a class="styleswitch" href="#" data-src="scarlet" style="background:#FF1D13;"></a>
                </div>
                <div class="line"></div>
                <p>Layout</p>
                <div class="predefined_styles"><a class="btn btn-sm" href="#" id="btn-wide">Wide</a><a class="btn btn-sm" href="#" id="btn-boxed">Boxed</a>
                </div>
                <div class="line"></div>
                <p>Background Patterns</p>
                <div class="predefined_styles" id="patternswitch_area">
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/binding_light.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/binding_dark.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/dark_fish_skin.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/dimension.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/escheresque_ste.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/food.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/giftly.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/grey_wash_wall.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/ps_neutral.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/pw_maze_black.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/pw_pattern.png);"></a>
                    <a class="patternswitch" href="#" style="background-image: url(img/patterns/simple_dashed.png);"></a>
                </div>
                <div class="line"></div>
                <p>Background Images</p>
                <div class="predefined_styles" id="bgimageswitch_area">
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/bike.jpg);" data-src="img/backgrounds/bike.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/flowers.jpg);" data-src="img/backgrounds/flowers.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/wood.jpg);" data-src="img/backgrounds/wood.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/taxi.jpg);" data-src="img/backgrounds/taxi.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/phone.jpg);" data-src="img/backgrounds/phone.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/road.jpg);" data-src="img/backgrounds/road.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/keyboard.jpg);" data-src="img/backgrounds/keyboard.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/beach.jpg);" data-src="img/backgrounds/beach.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/street.jpg);" data-src="img/backgrounds/street.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/nature.jpg);" data-src="img/backgrounds/nature.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/bridge.jpg);" data-src="img/backgrounds/bridge.jpg"></a>
                    <a class="bgimageswitch" href="#" style="background-image: url(img/switcher/cameras.jpg);" data-src="img/backgrounds/cameras.jpg"></a>
                </div>
                <div class="line"></div>
            </div>
        </div>
        <div class="full-page">
            <div class="bg-holder full">
                <div class="bg-mask"></div>
                <div class="bg-img" style="background-image:url(img/people_on_the_beach_1280x852.jpg);"></div>
                <div class="bg-holder-content full text-white">
                    <a class="logo-holder" href="index.sp">
                        <img src="img/logo-white.png" alt="Image Alternative text" title="Image Title" />
                    </a>
                    <div class="full-center">
                        <div class="container">
                            <div class="row row-wrap" data-gutter="60">
                                <div class="col-md-4">
                                    <div class="visible-lg">
                                        <h3 class="mb15">Welcome to Traveler</h3>
                                        <p>Est nisl facilisis consectetur eget fermentum rutrum suscipit penatibus ultrices eu bibendum mi volutpat mattis cum facilisis nunc platea tincidunt vehicula laoreet montes parturient urna magnis eu etiam eget integer</p>
                                        <p>Nullam consectetur fames erat scelerisque ac conubia orci mauris facilisi</p>
                                    </div>
                                </div>
                                
                                <%String mob=(String)session.getAttribute("mobSes"); %>
                                
                                <div class="col-md-4">
                                    <h3 class="mb15">Login</h3>
                                    <form action="auth/login.jsp"  method="post">
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-user input-icon input-icon-show"></i>
                                            <label>Mobile Number or EmailAddress</label>
                                            <input class="form-control" placeholder="e.g. john@gmail.com or Mobile" type="text" name="mobemail" id="mblNo" value="<%=mob%>"/>
                                        </div>
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-lock input-icon input-icon-show"></i>
                                            <label>Password</label>
                                            <input class="form-control" type="password" placeholder="my secret password" name="pwdLog" id="pwd"/>
                                        </div>
                                        <label style="color: red;visibility: hidden" id="mobpwd">Invalid username or password</label></td>
                                     <input class="btn btn-primary" type="submit" value="Sign in"/>
                                        <!--  <button style="background-color:#0073e6" onclick="mblPwdValid()">SignIn</button> -->
                                        <button style="background-color:#0073e6"><a href="mobileNo.jsp">New Registeration</button></a>
                                       
                                    </form>
                                </div>
                                <div id="mobpwdvalid">
		</div>
                                <%-- <div class="col-md-4">
                                    <h3 class="mb15">New To Traveler?</h3>
                                    
                                    <form action="auth/register.jsp" method="post">
					                                    
					                 <%
									String mob=request.getParameter("mbl");
									System.out.println("usrReg.... "+mob);
									%>		
                                    
                                     <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-user input-icon input-icon-show"></i>
                                            <label>Title</label>
                                            <select name="title">
					
												<option>Mr</option>
												<option>Mrs</option>
												<option>Miss</option>
											</select>
							                        </div>
                                    	
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-user input-icon input-icon-show"></i>
                                            <label>First Name</label>
                                            <input class="form-control" placeholder="e.g. John " type="text" name="fname"/>
                                        </div>
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-user input-icon input-icon-show"></i>
                                            <label>Last Name</label>
                                            <input class="form-control" placeholder="e.g. Doe" type="text" name="lname"/>
                                        </div>
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-user input-icon input-icon-show"></i>
                                            <label>Age</label>
                                            <input class="form-control" placeholder="e.g.22" type="text" name="age"/>
                                        </div>
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-envelope input-icon input-icon-show"></i>
                                            <label>Gender</label>
                                            <input class="form-control" placeholder="e.g. male" type="text" name="gender"/>
                                        </div>
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-user input-icon input-icon-show"></i>
                                            <label>Mobile Number</label>
                                            <input class="form-control" placeholder="e.g. 9874561230" type="text" name="mobile4" value="<%=mob%>" readonly="readonly"/>
                                        </div>
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-user input-icon input-icon-show"></i>
                                            <label>Email</label>
                                            <input class="form-control" placeholder="e.g. johndoe@gmail.com" type="text" name="mail"/>
                                        </div>
                                        <div class="form-group form-group-ghost form-group-icon-left"><i class="fa fa-lock input-icon input-icon-show"></i>
                                            <label>Password</label>
                                            <input class="form-control" type="password" placeholder="my secret password" name="password"/>
                                        </div>
                                        <input class="btn btn-primary" type="submit" value="Sign up for Traveler" />
                                    </form>
                                </div> --%>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>


    </div>
    <%@include file="include/footer.jsp" %>
</body>


<!-- Mirrored from remtsoy.com/tf_templates/traveler/demo_v1_7/login-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Apr 2019 14:24:39 GMT -->
</html>



    