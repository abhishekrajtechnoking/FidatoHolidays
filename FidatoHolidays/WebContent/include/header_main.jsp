
<%@include file="config.jsp" %>

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
                        <li class="active"><a href="index.php">Home</a></li>
                        <li><a href="#">Domestic Holidays</a>
                            <ul>
                                <?php
                                    $qry1= mysql_query("SELECT `state_city` FROM `package_holidays` where `destination_type`='Domestic' group by `state_city`");
                   
                                    while ( $row1 = mysql_fetch_assoc($qry1)){ 
                               
                                 ?>
                                <li><a href="domestic-holidays.php?dom_dest=<?php echo $row1['state_city'];?>"><?php echo $row1['state_city'];?></a></li>
                                 <?php  }  ?>
                            </ul>
                        </li>
                        <li><a href="#">International Holidays</a>
                            <ul>
                                <?php
                                    $qry3= mysql_query("SELECT `state_city` FROM `package_holidays` where `destination_type`='International' group by `state_city`");
                   
                                    while ( $row3 = mysql_fetch_assoc($qry3)){ 
                               
                                 ?>
                                <li><a href="international-holidays.php?int_dest=<?php echo $row3['state_city'];?>"><?php echo $row3['state_city'];?></a></li>
                                 <?php  }  ?>
                                
                            </ul>
                        </li>
                        <li><a href="#">Theme Holidays</a>
                            <ul>
                                <?php
                                    $qry2= mysql_query("SELECT `pcategory` FROM `package_holidays` group by `pcategory`");
                   
                            while ( $row2 = mysql_fetch_assoc($qry2)){ 
                               
                                 ?>
                                <li><a href="package-by-theme.php?theme=<?php echo $row2['pcategory'];?>"><?php echo $row2['pcategory'];?></a></li>
                                 <?php  }  ?>
                            </ul>
                        </li>
                       <li><a href="#">Popular Destinations</a>
                            <ul>
                                <?php
                                    $qry4= mysql_query("SELECT `destination` FROM `package_holidays` group by `destination` limit 10");
                   
                            while ( $row4 = mysql_fetch_assoc($qry4)){ 
                                $destination=$row4['destination'];
                			   //echo $destination;
                			   $qrydestid=mysql_query("SELECT `destinations` FROM `package_destinations` where `areaid`='$destination'");
                			   $qrydestination=mysql_fetch_assoc($qrydestid);
                               
                                 ?>
                                <li><a href="popular-destinations.php?destination=<?php echo $destination;?>"><?php echo $qrydestination['destinations'];?></a></li>
                                 <?php  }  ?>
                            </ul>
                        </li>
                                 <li><a href="#">Hot Deals</a>
                                    <ul>
                                        <li><a href="fidato-packages.php">All Package on EMI</a>
                                        </li>
                                       
                                    </ul>
                                </li>
                        
                        
                       
                    </ul>
                </div>
            </div>
        </header>