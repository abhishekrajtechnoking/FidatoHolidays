
<%@include file="config.jsp" %>
<%@include file="../jdbc/connection.jsp" %>

 <header id="main-header" style="background: navy;">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <a class="logo" href="index.php">
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
                        <div class="col-md-4">
                            <div class="top-user-area clearfix">
                                <ul class="top-user-area-list list list-horizontal list-border">
                                    <li class="top-user-area-avatar">
                                        <a href="#">
                                            <img class="origin round" src="assets/images/usericon.png" />Hi, Guest</a>
                                    </li>
                                    <li> <a href="#">My Profile</li>
                                    <li><a href="#">Sign Out</a>
                                    </li>
                                    
                                    
                                </ul>
                            </div>
                        </div>
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
                            		PreparedStatement ps1=con.prepareStatement("SELECT STATE_CITY FROM PACKAGE_HOLIDAYS WHERE DESTINATION_TYPE='Domestic' GROUP BY STATE_CITY");
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
                            		PreparedStatement ps2=con.prepareStatement("SELECT STATE_CITY FROM PACKAGE_HOLIDAYS WHERE DESTINATION_TYPE='International' GROUP BY STATE_CITY");
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
                            		PreparedStatement ps3=con.prepareStatement("SELECT pcategory FROM PACKAGE_HOLIDAYS GROUP BY pcategory");
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
                            		PreparedStatement ps4=con.prepareStatement("SELECT destination FROM PACKAGE_HOLIDAYS GROUP BY destination limit 10");
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