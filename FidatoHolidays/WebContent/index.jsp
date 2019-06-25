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
    <div class="global-wrap">
        
        <%@include file="include/header_main.jsp" %>
       

        <!-- TOP AREA -->
        <div class="top-area show-onload">
            <div class="bg-holder full">
                <div class="bg-front bg-front-mob-rel">
                    <div class="container">
                        <div class="search-tabs search-tabs-bg search-tabs-abs mt50">
                            <div class="tabbable">
                               
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="tab-1">
                                        <h2 style="color: white;">Search Your Destinations</h2>
                                        <form action="fidato-packages.php" method="GET">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group form-group-lg form-group-icon-left"><i class="fa fa-map-marker input-icon"></i>
                                                        <label>Where are you going?</label>
                                                        <input class="typeahead form-control" placeholder="Type Your Destination, City, State, Country and Search" type="text" />
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <button class="btn btn-primary btn-lg" type="submit">Search for Package</button>
                                        </form>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="owl-carousel owl-slider owl-carousel-area visible-lg" id="owl-carousel-slider">
                    <div class="bg-holder full">
                        <div class="bg-mask"></div>
                        <div class="bg-blur" style="background-image:url(assets/slide/slide1.jpg);"></div>
                        <div class="bg-content">
                            <div class="container">
                                <div class="loc-info text-right hidden-xs hidden-sm">
                                    <h3 class="loc-info-title"><img src="assets/icon.png" style="width:48px;"/>Fidato's</h3>
                                    <p class="loc-info-weather"><span class="loc-info-weather-num">Easy EMIs</span></i>
                                    </p>
                                    <ul class="loc-info-list">
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;3 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;6 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;9 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> 12 Months</a>
                                        <li><a href="#"><i class="fa fa-check-square"></i> 15 Months</a>
                                        
                                        </li>
                                    </ul><a class="btn btn-white btn-ghost mt10" href="#"><i class="fa fa-angle-right"></i> Explore</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bg-holder full">
                        <div class="bg-mask"></div>
                        <div class="bg-blur" style="background-image:url(assets/slide/slide2.jpg);"></div>
                        <div class="bg-content">
                            <div class="container">
                                <div class="loc-info text-right hidden-xs hidden-sm">
                                    <h3 class="loc-info-title"><img src="assets/icon.png" style="width:48px;"/>Fidato's</h3>
                                    <p class="loc-info-weather"><span class="loc-info-weather-num">Easy EMIs</span></i>
                                    </p>
                                    <ul class="loc-info-list">
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;3 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;6 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;9 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> 12 Months</a>
                                        <li><a href="#"><i class="fa fa-check-square"></i> 15 Months</a>
                                        
                                        </li>
                                    </ul><a class="btn btn-white btn-ghost mt10" href="#"><i class="fa fa-angle-right"></i> Explore</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bg-holder full">
                        <div class="bg-mask"></div>
                        <div class="bg-blur" style="background-image:url(assets/slide/slide3.jpg);"></div>
                        <div class="bg-content">
                            <div class="container">
                                <div class="loc-info text-right hidden-xs hidden-sm">
                                    <h3 class="loc-info-title"><img src="assets/icon.png" style="width:42px;"/>Fidato's</h3>
                                    <p class="loc-info-weather"><span class="loc-info-weather-num">Easy EMIs</span></i>
                                    </p>
                                    <ul class="loc-info-list">
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;3 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;6 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> &nbsp;&nbsp;9 Months</a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-check-square"></i> 12 Months</a>
                                        <li><a href="#"><i class="fa fa-check-square"></i> 15 Months</a>
                                        
                                        </li>
                                    </ul><a class="btn btn-white btn-ghost mt10" href="#"><i class="fa fa-angle-right"></i> Explore</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bg-img hidden-lg" style="background-image:url(img/196_365_2048x1365.jpg);"></div>
                <div class="bg-mask hidden-lg"></div>
            </div>
        </div>
        <!-- END TOP AREA  -->

        <div class="gap"></div>


        <div class="container">
            <div class="row row-wrap">
                <div class="col-md-4">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <a class="hover-img curved" href="package-by-theme.php?theme=Summer">
                                <img src="img/a_dreamy_jump_800x600.jpg" alt="Image Alternative text" title="a dreamy jump" />
                                <h5 class="hover-title-top-left hover-hold">Summer Escapes</h5>
                            </a>
                        </header>
                        <div class="thumb-caption text-center">
                            <p class="thumb-desc">Want to leave all the planning and just have fun. Then tell us your plan. We’ll make sure you have a blast.</p><a class="btn btn-default btn-ghost mt10" href="package-by-theme.php?theme=Summer">Find More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <a class="hover-img curved" href="package-by-theme.php?theme=Honeymoon">
                                <img src="img/the_big_showoff-take_2_800x600.jpg" alt="Image Alternative text" title="The Big Showoff-Take 2" />
                                <h5 class="hover-title-top-left hover-hold">Wild Jorneys</h5>
                            </a>
                        </header>
                        <div class="thumb-caption text-center">
                            <p class="thumb-desc">Enrich your mind and soul with thrilling adventure sports. Leave your worries with us.</p><a class="btn btn-default btn-ghost mt10" href="package-by-theme.php?theme=Honeymoon">Find More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <a class="hover-img curved" href="package-by-theme.php?theme=Weekend">
                                <img src="img/bridge_800x600.jpg" alt="Image Alternative text" title="Bridge" />
                                <h5 class="hover-title-top-left hover-hold">Romantic Weekends</h5>
                            </a>
                        </header>
                        <div class="thumb-caption text-center">
                            <p class="thumb-desc">Beautiful views to interesting activities. You can weave uncountable memorable memories on your holidays.</p><a class="btn btn-default btn-ghost mt10" href="package-by-theme.php?theme=Weekend">Find More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="gap gap-small"></div>
        </div>
        <div class="bg-darken">
            <div class="container">
                <div class="gap"></div>
                <h3>Top Destinations</h3><br>
                <div class="row row-wrap">
                    <?php
                   $qry= mysql_query("Select * FROM package_holidays group by destination limit 12");
                   
                            while ( $row = mysql_fetch_assoc($qry)){ 
                               $destination=$row['destination'];
                			   //echo $destination;
                			   $qrydestid=mysql_query("SELECT * FROM `package_destinations` where `areaid`='$destination'");
                			   $qrydestination=mysql_fetch_assoc($qrydestid);
                			   $countryid=mysql_query("SELECT `country` FROM `package_destinations` where `areaid`='$destination' group by `country`");
                			   $country=mysql_fetch_assoc($countryid);
                            
                            
                            
                            ?>
                    <div class="col-md-3">
                        <div class="thumb">
                            
                            <div class="img-left">
                                <img src="assets/icon.png" style="width:32px;"/>
                            </div>
                            <div class="thumb-caption">
                                <h5 class="thumb-title"><a class="text-darken" href="popular-destinations.php?destination=<?php echo $destination;?>"><?php echo $qrydestination['destinations']; ?></a></h5>
                                <div class="thumb-caption">
                                    <p class="thumb-desc"><?php echo $country['country']; ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php  }  ?>
                </div>
                <div class="gap gap-small"></div>
                <h3>Top Packages</h3>
                <div class="row row-wrap">
                    <?php
                   $qry1= mysql_query("Select * FROM package_holidays group by destination limit 4");
                   
                            while ( $row1 = mysql_fetch_assoc($qry1)){ 
                               $destination1=$row1['destination'];
                			   //echo $destination;
                			   $qrydestid1=mysql_query("SELECT * FROM `package_destinations` where `areaid`='$destination1'");
                			   $qrydestination1=mysql_fetch_assoc($qrydestid1);
                            
                            
                            
                            ?>
                    <div class="col-md-3">
                        <div class="thumb">
                            <header class="thumb-header">
                                <a class="hover-img" href="view-package.php?pid=<?php echo $row1['package_id']; ?>">
                                    <img src="dms/package_image/<?php echo $row1['image']; ?>" alt="" title="" />
                                    <h5 class="hover-title-center">Book Now</h5>
                                </a>
                            </header>
                            <div class="thumb-caption">
                                <ul class="icon-group text-tiny text-color">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-half-empty"></i>
                                    </li>
                                </ul>
                                <h5 class="thumb-title"><a class="text-darken" href="view-package.php?pid=<?php echo $row1['package_id']; ?>"><?php echo $row1['pname']; ?> (<?php echo $row1['days']; ?>D/<?php echo $row1['nights']; ?>N)</a></h5>
                                <p class="mb0"><small><i class="fa fa-map-marker"></i> <?php echo $qrydestination1['destinations']; ?></small>
                                </p>
                                <p class="mb0 text-darken"><span class="text-lg lh1em text-color">&#8377;<?php echo $row1['price']; ?></span><small> /PP*</small>
                                </p>
                            </div>
                        </div>
                    </div>
                   
                     <?php  }  ?>
                   
                </div>
                <div class="gap gap-small"></div>
            </div>
        </div>
        <div class="container">
            <div class="gap gap-small"></div>
            <div class="gap gap-small"></div>
            <div class="row row-wrap" data-gutter="60">
                <div class="col-md-3">
                    <div class="thumb"><i class="fa fa-dot-circle-o box-icon-left round box-icon-normal box-icon-navy animate-icon-top-to-bottom"></i>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Top Service Guaranteed</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb"><i class="fa fa-dot-circle-o box-icon-left round box-icon-normal box-icon-navy animate-icon-top-to-bottom"></i>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Highly Trained Staff</h5>
                     </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb"><i class="fa fa-dot-circle-o box-icon-left round box-icon-normal box-icon-navy animate-icon-top-to-bottom"></i>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Flawless Tour Execution</h5>
                            
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb"><i class="fa fa-dot-circle-o box-icon-left round box-icon-normal box-icon-navy animate-icon-top-to-bottom"></i>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Seamless Travel Experience</h5>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

		<%@include file="include/footer.jsp" %>

       
    </div>
</body>


</html>



