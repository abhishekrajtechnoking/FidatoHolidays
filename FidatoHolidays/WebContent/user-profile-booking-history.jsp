<!DOCTYPE HTML>
<html>


<!-- Mirrored from remtsoy.com/tf_templates/traveler/demo_v1_7/user-profile-booking-history.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Apr 2019 14:22:26 GMT -->
<head>
    <title>Traveler - Booking History</title>


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
        <div class="demo_changer" id="demo_changer">
            <div class="demo-icon fa fa-sliders"></div>
            <div class="form_holder">
                <div class="line"></div>
                <p>Color Scheme</p>
                <div class="predefined_styles" id="styleswitch_area">
                    <a class="styleswitch" href="user-profile-booking-historyc392.html?default=true" style="background:#ED8323;"></a>
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
        <header id="main-header">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <a class="logo" href="index.html">
                                <img src="img/logo-invert.png" alt="Image Alternative text" title="Image Title" />
                            </a>
                        </div>
                        <div class="col-md-3 col-md-offset-2">
                            <form class="main-header-search">
                                <div class="form-group form-group-icon-left">
                                    <i class="fa fa-search input-icon"></i>
                                    <input type="text" class="form-control">
                                </div>
                            </form>
                        </div>
                        <div class="col-md-4">
                            <div class="top-user-area clearfix">
                                <ul class="top-user-area-list list list-horizontal list-border">
                                    <li class="top-user-area-avatar">
                                        <a href="user-profile.html">
                                            <img class="origin round" src="img/amaze_40x40.jpg" alt="Image Alternative text" title="AMaze" />Hi, John</a>
                                    </li>
                                    <li><a href="#">Sign Out</a>
                                    </li>
                                    <li class="nav-drop"><a href="#">USD $<i class="fa fa-angle-down"></i><i class="fa fa-angle-up"></i></a>
                                        <ul class="list nav-drop-menu">
                                            <li><a href="#">EUR<span class="right">€</span></a>
                                            </li>
                                            <li><a href="#">GBP<span class="right">£</span></a>
                                            </li>
                                            <li><a href="#">JPY<span class="right">円</span></a>
                                            </li>
                                            <li><a href="#">CAD<span class="right">$</span></a>
                                            </li>
                                            <li><a href="#">AUD<span class="right">A$</span></a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="top-user-area-lang nav-drop">
                                        <a href="#">
                                            <img src="img/flags/32/uk.png" alt="Image Alternative text" title="Image Title" />ENG<i class="fa fa-angle-down"></i><i class="fa fa-angle-up"></i>
                                        </a>
                                        <ul class="list nav-drop-menu">
                                            <li>
                                                <a title="German" href="#">
                                                    <img src="img/flags/32/de.png" alt="Image Alternative text" title="Image Title" /><span class="right">GER</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a title="Japanise" href="#">
                                                    <img src="img/flags/32/jp.png" alt="Image Alternative text" title="Image Title" /><span class="right">JAP</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a title="Italian" href="#">
                                                    <img src="img/flags/32/it.png" alt="Image Alternative text" title="Image Title" /><span class="right">ITA</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a title="French" href="#">
                                                    <img src="img/flags/32/fr.png" alt="Image Alternative text" title="Image Title" /><span class="right">FRE</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a title="Russian" href="#">
                                                    <img src="img/flags/32/ru.png" alt="Image Alternative text" title="Image Title" /><span class="right">RUS</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a title="Korean" href="#">
                                                    <img src="img/flags/32/kr.png" alt="Image Alternative text" title="Image Title" /><span class="right">KOR</span>
                                                </a>
                                            </li>
                                        </ul>
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
                        <li><a href="index.jsp">Home</a>
                            <ul>
                                <li><a href="index.jsp">Default</a>
                                </li>
                                <li><a href="index-1.html">Layout 1</a>
                                </li>
                                <li><a href="index-2.html">Layout 2</a>
                                </li>
                                <li><a href="index-3.html">Layout 3</a>
                                </li>
                                <li><a href="index-4.html">Layout 4</a>
                                </li>
                                <li><a href="index-5.html">Layout 5</a>
                                </li>
                                <li><a href="index-6.html">Layout 6</a>
                                </li>
                                <li><a href="index-7.html">Layout 7</a>
                                </li>
                            </ul>
                        </li>
                        <li class="active"><a href="success-payment.jsp">Pages</a>
                            <ul>
                                <li><a href="success-payment.jsp">Success Payment</a>
                                </li>
                                <li class="active"><a href="user-profile.jsp">User Profile</a>
                                    <ul>
                                        <li><a href="user-profile.jsp">Overview</a>
                                        </li>
                                        <li><a href="user-profile-settings.jsp">Settings</a>
                                        </li>
                                        <li><a href="user-profile-photos.jsp">Photos</a>
                                        </li>
                                        <li class="active"><a href="user-profile-booking-history.jsp">Booking History</a>
                                        </li>
                                        <li><a href="user-profile-cards.jsp">Cards</a>
                                        </li>
                                        <li><a href="user-profile-wishlist.jsp">Wishlist</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="blog.jsp">Blog</a>
                                    <ul>
                                        <li><a href="blog.jsp">Sidebar Right</a>
                                        </li>
                                        <li><a href="blog-sidebar-left.html">Sidebar Left</a>
                                        </li>
                                        <li><a href="blog-full-width.html">Full Width</a>
                                        </li>
                                        <li><a href="blog-post.html">Post</a>
                                            <ul>
                                                <li><a href="blog-post.html">Sidebar Right</a>
                                                </li>
                                                <li><a href="blog-post-sidebar-left.html">Sidebar Left</a>
                                                </li>
                                                <li><a href="blog-post-full-width.html">Full Width</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="404.html">404 page</a>
                                </li>
                                <li><a href="contact-us.jsp">Contact Us</a>
                                </li>
                                <li><a href="about.jsp">About</a>
                                </li>
                                <li><a href="log_reg.jsp">Login/Register</a>
                                    <ul>
                                        <li><a href="log_reg.jsp">Full Page</a>
                                        </li>
                                        <li><a href="log_reg.jsp">Normal</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="loading.jsp">Loading</a>
                                </li>
                                <li><a href="comming-soon.html">Comming Soon</a>
                                </li>
                                <li><a href="gallery.html">Gallery</a>
                                    <ul>
                                        <li><a href="gallery.html">4 Columns</a>
                                        </li>
                                        <li><a href="gallery-3-col.html">3 columns</a>
                                        </li>
                                        <li><a href="gallery-2-col.html">2 columns</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="page-full-width.html">Full Width</a>
                                </li>
                                <li><a href="page-sidebar-right.html">Sidebar Right</a>
                                </li>
                                <li><a href="page-sidebar-left.html">Sidebar Left</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="feature-typography.html">Features</a>
                            <ul>
                                <li><a href="feature-typography.html">Typography</a>
                                </li>
                                <li><a href="feature-icons.html">Icons</a>
                                </li>
                                <li><a href="feature-forms.html">Forms</a>
                                </li>
                                <li><a href="feature-icon-effects.html">Icon Effects</a>
                                </li>
                                <li><a href="feature-elements.html">Elements</a>
                                </li>
                                <li><a href="feature-grid.html">Grid</a>
                                </li>
                                <li><a href="feature-hovers.html">Hover effects</a>
                                </li>
                                <li><a href="feature-lightbox.html">Lightbox</a>
                                </li>
                                <li><a href="feature-media.html">Media</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="hotels.html">Hotels</a>
                            <ul>
                                <li><a href="hotel-details.html">Details</a>
                                    <ul>
                                        <li><a href="hotel-details.html">Layout 1</a>
                                        </li>
                                        <li><a href="hotel-details-2.html">Layout 2</a>
                                        </li>
                                        <li><a href="hotel-details-3.html">Layout 3</a>
                                        </li>
                                        <li><a href="hotel-details-4.html">Layout 4</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="hotel-payment.html">Payment</a>
                                    <ul>
                                        <li><a href="hotel-payment.html">Registered</a>
                                        </li>
                                        <li><a href="hotel-payment-registered-card.html">Existed Cards</a>
                                        </li>
                                        <li><a href="hotel-payment-unregistered.html">Unregistered</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="hotel-search.html">Search</a>
                                    <ul>
                                        <li><a href="hotel-search.html">Layout 1</a>
                                        </li>
                                        <li><a href="hotel-search-2.html">Layout 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="hotels.html">Results</a>
                                    <ul>
                                        <li><a href="hotels.html">Layout 1</a>
                                        </li>
                                        <li><a href="hotels-search-results-2.html">Layout 2</a>
                                        </li>
                                        <li><a href="hotels-search-results-3.html">Layout 3</a>
                                        </li>
                                        <li><a href="hotels-search-results-4.html">Layout 4</a>
                                        </li>
                                        <li><a href="hotel-search-results-5.html">Layout 5</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="flights.html">Flights</a>
                            <ul>
                                <li><a href="flight-payment.html">Payment</a>
                                    <ul>
                                        <li><a href="flight-payment.html">Registered</a>
                                        </li>
                                        <li><a href="flight-payment-registered-card.html">Existed Cards</a>
                                        </li>
                                        <li><a href="flight-payment-unregistered.html">Unregistered</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="flight-search.html">Search</a>
                                    <ul>
                                        <li><a href="flight-search.html">Layout 1</a>
                                        </li>
                                        <li><a href="flight-search-2.html">Layout 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="flights.html">List</a>
                                    <ul>
                                        <li><a href="flights.html">Layout 1</a>
                                        </li>
                                        <li><a href="flights-search-results-2.html">Layout 2</a>
                                        </li>
                                        <li><a href="flights-search-results-3.html">Layout 3</a>
                                        </li>
                                        <li><a href="flights-search-results-4.html">Layout 4</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="rentals.html">Rentals</a>
                            <ul>
                                <li><a href="rentals-details.html">Details</a>
                                    <ul>
                                        <li><a href="rentals-details.html">Layout 1</a>
                                        </li>
                                        <li><a href="rentals-details-2.html">Layout 2</a>
                                        </li>
                                        <li><a href="rentals-details-3.html">Layout 3</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="rental-payment.html">Payment</a>
                                    <ul>
                                        <li><a href="rental-payment.html">Registered</a>
                                        </li>
                                        <li><a href="rental-payment-registered-card.html">Existed Cards</a>
                                        </li>
                                        <li><a href="rental-payment-unregistered.html">Unregistered</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="rentals-search.html">Search</a>
                                    <ul>
                                        <li><a href="rentals-search.html">Layout 1</a>
                                        </li>
                                        <li><a href="rentals-search-2.html">Layout 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="rentals.html">Results</a>
                                    <ul>
                                        <li><a href="rentals.html">Layout 1</a>
                                        </li>
                                        <li><a href="rentals-search-results-2.html">Layout 2</a>
                                        </li>
                                        <li><a href="rentals-search-results-3.html">Layout 3</a>
                                        </li>
                                        <li><a href="rentals-search-results-4.html">Layout 4</a>
                                        </li>
                                        <li><a href="rentals-search-results-5.html">Layout 5</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="cars.html">Cars</a>
                            <ul>
                                <li><a href="car-details.html">Details</a>
                                </li>
                                <li><a href="car-payment.html">Payment</a>
                                    <ul>
                                        <li><a href="car-payment.html">Registered</a>
                                        </li>
                                        <li><a href="car-payment-registered-card.html">Existed Cards</a>
                                        </li>
                                        <li><a href="car-payment-unregistered.html">Unregistered</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="car-search.html">Search</a>
                                    <ul>
                                        <li><a href="car-search.html">Layout 1</a>
                                        </li>
                                        <li><a href="car-search-2.html">Layout 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="cars.html">Results</a>
                                    <ul>
                                        <li><a href="cars.html">Layout 1</a>
                                        </li>
                                        <li><a href="cars-results-2.html">Layout 2</a>
                                        </li>
                                        <li><a href="cars-results-3.html">Layout 3</a>
                                        </li>
                                        <li><a href="cars-results-4.html">Layout 4</a>
                                        </li>
                                        <li><a href="cars-results-5.html">Layout 5</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="activities.html">Activities</a>
                            <ul>
                                <li><a href="activitiy-details.html">Details</a>
                                    <ul>
                                        <li><a href="activitiy-details.html">Layout 1</a>
                                        </li>
                                        <li><a href="activitiy-details-2.html">Layout 2</a>
                                        </li>
                                        <li><a href="activitiy-details-3.html">Layout 3</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="activity-search.html">Search</a>
                                    <ul>
                                        <li><a href="activity-search.html">Layout 1</a>
                                        </li>
                                        <li><a href="activity-search-2.html">Layout 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="activitiy-payment.html">Payment</a>
                                    <ul>
                                        <li><a href="activitiy-payment.html">Registered</a>
                                        </li>
                                        <li><a href="activity-payment-registered-card.html">Existed Cards</a>
                                        </li>
                                        <li><a href="activitiy-payment-unregistered.html">Unregistered</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="activities.html">Results</a>
                                    <ul>
                                        <li><a href="activities.html">Layout 1</a>
                                        </li>
                                        <li><a href="activities-search-results-2.html">Layout 2</a>
                                        </li>
                                        <li><a href="activities-search-results-3.html">Layout 3</a>
                                        </li>
                                        <li><a href="activities-search-results-4.html">Layout 4</a>
                                        </li>
                                        <li><a href="activities-search-results-5.html">Layout 5</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </header>

        <div class="container">
            <h1 class="page-title">Booking History</h1>
        </div>




        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <aside class="user-profile-sidebar">
                        <div class="user-profile-avatar text-center">
                            <img src="img/amaze_300x300.jpg" alt="Image Alternative text" title="AMaze" />
                            <h5>John Doe</h5>
                            <p>Member Since May 2012</p>
                        </div>
                        <ul class="list user-profile-nav">
                            <li><a href="user-profile.html"><i class="fa fa-user"></i>Overview</a>
                            </li>
                            <li><a href="user-profile-settings.html"><i class="fa fa-cog"></i>Settings</a>
                            </li>
                            <li><a href="user-profile-photos.html"><i class="fa fa-camera"></i>My Travel Photos</a>
                            </li>
                            <li><a href="user-profile-booking-history.html"><i class="fa fa-clock-o"></i>Booking History</a>
                            </li>
                            <li><a href="user-profile-cards.html"><i class="fa fa-credit-card"></i>Credit/Debit Cards</a>
                            </li>
                            <li><a href="user-profile-wishlist.html"><i class="fa fa-heart-o"></i>Wishlist</a>
                            </li>
                        </ul>
                    </aside>
                </div>
                <div class="col-md-9">
                    <div class="checkbox">
                        <label>
                            <input class="i-check" type="checkbox" />Show only current trip</label>
                    </div>
                    <table class="table table-bordered table-striped table-booking-history">
                        <thead>
                            <tr>
                                <th>Type</th>
                                <th>Title</th>
                                <th>Location</th>
                                <th>Order Date</th>
                                <th>Execution Date</th>
                                <th>Cost</th>
                                <th>Current</th>
                                <th>Cancel</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-plane"></i><small>flight</small>
                                </td>
                                <td class="booking-history-title">London to New York City</td>
                                <td>New york City</td>
                                <td>4/12/2014</td>
                                <td>4/25/2014</td>
                                <td>$350</td>
                                <td class="text-center"><i class="fa fa-check"></i>
                                </td>
                                <td class="text-center"><a class="btn btn-default btn-sm" href="#">Cancel</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-building-o"></i><small>hotel</small>
                                </td>
                                <td class="booking-history-title">InterContinental New York Barclay</td>
                                <td>New york City</td>
                                <td>4/12/2014</td>
                                <td>4/25/2014 <i class="fa fa-long-arrow-right"></i> 4/30/2014</td>
                                <td>$1200</td>
                                <td class="text-center"><i class="fa fa-check"></i>
                                </td>
                                <td class="text-center"><a class="btn btn-default btn-sm" href="#">Cancel</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-dashboard"></i><small>car</small>
                                </td>
                                <td class="booking-history-title">Maserati GranTurismo</td>
                                <td>New york City</td>
                                <td>4/12/2014</td>
                                <td>4/25/2014 <i class="fa fa-long-arrow-right"></i> 4/30/2014</td>
                                <td>$500</td>
                                <td class="text-center"><i class="fa fa-check"></i>
                                </td>
                                <td class="text-center"><a class="btn btn-default btn-sm" href="#">Cancel</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-bolt"></i><small>activity</small>
                                </td>
                                <td class="booking-history-title">Central Park Trip</td>
                                <td>New york City</td>
                                <td>4/12/2014</td>
                                <td>4/27/2014</td>
                                <td>$0</td>
                                <td class="text-center"><i class="fa fa-check"></i>
                                </td>
                                <td class="text-center"></td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-bolt"></i><small>activity</small>
                                </td>
                                <td class="booking-history-title">Music Festival</td>
                                <td>New york City</td>
                                <td>4/12/2014</td>
                                <td>4/28/2014</td>
                                <td>$100</td>
                                <td class="text-center"><i class="fa fa-check"></i>
                                </td>
                                <td class="text-center"><a class="btn btn-default btn-sm" href="#">Cancel</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-bolt"></i><small>activity</small>
                                </td>
                                <td class="booking-history-title">Adrenaline Madness</td>
                                <td>New york City</td>
                                <td>4/12/2014</td>
                                <td>4/29/2014</td>
                                <td>$210</td>
                                <td class="text-center"><i class="fa fa-check"></i>
                                </td>
                                <td class="text-center"><a class="btn btn-default btn-sm" href="#">Cancel</a>
                                </td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-plane"></i><small>flight</small>
                                </td>
                                <td class="booking-history-title">London to Bali</td>
                                <td>Bali</td>
                                <td>2/12/2014</td>
                                <td>2/20/2014</td>
                                <td>$500</td>
                                <td class="text-center"><i class="fa fa-times"></i>
                                </td>
                                <td class="text-center"></td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-home"></i><small>rental</small>
                                </td>
                                <td class="booking-history-title">Modern Chic 3BR Villa Fanisa</td>
                                <td>Bali</td>
                                <td>2/12/2014</td>
                                <td>2/20/2014 <i class="fa fa-long-arrow-right"></i> 2/23/2014</td>
                                <td>$800</td>
                                <td class="text-center"><i class="fa fa-times"></i>
                                </td>
                                <td class="text-center"></td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-plane"></i><small>flight</small>
                                </td>
                                <td class="booking-history-title">London to San Fancisco</td>
                                <td>San Fancisco</td>
                                <td>1/01/2014</td>
                                <td>1/05/2014</td>
                                <td>$423</td>
                                <td class="text-center"><i class="fa fa-times"></i>
                                </td>
                                <td class="text-center"></td>
                            </tr>
                            <tr>
                                <td class="booking-history-type"><i class="fa fa-building-o"></i><small>hotel</small>
                                </td>
                                <td class="booking-history-title">Wellington Hotel</td>
                                <td>San Fancisco</td>
                                <td>1/01/2014</td>
                                <td>1/05/2014 <i class="fa fa-long-arrow-right"></i> 1/15/2014</td>
                                <td>$850</td>
                                <td class="text-center"><i class="fa fa-times"></i>
                                </td>
                                <td class="text-center"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>



        <div class="gap"></div>
        <footer id="main-footer">
            <div class="container">
                <div class="row row-wrap">
                    <div class="col-md-3">
                        <a class="logo" href="index.html">
                            <img src="img/logo-invert.png" alt="Image Alternative text" title="Image Title" />
                        </a>
                        <p class="mb20">Booking, reviews and advices on hotels, resorts, flights, vacation rentals, travel packages, and lots more!</p>
                        <ul class="list list-horizontal list-space">
                            <li>
                                <a class="fa fa-facebook box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-twitter box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-google-plus box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-linkedin box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-pinterest box-icon-normal round animate-icon-bottom-to-top" href="#"></a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-md-3">
                        <h4>Newsletter</h4>
                        <form>
                            <label>Enter your E-mail Address</label>
                            <input type="text" class="form-control">
                            <p class="mt5"><small>*We Never Send Spam</small>
                            </p>
                            <input type="submit" class="btn btn-primary" value="Subscribe">
                        </form>
                    </div>
                    <div class="col-md-2">
                        <ul class="list list-footer">
                            <li><a href="#">About US</a>
                            </li>
                            <li><a href="#">Press Centre</a>
                            </li>
                            <li><a href="#">Best Price Guarantee</a>
                            </li>
                            <li><a href="#">Travel News</a>
                            </li>
                            <li><a href="#">Jobs</a>
                            </li>
                            <li><a href="#">Privacy Policy</a>
                            </li>
                            <li><a href="#">Terms of Use</a>
                            </li>
                            <li><a href="#">Feedback</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h4>Have Questions?</h4>
                        <h4 class="text-color">+1-202-555-0173</h4>
                        <h4><a href="#" class="text-color">support@traveler.com</a></h4>
                        <p>24/7 Dedicated Customer Support</p>
                    </div>

                </div>
            </div>
        </footer>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/slimmenu.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/bootstrap-timepicker.js"></script>
        <script src="js/nicescroll.js"></script>
        <script src="js/dropit.js"></script>
        <script src="js/ionrangeslider.js"></script>
        <script src="js/icheck.js"></script>
        <script src="js/fotorama.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
        <script src="js/typeahead.js"></script>
        <script src="js/card-payment.js"></script>
        <script src="js/magnific.js"></script>
        <script src="js/owl-carousel.js"></script>
        <script src="js/fitvids.js"></script>
        <script src="js/tweet.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/gridrotator.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/switcher.js"></script>
    </div>
</body>


<!-- Mirrored from remtsoy.com/tf_templates/traveler/demo_v1_7/user-profile-booking-history.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Apr 2019 14:22:27 GMT -->
</html>



