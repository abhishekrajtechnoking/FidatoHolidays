<!DOCTYPE HTML>
<html>


<head>
<%@include file="include/head_css.jsp" %>
   
</head>

<body>

    <!-- FACEBOOK WIDGET -->
    <div id="fb-root"></div>
    <script>
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s);
            js.id = id;
            js.src = "http://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <!-- /FACEBOOK WIDGET -->
    <div class="global-wrap" style="background:#eee;">
        	
        	<%@include file="include/header_main.jsp" %>
        	<%
        		String inter_dest=request.getParameter("int_dest");
        	%>
        
        <div class="container">
            <ul class="breadcrumb" style="margin-left: 80px;">
                <li><a href="index.jsp">Home</a>
                </li>
                <li><a href="#">Holidays</a>
                </li>
                <li class="active"><%=inter_dest %></li>
            </ul>
            <div class="mfp-with-anim mfp-hide mfp-dialog mfp-search-dialog" id="search-dialog">
                <h3>Search for Activity</h3>
                <form>
                    <div class="input-daterange" data-date-format="MM d, D">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group form-group-lg form-group-icon-left"><i class="fa fa-map-marker input-icon input-icon-highlight"></i>
                                    <label>Loation</label>
                                    <input class="typeahead form-control" placeholder="Type Your Destination, City, State, Country and Search" type="text" />
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    <button class="btn btn-primary btn-lg" type="submit">Search for Package</button>
                </form>
            </div>
            <h4 class="booking-title" style="margin-left: 80px;">Your package for international holiday in - <b><%=inter_dest %></b> </h4>
            <div class="row">
               
                <div class="col-md-12">
                    <div class="nav-drop booking-sort">
                       
                    </div>
                    <ul class="booking-list">
                    
                     <%
                           PreparedStatement p1=con.prepareStatement("SELECT * FROM PACKAGE_HOLIDAYS WHERE  state_city='"+inter_dest+"'");
                   		   ResultSet r1=p1.executeQuery();
            				String dest="";
            				double A=0.0;
            				double U=0.0;
            				long P=0;
            				int R=2;
            				int N=15;
            				
            			   while(r1.next()){
            				   dest=r1.getString("destination");
            				   A=r1.getDouble("price");
            				   U=A*20/100;
            				   P=Math.round(A-U);
            			   
            			   	long emi=Math.round(P*R*(1+R/100)^N)/((1+R/100)^N-1);
            			   	
            			   	PreparedStatement p2=con.prepareStatement("SELECT * FROM package_destinations WHERE areaid='"+dest+"'");
            			   	ResultSet r2=p2.executeQuery();
            			   	
            			   while(r2.next()){
            				   
            			   
            		
                           %>
                    
                      
                    
                        <li >
                            
                                <div class="row" style="width: 975px;
                                                        margin: 0 auto;
                                                        background: #fff;
                                                        height: 232px;
                                                        border-radius: 5px;
                                                        -ms-box-shadow: 0 2px 6px 0 rgba(0,0,0,.1);
                                                        box-shadow: 0 2px 6px 0 rgba(0,0,0,.1);
                                                        transition: all .2s ease-in-out;
                                                        margin-bottom: 20px;">
                                    <div class="col-md-4" style="padding-left:0px;">
                                        <img src="dms/package_image/<%=r1.getString("image") %>" alt="" title=""  style=" border-top-left-radius: 5px; border-bottom-left-radius: 5px;"/>
                                    </div>
                                    <div class="col-md-5" style="padding-top: 15px;">
                                        
                                        <h5 class="booking-item-title"><b><%=r1.getString("pname") %> (<%=r1.getString("days") %>D/<%=r1.getString("nights") %>N)</b></h5>
                                        <div class="booking-item-rating">
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star-o"></i></li>
                                            </ul><span class="booking-item-rating-number"><b >3.7</b> of 5</span><small></small>
                                        </div>
                                        <p class="booking-item-address"><i class="fa fa-map-marker"></i> <%=r2.getString("destinations") %></p>
                                        <p class="booking-item-description">Package Includes: <%=r1.getString("package_includes") %></p>
                                    </div>
                                    <div class="col-md-3" style="padding-top: 15px;">
                                        
                                         <p><span class="booking-item-rating-number"><b >EMI</b> <small>starts from</small> &#8377;<%=emi %>*</span></p>
                                        <p><span class="booking-item-price">&#8377;<%=r1.getString("price") %></span><span>/pp*</span></p>
                                        
                                                 <p>        <a href="view-package.jsp?pid=<%=r1.getString("package_id") %>"> <span class="btn btn-primary">View</span></a>  &nbsp;&nbsp;
                                                         <a class="popup-text" href="#search-dialog<%=r1.getString("package_id") %>" data-effect="mfp-zoom-out"><span class="btn btn-danger">Book</span></a>
                                    </p>
                                    </div>
                                </div>
                            
                        </li>
                        
                        <!---------Booking lightbox---------->
                         <div class="mfp-with-anim mfp-hide mfp-dialog mfp-search-dialog" id="search-dialog<%=r1.getString("package_id") %>">
                                <h5>Book your selected package- <b> <%=r1.getString("pname") %> (<%=r1.getString("days") %>D/<%=r1.getString("nights") %>N)</b></h5>
                               <form action="package_booking.jsp" method="POST">
                                    <div class="input-daterange" data-date-format="MM d, D">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group form-group-lg form-group-icon-left">
                                                    <input class="typeahead form-control" name="fname" required placeholder="Your Full Name" type="text" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group form-group-lg form-group-icon-left">
                                                    <input class="typeahead form-control" name="bpoint" required placeholder="Boarding Point" type="text" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group form-group-lg form-group-icon-left">
                                                    <input class="typeahead form-control" name="destination" required placeholder="Selected Destination" type="text" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group form-group-lg form-group-icon-left">
                                                    <input class="typeahead form-control" name="mobile" required placeholder="Your Mobile" type="text" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group form-group-lg form-group-icon-left">
                                                    <input class="typeahead form-control" name="email" required placeholder="Your Email" type="text" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group form-group-lg form-group-icon-left">
                                                    <input class="form-control" name="start" required type="text" />
                                                </div>
                                            </div>
                                            <input type="hidden" name="orderid" value="<%=r1.getString("package_id") %>">
                                             <input type="hidden" name="amount" value="<%=r1.getString("price") %>">
                                                             
                                            <div class="col-md-6">
                                                <div class="form-group form-group-lg form-group-icon-left">
                                                    <input class="typeahead form-control" name="tpax" required placeholder="No. of Pax" type="number" />
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <button class="btn btn-primary btn-lg" type="submit">Proceed to Book</button>
                                </form>
                            </div>
                            <!---------Booking lightbox-end--------->
                        <%}} %>
                       
                    </ul>
                    <%@include file="include/enquiry.jsp" %>
                   
                </div>
            </div>
            <div class="gap"></div>
        </div>


<%@include file="include/footer.jsp" %>
    </div>
</body>


</html>



