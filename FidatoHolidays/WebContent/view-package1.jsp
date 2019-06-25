<!DOCTYPE HTML>
<html>


<head>
    <?php include("include/head_css.php");
    
    $pid=$_GET['pid'];
    ?>
    
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
       <?php include("include/header_main.php"); ?> 



    <!--END HEADER SECTION-->
		<?php $qry1=mysql_query("SELECT * FROM `package_holidays` where `package_id`='$pid'");
										    
			   $result1=mysql_fetch_assoc($qry1);
			   $destination=$result1['destination'];
			   //echo $destination;
			   $qrydestid=mysql_query("SELECT * FROM `package_destinations` where `areaid`='$destination'");
			   $qrydestination=mysql_fetch_assoc($qrydestid);
			    ?>


        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.php">Home</a>
                </li>
                
                <li><a href="#">Holiday Packages</a>
                </li>
                <li class="active">Package for <?php echo $qrydestination['destinations'];?> </li>
            </ul>
            <div class="booking-item-details">
                <header class="booking-item-header">
                    <div class="row">
                        <div class="col-md-9">
                            <h2 class="lh1em"><?php echo $result1['pname'];?> (<?php echo $result1['days'];?> D/ <?php echo $result1['nights'];?> N)</h2>
                            <p class="lh1em text-small"><i class="fa fa-map-marker"></i> <?php echo $qrydestination['destinations'];?> (<?php echo $result1['state_city'];?>, <?php echo $result1['country'];?>)</p>
                            <ul class="list list-inline text-small">
                                <li><a href="#"><i class="fa fa-envelope"></i> Theme- <?php echo $result1['pcategory'];?></a>
                                </li>
                                <li><a href="#"><i class="fa fa-home"></i> Package Includes- <?php echo $result1['package_includes'];?></a>
                                </li>
                               <!-- <li><i class="fa fa-phone"></i> +1 (906) 617-3323</li>-->
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <p class="booking-item-header-price"><small>price</small>  <span class="text-lg">&#8377; <?php echo $result1['price'];?></span>
                            </p>
                        </div>
                    </div>
                </header>
                <div class="row">
                    <div class="col-md-8">
                        <div class="tabbable booking-details-tabbable">
                            <ul class="nav nav-tabs" id="myTab">
                                 <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-camera"></i>Sight Pic</a></li>
                                 <li><a href="#tab-2" data-toggle="tab"><i class="fa fa-bullhorn"></i>Itenerary</a></li>
                                 <li><a href="#tab-3" data-toggle="tab"><i class="fa fa-university"></i>EMI Details</a></li>
                                 <li><a href="#tab-6" data-toggle="tab"><i class="fa fa-info-circle"></i>Inclusions/Exclusions</a></li>
                                 <li><a href="#tab-4" data-toggle="tab"><i class="fa fa-info-circle"></i>Terms & Conditions</a></li>
                               <!-- <li><a href="#tab-5" data-toggle="tab"><i class="fa fa-comments"></i>Reviews</a></li>-->
                            </ul>
                           <div class="tab-content">
                               <?php
                               
                               $qry4=mysql_query("SELECT * FROM `package_images` where `package_id`='$pid'");
							   $result4=mysql_fetch_assoc($qry4);
							   $packageid=$result4['package_id'];
			                  
                               if($packageid=="" || $packageid=="NULL"){
                               ?>
                                <div class="tab-pane fade in active" id="tab-1">
                                    <!-- START LIGHTBOX GALLERY -->
                                    <div class="row row-no-gutter" id="popup-gallery">
                                        <div class="col-md-12">
                                            <a class="hover-img popup-gallery-image" href="dms/package_image/<?php echo $result1['image']; ?>" data-effect="mfp-zoom-out">
                                                <img src="dms/package_image/<?php echo $result1['image']; ?>" alt="<?php echo $result1['pname'];?>" title="<?php echo $result1['pname'];?>" /><i class="fa fa-plus round box-icon-small hover-icon i round"></i>
                                            </a>
                                        </div>
                                        
                                    </div>
                                    <!-- END LIGHTBOX GALLERY -->
                                </div>
                                <?php } else{?>
                                <div class="tab-pane fade in active" id="tab-1">
                                    <div class="fotorama" data-allowfullscreen="true" data-nav="thumbs">
                                        <?php 
                                        while($result4=mysql_fetch_assoc($qry4)){
                                        ?>
                                        <img src="dms/dist/sightseeing_images/<?php echo $result4['image_name'];?>" />
                                        <?php } ?>
                                    </div>
                                </div>
                                <?php } ?>
                                 <div class="tab-pane fade" id="tab-2">
                                    <div class="mt20">
                                        
                                        <ul class="booking-item-reviews list">
                                            <?php
										    $qry2=mysql_query("SELECT * FROM `package_itinerary` where `package_id`='$pid'");
										    
										    while($result2=mysql_fetch_assoc($qry2)){
										    ?>
                                            <li>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <div class="booking-item-review-person booking-item-meta">
                                                            
                                                                <i class="fa  fa-map-marker"></i><span class="booking-item-rating-number"><br><b >Day-<?php echo $result2['day_number'] ?></b></span>
                                                            
                                                                
                                                        </div>
                                                    </div>
                                                    <div class="col-md-10">
                                                        <div class="booking-item-review-content">
                                                           <p><?php echo $result2['descriptions'] ?></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            	<?php } ?>
                                        </ul>
                                        
                                       
                                    </div>
                                </div>
                                
					
						<div class="tab-pane fade" id="tab-6">
                                    <div class="mt20">
                                        <ul class="booking-list">
                                             <?php
										    $qry3=mysql_query("SELECT * FROM `package_terms` where `package_id`='$pid'");
										    
										   $result3=mysql_fetch_assoc($qry3)
										    ?>
                                             <li>
                                                <a class="booking-item" href="#">
                                                    <div class="row">
                                                        
                                                        <div class="col-md-12">
                                                            <h3 class="booking-item-title">Package Inclusions</h3>
                                                            	<p><?php echo $result3['inclusions'] ?></p>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <h3 class="booking-item-title">Package Exclusions</h3>
                                                            	<p><?php echo $result3['exclusions'] ?></p>
                                                        </div>
                                                        <div class="col-md-12"><span class="booking-item-price"></span><span class="btn btn-primary">Know More</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            
                                            
                                        </ul>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-3">
                                    <div class="mt20">
                                        <ul class="booking-list">
                                            <li>
                                                <a class="booking-item" href="#">
                                                    <div class="row">
                                                        <!---<div class="col-md-4">
                                                            <img src="img/me_with_the_uke_800x600.jpg" alt="Image Alternative text" title="Me with the Uke" />
                                                        </div>--->
                                                        <div class="col-md-5">
                                                            <h5 class="booking-item-title">EMI Options</h5>
                                                            <p class="booking-item-description">
                                                               3 Months<br> 6 Months<br>9 Months<br>12 Months<br>18 Months<br>24 Months<br>
                                                                
                                                            </p>
                                                        </div>
                                                        <div class="col-md-3"><span class="booking-item-price"></span><span class="btn btn-primary">Know More</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            
                                            
                                        </ul>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-4">
                                    <div class="mt20">
                                        <ul class="booking-list">
                                             
                                             <li>
                                                <a class="booking-item" href="#">
                                                    <div class="row">
                                                        
                                                        <div class="col-md-12">
                                                            <h3 class="booking-item-title">Package Terms</h3>
                                                            	<p><?php echo $result3['package_terms'] ?></p>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <h3 class="booking-item-title">Package Cancellation</h3>
                                                            	<p><?php echo $result3['cancelation_policy'] ?></p>
                                                        </div>
                                                        <div class="col-md-12"><span class="booking-item-price"></span><span class="btn btn-primary">Know More</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            
                                            
                                        </ul>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab-5">
                                    <div class="mt20">
                                        <div class="text-right mb10"><a class="btn btn-primary" href="#">Write a review</a>
                                        </div>
                                        <ul class="booking-item-reviews list">
                                            <li>
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <div class="booking-item-review-person">
                                                            <a class="booking-item-review-person-avatar round" href="#">
                                                                <img src="img/afro_70x70.jpg" alt="Image Alternative text" title="Afro" />
                                                            </a>
                                                            <p class="booking-item-review-person-name"><a href="#">John Doe</a>
                                                            </p>
                                                            <p class="booking-item-review-person-loc">Palm Beach, FL</p><small><a href="#">60 Reviews</a></small>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-10">
                                                        <div class="booking-item-review-content">
                                                            <h5>"Nisl mattis felis neque suscipit"</h5>
                                                            <ul class="icon-group booking-item-rating-stars">
                                                                <li><i class="fa fa-star"></i>
                                                                </li>
                                                                <li><i class="fa fa-star"></i>
                                                                </li>
                                                                <li><i class="fa fa-star"></i>
                                                                </li>
                                                                <li><i class="fa fa-star"></i>
                                                                </li>
                                                                <li><i class="fa fa-star"></i>
                                                                </li>
                                                            </ul>
                                                            <p>Tristique sociosqu dapibus maecenas sed habitant porta blandit varius dis nulla quisque mi duis ultricies class eu quisque at dictumst lacus per ad<span class="booking-item-review-more"> Nullam placerat euismod enim massa eros litora primis lacus tincidunt mi urna luctus ridiculus fusce sem erat orci eget sollicitudin sollicitudin praesent ante ac suscipit posuere cubilia quisque hendrerit sociosqu habitant auctor vivamus senectus accumsan ipsum rutrum tincidunt vivamus</span>
                                                            </p>
                                                            <div class="booking-item-review-more-content">
                                                                <p>Quis iaculis purus nibh nam sollicitudin nostra porttitor sed sapien egestas odio vehicula faucibus risus erat vestibulum volutpat a torquent feugiat ultricies consectetur</p>
                                                                <p>Inceptos a posuere sociosqu congue libero laoreet imperdiet tempor parturient porttitor luctus aliquam at nibh fusce laoreet per potenti pharetra lacinia ultricies curabitur potenti sociosqu sed malesuada diam adipiscing ridiculus suspendisse et senectus sed sem primis neque hendrerit litora quisque cubilia lacinia inceptos blandit sollicitudin leo potenti urna morbi interdum ac a neque ridiculus hendrerit mi sapien mattis imperdiet duis metus class cursus facilisis nulla</p>
                                                                <p class="text-small mt20">Stayed March 2014, traveled as a couple</p>
                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <ul class="list booking-item-raiting-summary-list">
                                                                            <li>
                                                                                <div class="booking-item-raiting-list-title">Sleep</div>
                                                                                <ul class="icon-group booking-item-rating-stars">
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                </ul>
                                                                            </li>
                                                                            <li>
                                                                                <div class="booking-item-raiting-list-title">Location</div>
                                                                                <ul class="icon-group booking-item-rating-stars">
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                </ul>
                                                                            </li>
                                                                            <li>
                                                                                <div class="booking-item-raiting-list-title">Service</div>
                                                                                <ul class="icon-group booking-item-rating-stars">
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o text-gray"></i>
                                                                                    </li>
                                                                                </ul>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <ul class="list booking-item-raiting-summary-list">
                                                                            <li>
                                                                                <div class="booking-item-raiting-list-title">Clearness</div>
                                                                                <ul class="icon-group booking-item-rating-stars">
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                </ul>
                                                                            </li>
                                                                            <li>
                                                                                <div class="booking-item-raiting-list-title">Rooms</div>
                                                                                <ul class="icon-group booking-item-rating-stars">
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                    <li><i class="fa fa-smile-o"></i>
                                                                                    </li>
                                                                                </ul>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="booking-item-review-expand"><span class="booking-item-review-expand-more">More <i class="fa fa-angle-down"></i></span><span class="booking-item-review-expand-less">Less <i class="fa fa-angle-up"></i></span>
                                                            </div>
                                                            <p class="booking-item-review-rate">Was this review helpful?
                                                                <a class="fa fa-thumbs-o-up box-icon-inline round" href="#"></a><b class="text-color"> 20</b>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            
                                        </ul>
                                        
                                       
                                    </div>
                                </div>
                            </div>
                            
                                </div>
                              </div>
                              
                    <div class="col-md-4">
                        <div class="booking-item-meta">
                            <h3>Package Includes</h3>
						<table>
							
							<tr>
								<td>Package Theme:</td>
								<td class="event-res"><?php echo $result1['pcategory'];?></td>
							
							</tr>
						<tr>
								<td>Package Include:</td>
								<td class="event-res"><?php echo $result1['package_includes'];?></td>
							
							</tr>
							<tr>
								<td>Available Hotels:</td>
								<td class="event-res"><?php echo $result1['hotel_type'];?></td>
							
							</tr>
								
						</table>
                        </div>
                      <br>
                        <a href="#" class="btn btn-primary btn-lg">Call Us</a>&nbsp;&nbsp;&nbsp;<a class="popup-text btn btn-danger btn-lg" href="#search-dialog<?php echo $result1['package_id']; ?>">Book Now</a>
                         <!---------Booking lightbox---------->
                         <div class="mfp-with-anim mfp-hide mfp-dialog mfp-search-dialog" id="search-dialog<?php echo $result1['package_id']; ?>">
                                <h5>Book your selected package- <b> <?php echo $result1['pname']; ?> (<?php echo $result1['days']; ?>D/<?php echo $result1['nights']; ?>N)</b></h5>
                                <form action="package_booking.php" method="POST">
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
                                            <input type="hidden" name="orderid" value="<?php echo $result1['package_id'];?>">
                                             <input type="hidden" name="amount" value="<?php echo $result1['price'];?>">
                                                             
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
            </div>
            <div class="gap"></div>
        </div>


 <?php include("include/footer.php");?>
    </div>
</body>


</html>



