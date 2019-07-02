<!DOCTYPE HTML>
<html>


<head>
    <%@include file="include/head_css.jsp" %>
    
    <%
    	String pid=request.getParameter("pid");
    %>
    
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
         PreparedStatement ps7=con.prepareStatement("SELECT * FROM PACKAGE_HOLIDAYS WHERE  package_id='"+pid+"'");
 		   ResultSet rs7=ps7.executeQuery();
 		   String destination="";
 		   while(rs7.next()){
 			   destination=rs7.getString("destination");
 			   
 			  PreparedStatement ps8=con.prepareStatement("SELECT * FROM package_destinations WHERE  areaid='"+destination+"'");
 	 		   ResultSet rs8=ps8.executeQuery();
 	 		   while(rs8.next()){
 		   
         %>

         


        <div class="container" style="
                                    margin: 0 auto;
                                    background: #fff;
                                    border-radius: 5px;
                                    -ms-box-shadow: 0 2px 6px 0 rgba(0,0,0,.1);
                                    box-shadow: 0 2px 6px 0 rgba(0,0,0,.1);
                                    transition: all .2s ease-in-out;
                                    margin-bottom: 20px;">
            <ul class="breadcrumb">
                 <li><a href="index.jsp">Home</a>
                </li>
                
                <li><a href="#">Holiday Packages</a>
                </li>
                <li class="active">Package for <%=rs8.getString("destinations") %> </li>
            </ul>
            <div class="booking-item-details">
                <header class="booking-item-header">
                    <div class="row">
                        <div class="col-md-7">
                            <h2 class="lh1em"><%=rs7.getString("pname") %> (<%=rs7.getString("days") %> D/ <%=rs7.getString("nights") %> N)</h2>
                            <p class="lh1em text-small"><i class="fa fa-map-marker"></i> <%=rs8.getString("destinations") %> (<%=rs7.getString("state_city") %>, <%=rs7.getString("country") %>)</p>
                           
                        </div>
                        <div class="col-md-3">
                            <p class="booking-item-header-price"><h2 class="lh1em">&#8377; <%=rs7.getString("price") %></h2><small class="text-smaller">
                        <p>Price Per Adult Twin Sharing Basis</p></small></p>
                        </div>
                         <div class="col-md-2">
                           <a href="#search-dialog<%=rs7.getString("package_id") %>" class="popup-text btn btn-primary btn-lg">Book Now</a>
                        
                        <!---------Booking lightbox---------->
                         <div class="mfp-with-anim mfp-hide mfp-dialog mfp-search-dialog" id="search-dialog<%=rs7.getString("package_id") %>">
                                <h5>Book your selected package- <b> <%=rs7.getString("pname") %> (<%=rs7.getString("days") %>D/<%=rs7.getString("nights") %>N)</b></h5>
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
                                            <input type="hidden" name="orderid" value="<%=rs7.getString("package_id") %>">
                                             <input type="hidden" name="amount" value="<%=rs7.getString("price") %>">
                                                             
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
                            
                            </div>
                    </div>
                </header>
                <div class="row">
                    <div class="col-md-8">
                        <div class="tabbable booking-details-tabbable">
                            <ul class="nav nav-tabs" id="myTab">
                                <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-camera"></i>Photos</a>
                                </li>
                                <li><a href="#google-map-tab" data-toggle="tab"><i class="fa fa-map-marker"></i>On the Map</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                            
                            	<%
                            		PreparedStatement ps9=con.prepareStatement("SELECT * FROM package_images WHERE package_id='"+pid+"'");
                            		ResultSet rs9=ps9.executeQuery();
                            		String packageId="";
                            		
                            		if(packageId=="" || packageId=="null"){
                            			
                            		
                            		
                            	%>
                            	
                                 <div class="tab-pane fade in active" id="tab-1">
                                    <!-- START LIGHTBOX GALLERY -->
                                    <div class="row row-no-gutter" id="popup-gallery">
                                        <div class="col-md-12">
                                            <a class="hover-img popup-gallery-image" href="dms/package_image/<%=rs7.getString("image") %>" data-effect="mfp-zoom-out">
                                                <img src="dms/package_image/<%=rs7.getString("image") %>" alt="<%=rs7.getString("pname") %>" title="<%=rs7.getString("pname") %>" /><i class="fa fa-plus round box-icon-small hover-icon i round"></i>
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <!-- END LIGHTBOX GALLERY -->
                                </div>
                                <%}else{ %>
                                <div class="tab-pane fade in active" id="tab-1">
                                    <div class="fotorama" data-allowfullscreen="true" data-nav="thumbs">
                                        
                                        <%
                                        while(rs9.next()){
                                			packageId=rs9.getString("package_id");
                                		
                                        %>
                                        
                                        <img src="dms/dist/sightseeing_images/<%=rs9.getString("image_name") %>" />
                                       <%} %>
                                    </div>
                                </div>
                                <%} %>
                                <div class="tab-pane fade" id="google-map-tab">
                                    <div id="map-canvas" style="width:100%; height:500px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="booking-item-dates-change" style="margin-top: 42px;">
                            
                            <%
                            String dest="";
            				double A=0.0;
            				double U=0.0;
            				long P=0;
            				int R=2;
            				int N=15;
            				
            			   dest=rs7.getString("destination");
          				   A=rs7.getDouble("price");
          				   U=A*20/100;
          				   P=Math.round(A-U);
          				   
          				   long emi=Math.round(P*R*(1+R/100)^N)/((1+R/100)^N-1);
                            %>
                        
                            <h2 class="lh1em mt40"><span style="background-color: #000; color: #fff; display: inline-block; margin-right: 3px; padding: 2px 5px;">EMI</span>
                            <span class="booking-item-rating-number"><small class="text-smaller">Start From</small><b> &#8377;<%=emi %>*</b></span>
                            </h2>
                            <hr>
                            <h5><small class="text-smaller">Package Theme:</small> <b><%=rs7.getString("pcategory") %></b></h5>
                            <h5><small class="text-smaller">Package Includes:</small><br> <b><%=rs7.getString("package_includes") %></b></h5>
                            
                            <span class="booking-item-rating-number"><h4>About Package</h4><small class="text-smaller">
                        <p><%=rs7.getString("description") %></p></small></span>
                        </div>
                        <br>
                        <div class="booking-item-dates-change">
                           <p>Feel free to call us<br>
                           Toll Free No. +91-9319283483</p>
                        </div>
                        <div class="gap gap-small"></div>	<a href="#" class="btn btn-default btn-lg">Get a call back!</a>
                    </div>
                </div>
                <div class="gap"></div>
                <div class="row">
                   <div class="col-md-6">
                        <h4>About Itinerary</h4>
                        <p><%=rs7.getString("description") %></p>
                    </div>
                
                    <div class="col-md-3">
                        <h4>Amenities</h4>
                        <ul class="booking-item-features booking-item-features-expand mb30 clearfix">
                            <li><i class="im im-wi-fi"></i><span class="booking-item-feature-title">Wi-Fi Internet</span>
                            </li>
                            <li><i class="im im-parking"></i><span class="booking-item-feature-title">Parking</span>
                            </li>
                            <li><i class="im im-air"></i><span class="booking-item-feature-title">Air Conditioning</span>
                            </li>
                            <li><i class="im im-kitchen"></i><span class="booking-item-feature-title">Kitchen</span>
                            </li>
                            <li><i class="im im-pool"></i><span class="booking-item-feature-title">Pool</span>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h4>Suitability</h4>
                        <ul class="booking-item-features booking-item-features-expand mb30 clearfix">
                            <li><i class="im im-wheel-chair"></i><span class="booking-item-feature-title">Wheelchair Access</span>
                            </li>
                            <li><i class="im im-smoking"></i><span class="booking-item-feature-title">Smoking Allowed</span>
                            </li>
                            <li><i class="im im-children"></i><span class="booking-item-feature-title">For Children</span>
                            </li>
                            <li><i class="im im-elder"></i><span class="booking-item-feature-title">Elder Access</span>
                            </li>
                            <li><i class="im im-dog"></i><span class="booking-item-feature-title">Pet Allowed</span>
                            </li>
                        </ul>
                    </div>
                   
                </div>
                <div class="gap gap-small"></div>
                <h4 class="mb20">Day wise itinerary</h4>
                <div class="row row-wrap">
                   
                    <div class="col-md-12">
                        <ul class="booking-item-reviews list">
                        
                        	<%
                        		PreparedStatement ps10=con.prepareStatement("SELECT * FROM package_itinerary where package_id='"+pid+"'");
                        		ResultSet rs10=ps10.executeQuery();
                        		while(rs10.next()){
                        			
                        		
                        	%>
                            
                            <li>
                                <div class="row">
                                    <div class="col-md-2">
                                        
                                        <h2 class="lh1em mt5"><small class="text-smaller"  style="background-color: red; color: #fff; display: inline-block; padding: 5px 5px;">
                        Day</small><span style="background-color: navy; color: #fff; display: inline-block; margin-right: 3px; padding: 5px 5px;"> <%=rs10.getString("day_number") %></span>
                            
                            </h2>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="booking-item-review-content">
                                           <!-- <h5>"Tempus vestibulum mus imperdiet nibh sem"</h5>-->
                                            
                                            <p><%=rs10.getString("descriptions") %></p>
                                           
                                           
                                        </div>
                                    </div>
                                      <div class="col-md-2">
                                            <img src="img/hotel_porto_bay_rio_internacional_rooftop_pool_800x600.jpg" alt="" title="" />
                                    </div>
                                       
                                    </div>
                                </li>
                           <%} %>
                        </ul>
                        
                    </div>
                   
                </div>
                 <div class="row">
                     
                     <%
                     		PreparedStatement ps11=con.prepareStatement("SELECT * FROM package_terms where package_id='"+pid+"'");
                     		ResultSet rs11=ps11.executeQuery();
                     		while(rs11.next()){
                     %>
                   
                   <div class="col-md-6">
                        <h4>Inclusions</h4><hr>
                        <p><%=rs11.getString("inclusions") %></p>
                    </div>
                
                    <div class="col-md-6">
                        <h4>Exclusions</h4><hr>
                       <p><%=rs11.getString("exclusions") %></p>
                    </div>
                   
                </div>
                <div class="gap gap-small"></div>
                 <div class="row">
                                                        
                    <div class="col-md-6">
                        <h4 class="booking-item-title">Package Terms</h4><hr>
                        	<p><%=rs11.getString("package_terms") %></p>
                    </div>
                    <div class="col-md-6">
                        <h4 class="booking-item-title">Package Cancellation</h4><hr>
                        	<p><%=rs11.getString("cancelation_policy") %>></p>
                    </div>
                    </div>
                    <h4>About Destination</h4>
                         
                            <div class="row" style="background: #eaf6f8;">
                                   <div class="form-group" style="padding:10px;">
                                            <label> About <%=rs8.getString("destinations") %></label>
                                            <hr>
                                            <p><%=rs8.getString("about_destinations") %></p>
                                        </div>
                                   </div>
                               
                </div>
            </div>
            <%}}} %>
            <div class="gap gap-small"></div>
            
        </div>
 

	<%@include file="include/footer.jsp" %>
      
</body>


</html>



