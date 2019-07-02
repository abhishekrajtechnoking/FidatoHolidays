
<%@include file="config.jsp" %>
<%@include file="../jdbc/connection.jsp" %>

<head>
	<script type="text/javascript">
	
			function validate(){
				
				var mailNum=document.getElementById("mailNum").value;
				var reg = /^([A-Z a-z 0-9]+)@([A-Z a-z 0-9]+).([A-Z a-z]{2,4})$/;
				
				if(isNaN(mailNum.value))
				
			}
	</script>
</head>
 


 <%@include file="head_css.jsp" %>
 <header id="main-header" style="background: navy;">

            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <a class="logo" href="index.jsp">
                                <img src="assets/images/logo.png" alt="Fidato Holidays" title="Logo" />
                            </a>
                        </div>
                        <div class="col-md-3 col-md-offset-2">
                            <form class="main-header-search">
                                <div class="form-group form-group-icon-left">
                                    
                                    <h4  styel="color:#fe0013;"><i class="fa fa-phone box-icon-gray box-icon-info box-icon-left animate-icon-border-rise round"></i><b style="font-weight:600; color:#000080;">+91-9319283483</b></h4> 
                                </div>
                            </form>
                           
                        </div>
                                                           <%
	String usr="";
	String email="";
	String login="";
	String logout="";
	String mbl=request.getParameter("mob");
	//System.out.println("heaeder-"+mbl);
	session.setAttribute("mb",mbl);
	if(session.getAttribute("user_name")==null){
		usr="GUEST";
			
	%>
      
		<div class="col-md-4">
                            <div class="top-user-area clearfix">
                                <ul class="top-user-area-list list list-horizontal list-border">
                                    <li class="top-user-area-avatar">
                                        <a href="">
                                            <img class="origin round" src="assets/images/usericon.png" />Hi, <%=usr%></a>
                                    </li>
                                   <li><a class="popup-text" href="#signin" data-effect="mfp-zoom-out">Sign In/ Sign Up</a>
                                    </li>
                                    
                                  
                                </ul>
                            </div>
                        </div>
                         <!---------Signin/Signup lightbox---------->
                         <div class="mfp-with-anim mfp-hide mfp-dialog mfp-search-dialog" id="signin" style="padding: 0px; background: #0083c0;">
                        
                                <div class="row">
                                    <div class="col-md-6">
                                        
                                        
                                    </div>
                                   
                                    
                                     <form action="auth/mob_otp.jsp" method="POST">
                                        <div class="input-daterange" data-date-format="MM d, D">
                                            <div class="col-md-6 text-center"  style="padding: 20px; background: #fff;">
                                            <img class="origin round" src="assets/images/usericon.png"  style="width:25%;"/>
                                               <h4>Sign In/ Sign Up</h4>
                                                <br>
                                                
                                                <div class="form-group form-group-lg">
                                                    <label  class="text-left">Email ID / Mobile Number</label>
                                                    <input class="form-control" type="text" placeholder="Enter Your Email ID / Mobile Number" name="mobile1" required="required" id="mailNum">
                                                </div>
                                                <button class="btn btn-primary btn-block btn-lg" type="submit">CONTINUE</button>
                                                <p  class="text-left">By proceeding, you agree with our <a href="#">Terms of Service</a></p>
                                                
                                            </div>
                                            
                                        </div>
                                    </div>
                                    
                                </form>
                            </div>
                            <!---------Signin/Signup lightbox-end--------->
<%		
	}	
	else{
		usr=session.getAttribute("user_name").toString(); 
		
				%>
				
		<div class="col-md-4">
                            <div class="top-user-area clearfix">
                                <ul class="top-user-area-list list list-horizontal list-border">
                                    <li class="top-user-area-avatar">
                                        <a href="#">
                                            <img class="origin round" src="assets/images/usericon.png" />Hi, <%=usr%></a>
                                    </li>
                                    <li> <a href="./user-profile.jsp?mbl=<%=mbl%>">My Profile</li>
                                    <li><a href="auth/logout.jsp">Sign Out</a>
                                    </li>
                                    
                                  
                                </ul>
                            </div>
                        </div>
<%	}
			
	%>
	
	

                        
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="nav">
                    <ul class="slimmenu" id="slimmenu">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li><a href="#">Domestic Holidays</a>
                            <ul>
                            
                            	<%
                            	String domstHol="";
                            		PreparedStatement ps1=con.prepareStatement("SELECT STATE_CITY FROM package_holidays WHERE DESTINATION_TYPE='Domestic' GROUP BY STATE_CITY");
                            		ResultSet rs1=ps1.executeQuery();
                            		 while(rs1.next()){
                            			domstHol=rs1.getString(1);
                            				
                            		
                            	%>
                               
                                <li><a href="domestic-holidays.jsp?dom_dest=<%=rs1.getString(1)%>"><%=rs1.getString(1)%></a></li>
                                                                <% } 
                            		
                                 %>
                            </ul>
                        </li>
                        <li><a href="#">International Holidays</a>
                            <ul>
                            
                            	<%
                            		PreparedStatement ps2=con.prepareStatement("SELECT STATE_CITY FROM package_holidays WHERE DESTINATION_TYPE='International' GROUP BY STATE_CITY");
                            		ResultSet rs2=ps2.executeQuery();
                            		 while(rs2.next()){
                            		
                            	%>
                                
                               
                                
                                <li><a href="international-holidays.jsp?int_dest=<%=rs2.getString(1) %>"><%=rs2.getString(1) %></a></li>
                                 <% }%>
                                
                            </ul>
                        </li>
                        <li><a href="#">Theme Holidays</a>
                            <ul>
                            
                            	<%
                            		PreparedStatement ps3=con.prepareStatement("SELECT pcategory FROM package_holidays GROUP BY pcategory");
                            		ResultSet rs3=ps3.executeQuery();
                            		 while(rs3.next()){
                            		
                            	%>
                                
                                <li><a href="package-by-theme.jsp?theme=<%=rs3.getString(1) %>"><%=rs3.getString(1) %></a></li>
                                 <% }%>
                            </ul>
                        </li>
                       <li><a href="#">Popular Destinations</a>
                            <ul>
                            	
                            	<%
                            		PreparedStatement ps4=con.prepareStatement("SELECT destination FROM package_holidays GROUP BY destination limit 10");
                            		ResultSet rs4=ps4.executeQuery();
                            		 while(rs4.next()){
                            			 String destn=rs4.getString(1);
                            			 PreparedStatement ps5=con.prepareStatement("SELECT destinations FROM package_destinations where areaid='"+destn+"'");
                                 		ResultSet rs5=ps5.executeQuery();
                                 		while(rs5.next()){
                                 		rs5.getString(1);
                                 		
                            	%>
                            	
                                  <li><a href="popular-destinations.jsp?destination=<%=destn%>"><%=rs5.getString(1)%></a></li>
                                <%}} %>
                            </ul>
                        </li>
                                 <li><a href="#">Hot Deals</a>
                                    <ul>
                                        <li><a href="fidato-packages.jsp">All Package on EMI</a>
                                        </li>
                                       
                                    </ul>
                                </li>
                        
                        
                       
                    </ul>
                </div>
            </div>
        </header>