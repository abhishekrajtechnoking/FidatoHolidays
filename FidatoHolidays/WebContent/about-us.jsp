<!DOCTYPE HTML>
<html>


<head>
    <?php include("include/head_css.php"); ?>
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

         <div class="bg-holder">
            <div class="bg-parallax" style="background-image:url(assets/images/about.jpg);"></div>
            <div class="bg-mask"></div>
            <div class="bg-holder-content">
                <div class="container">
                    <div class="gap gap-big text-white">
                        <div class="row">
                            <div class="col-md-10">
                               <p>&nbsp;</p><p>&nbsp;</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="container">
            <div class="row mt20">
                <div class="col-md-9">
                    <h3>About Fidato</h3>
                    <p>
                        The founders of Nishka and BTB Travel Tech is committed to the vision of hassle-free travel with holidays packages on EMI hence we came with a joint venture  Fidato Holidays. Fidato is facilitating your holidays packages on EMI basis. <br>
Whatever your travel plans are, we aim to deliver tailor-made, well planned and unforgettable holidays. From travel planning & insurance, to visa and medical assistance, we offer you total peace of mind.<br>

Besides helping you plan your holiday, we at Fidato love to share our travel stories from across the world. Get to know more about places you could travel to and experience via the Fidato blog.
                    </p>
                    <h4>The Story of Fidato Holidays</h4>
                    <p>Fidato is the brainchild of NSIS and BTB Travel Tech. The Founders are avid travelers and often came across multiple problems while travelling locally and abroad. Often people tend to delay their holiday plans due to dissatisfied service or financial constraints. Fidato assures the travelers with the service to pay in EMI( the first in India) and a 24x 7 hotline service to assist travelers with any issues. Be assured Be Fidato.</p>
                    
                   
                    <p>
                        <img src="assets/images/founding-fidato.jpg"/>
                    </p>
                    
        <div class="gap"></div>
            <h2 id="team-fidato">Fidato Team</h2>
            <div class="row">
                <div class="col-md-10">
                    <p class="text-bigger mb30">Our success is a result of teamwork and building upon our technical expertise and creative style providing a full-service solution to our clients.</p>
                </div>
            </div>            
            <div class="row row-wrap" data-gutter="60">
              
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="assets/images/team/ragini-ranjan.jpg" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Ragini Ranjan</h5>
                            <p class="thumb-meta text-small">Founder & CEO</p>
                        </div>
                    </div>
                </div>
                 <div class="col-md-3">
                   <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="assets/images/team/nishka-ranjan.jpg" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Nishka Ranjan</h5>
                            <p class="thumb-meta text-small">CFO</p>
                        </div>
                    </div> 
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="assets/images/team/shashi-kiran-sinha.jpg"/>
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Shashi Kiran Sinha</h5>
                            <p class="thumb-meta text-small">Director</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="thumb text-center">
                        <header class="thumb-header">
                            <img class="round" src="assets/images/team/rahul.jpg" />
                        </header>
                        <div class="thumb-caption">
                            <h5 class="thumb-title">Rahul Kumar</h5>
                            <p class="thumb-meta text-small">Operation Head</p>
                        </div>
                    </div>
                </div>
               
                
            </div>
                </div>
                <div class="col-md-3">
                    <aside class="sidebar-right">
                        <div class="sidebar-widget">
                            <h4>Quick Links</h4>
                            <ul class="icon-list list-category">
                                <li><a href="#"><i class="fa fa-angle-right"></i>About Us</a>
                                </li>
                                <li><a href="#team-fidato"><i class="fa fa-angle-right"></i>Fidato Team</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Careers</a>
                                </li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Travel News</a>
                                </li>
                                
                            </ul>
                        </div>
                        
                    </aside>
                </div>
            </div>
        </div>



        <div class="gap"></div>
        <?php include("include/footer.php");?>
    </div>
</body>


</html>



