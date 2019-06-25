<?php 

//include("s_session.php"); 
include("include/config.php"); 

    $orderid=$_POST['orderid'];
    $fname=$_POST['fname'];
    $bpoint=$_POST['bpoint'];
    $tpax=$_POST['tpax'];
    $mobile=$_POST['mobile'];
    $email=$_POST['email'];
    $bdate=$_POST['start'];
    $today = date("Y-m-d H:i:s");
    $amount=$_POST['amount'];
    $randnum = mt_rand(1000000000, 9999999999);
    
    
    
    $query=mysql_query("INSERT INTO `holiday_booking`(`agent_id`, `tid`, `package_id`, `boarding_city`, `amount`, `booking_date`, `client_name`, `client_contact_no`, `client_email`, `DOJ`, `amount_received`, `adult`, `infant`, `children`) VALUES 
    ('Guest','$randnum','$orderid','$bpoint','$amount','$today','$fname','$mobile','$email','$bdate','0.00','$tpax','0','0')");

        
     
    header("location:success-payment.php?orderid=$orderid");
    
     ?>
    
            