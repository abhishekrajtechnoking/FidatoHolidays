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
        	String destination=request.getParameter("destination");
        %>

        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.jsp">Home</a>
                </li>
                <li><a href="#">India</a>
                </li>
                <li class="active">Fidato Holidays</li>
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
            <h3 class="booking-title">Your Search List for <%=destination %> Holidays with Fidato </h3>
            <div class="row">
               
                <div class="col-md-12">
                    <div class="nav-drop booking-sort">
                        <h5 class="booking-sort-title"><a href="#">Sort: Ranking<i class="fa fa-angle-down"></i><i class="fa fa-angle-up"></i></a></h5>
                        <ul class="nav-drop-menu">
                            <li><a href="#">Name (A-Z)</a>
                            </li>
                            <li><a href="#">Name (Z-A)</a>
                            </li>
                            <li><a href="#">Number of Reviews</a>
                            </li>
                            <li><a href="#">Just Added</a>
                            </li>
                        </ul>
                    </div>
                    <ul class="booking-list">
                    
                    <%
                    		PreparedStatement psStPack1=con.prepareStatement("SELECT * FROM package_holidays where destination='"+destination+"'");
                    		ResultSet rsStPack1=psStPack1.executeQuery();
                    		double A=0.0;
		    				double U=0.0;
		    				long P=0;
		    				int R=2;
		    				int N=15;
                    		while(rsStPack1.next()){
                    			
                    			String dest=rsStPack1.getString("destination");
                    		    A=rsStPack1.getDouble("price");
                  				U=A*20/100;
                  				P=Math.round(A-U);
                  			   
                  			   	long emi=Math.round(P*R*(1+R/100)^N)/((1+R/100)^N-1);
                  			   	
                  			  PreparedStatement psStPack2=con.prepareStatement("SELECT * FROM package_destinations where areaid='"+dest+"'");
                 				ResultSet rsStPack2=psStPack2.executeQuery();
                 				rsStPack2.next();
                    			
                    		
                    %>
                           <?php
                   $qry= mysql_query("Select * FROM package_holidays where destination='$destination'");
                   
                            while ( $row = mysql_fetch_assoc($qry)){ 
                               $destination=$row['destination'];
                               $A=$row['price'];
                               $U=$A*20/100;
                               $P=round($A-$U);
                               $R="2";
                               $N="15";
                               
                              /*-------EMI = [P x R x (1+R)^N]/[(1+R)^N-1] EMI= [2,00,000 x 1.66/100 x (1+1.66/100) ^ 24 / [(1+1.66/100) ^ 24 - 1)----*/
                              
                               $emi=round(($P*$R*(1+$R/100)^$N)/((1+$R/100)^$N-1));
                               
                			   //echo $destination;
                			   $qrydestid=mysql_query("SELECT * FROM `package_destinations` where `areaid`='$destination'");
                			   $qrydestination=mysql_fetch_assoc($qrydestid);
                            
                            
                            
                            ?>
                            
                    
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
                                        <img src="dms/package_image/<?php echo $row['image']; ?>" alt="" title=""  style=" border-top-left-radius: 5px; border-bottom-left-radius: 5px;"/>
                                    </div>
                                    <div class="col-md-5" style="padding-top: 15px;">
                                        
                                        <h5 class="booking-item-title"><b><%=rsStPack1.getString("pname") %> (<%=rsStPack1.getString("days") %>D/<%=rsStPack1.getString("nights") %>N)</b></h5>
                                        <div class="booking-item-rating">
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star"></i></li><li><i class="fa fa-star-o"></i></li>
                                            </ul><span class="booking-item-rating-number"><b >3.7</b> of 5</span><small></small>
                                        </div>
                                        <p class="booking-item-address"><i class="fa fa-map-marker"></i> <%=rsStPack2.getString("destinations") %></p>
                                        <p class="booking-item-description">Package Includes: <%=rsStPack1.getString("package_includes") %></p>
                                    </div>
                                    <div class="col-md-3" style="padding-top: 15px;">
                                        
                                         <p><span class="booking-item-rating-number"><b >EMI</b> <small>starts from</small> &#8377;<?php echo $emi ?>*</span></p>
                                        <p><span class="booking-item-price">&#8377;<%=rsStPack1.getString("price") %></span><span>/pp*</span></p>
                                        
                                                 <p>        <a href="view-package.jsp?pid=<%=rsStPack1.getString("package_id") %>"> <span class="btn btn-primary">View</span></a>  &nbsp;&nbsp;
                                                         <a class="popup-text" href="#search-dialog<%=rsStPack1.getString("package_id") %>" data-effect="mfp-zoom-out"><span class="btn btn-danger">Book</span></a>
                                    </p>
                                    </div>
                                </div>
                            
                        </li>
                        
                        <!---------Booking lightbox---------->
                         <div class="mfp-with-anim mfp-hide mfp-dialog mfp-search-dialog" id="search-dialog<%=rsStPack1.getString("package_id") %>">
                                <h5>Book your selected package- <b> <%=rsStPack1.getString("pname") %> (<%=rsStPack1.getString("days") %>D/<%=rsStPack1.getString("nights") %>N)</b></h5>
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
                                            <input type="hidden" name="orderid" value="<?php echo $row['package_id'];?>">
                                             <input type="hidden" name="amount" value="<?php echo $row['price'];?>">
                                                             
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
                        <%} %>
                       
                    </ul>
                    <div class="row">
                        <div class="col-md-3">
                            
                        </div>
                        <div class="col-md-6 text-right">
                            <p>Not what you're looking for? <a class="popup-text" href="#search-dialog" data-effect="mfp-zoom-out">Try your search again</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gap"></div>
        </div>

<%@include file="include/footer.jsp" %>
 
    </div>
</body>


</html>



