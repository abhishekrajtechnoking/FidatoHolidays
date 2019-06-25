<?php 

//include("s_session.php"); 
include("include/config.php"); 

    $fname=$_POST['fname'];
    $mobile=$_POST['mobile'];
    $email=$_POST['email'];
    $subject=$_POST['subject'];
    $today = date("Y-m-d H:i:s");
    $message=$_POST['message'];
    $randnum = mt_rand(1000000000, 9999999999);
    
    
    
    $query=mysql_query("INSERT INTO `user_enquiry`(`enq_no`, `fullname`, `email`, `mobile`, `subject`, `message`, `time`, `status`, `followups_status`, `followups_comment`) 
    VALUES ('$randnum','$fname','$email','$mobile','$subject','$message','$today','Pending','Waiting','NA')");

        
     
    header("location:success-enquiry.php?orderid=$randnum");
    
     ?>
    
            