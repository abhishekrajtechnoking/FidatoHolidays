<?php
$link = mysql_connect('localhost','fidatoho_nixtor','dMs#123*098');
    if (!$link) { 
    	die('Could not connect to MySQL: ' . mysql_error()); 
    }
    mysql_select_db("fidatoho_nixtor",$link);
    ?>