<?php 
session_start();
$link = mysql_connect('localhost','fidatoho_nixtor','dMs#123*098');
    if (!$link) { 
    	die('Could not connect to MySQL: ' . mysql_error()); 
    }
    mysql_select_db("fidatoho_nixtor",$link);

   if(isset($_POST['login']))
   {


     $email=$_POST['userid'];
     $password=$_POST['password'];
     $admin="Admin";
     $Fsuper="Field Supervisor";
     $Manager="Manager";
     $employee="Field Employee";
     $qry="select * from employee_registration where user_id='$email' and password='$password'";
    
     $ex=mysql_query($qry);

     $res=mysql_fetch_array($ex);

     if($res['user_id']==$email and $res['password']==$password)
     {
             $qry1="select * from employee_registration where user_id='$email' and password='$password'";
    
     $ex2=mysql_query($qry1);

     $res2=mysql_fetch_array($ex2);
    $role=$res2['role'];
      if($role==$admin)
     {
            
                 session_start();
                 $_SESSION['admin']=$email;
                 header('location:/holidays/dms/index.php');
     }else if($role==$Fsuper){
         
             session_start();
                 $_SESSION['supervisor']=$email;
                 header('location:/supervisor/index.php');
         
         
         
     }else if($role==$employee){
         
             session_start();
                 $_SESSION['employee']=$email;
                 header('location:/employee/index.php');
         
         
         
     }
         else if($role==$Manager){
         
             session_start();
                 $_SESSION['Manager']=$email;
                 header('location:/manager/index.php');
         
         
         
     }
     }
     else
     {
     //  echo "Wrong UserName OR Password";
    
     header('refresh:0, url=company_login.php?id=1');
     }

   }

?>