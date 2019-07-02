<!DOCTYPE HTML>
<html>


<head>
	<%@include file="include/head_css.jsp" %>
  
   <%
   		String ordId=request.getParameter("orderid");
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
    <div class="global-wrap">
    	<%@include file="include/header_main.jsp" %>
         

        <div class="gap"></div>
        
        <%
        	PreparedStatement psSucEnq=con.prepareStatement("SELECT * FROM user_enquiry where enq_no='"+ordId+"'");
        	ResultSet rsSucEnq=psSucEnq.executeQuery();
        	rsSucEnq.next();
        %>


        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <i class="fa fa-check round box-icon-large box-icon-center box-icon-success mb30"></i>	
                    <h3 class="text-center">Hi <%=rsSucEnq.getString("fullname") %>, your enquiry was sent to Fidato!</h3>
                    <h5 class="text-center mb30">Enquiry details has been sent to <%=rsSucEnq.getString("email") %></h5>
                    <ul class="order-payment-list list mb30">
                        <li>
                            <div class="row">
                                <div class="col-xs-9">
                                    <h5>Subject: <%=rsSucEnq.getString("subject") %></h5>
                                    <p>Details: <%=rsSucEnq.getString("message") %></p>
                                </div>
                               
                            </div>
                        </li>
                        
                    </ul>
                    <!--<h4 class="text-center">You might also need in New York</h4>-->
                    <ul class="list list-inline list-center">
                        <li><a class="btn btn-primary" href="index.jsp"><i class="fa fa-home"></i> Go to home</a>
                            
                        </li>
                        <li><a class="btn btn-primary" href="#"><i class="fa fa-power-off"></i> Exit</a>
                           
                        </li>
                        
                    </ul>
                </div>
            </div>
            <div class="gap"></div>
        </div>


<%@include file="include/footer.jsp" %>
   
    </div>
</body>


</html>



