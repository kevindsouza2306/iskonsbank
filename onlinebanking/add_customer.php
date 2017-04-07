<?php 
session_start();
        
if(!isset($_SESSION['admin_login'])) 
    header('location:adminlogin.php');   
?>
    <?php
include '_inc/dbconn.php';
$name=  mysql_real_escape_string($_REQUEST['customer_name']);
$gender=  mysql_real_escape_string($_REQUEST['customer_gender']);
$dob=  mysql_real_escape_string($_REQUEST['customer_dob']);
$nominee=  mysql_real_escape_string($_REQUEST['customer_nominee']);
$type=  mysql_real_escape_string($_REQUEST['customer_account']);
$credit=  mysql_real_escape_string($_REQUEST['initial']);
$address=  mysql_real_escape_string($_REQUEST['customer_address']);
$mobile=  mysql_real_escape_string($_REQUEST['customer_mobile']);
$email= mysql_real_escape_string($_REQUEST['customer_email']);

//salting of password
$salt="@g26jQsG&nh*&#8v";
$password=  $_REQUEST['customer_pwd'];

$branch=  mysql_real_escape_string($_REQUEST['branch']);
$date=date("Y-m-d");
switch($branch){
	case 'MUMBAI': $ifsc="MUM23";
    break;
case 'KOLKATA': $ifsc="K421A";
    break;
case 'DELHI': $ifsc="D30AC";
    break;
case 'BANGALORE': $ifsc="B6A9E";
    break;
}

$string = $password;
$secret_key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
    

// Create the initialization vector for added security.
//$iv = mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB), MCRYPT_RAND);
$iv = "12345678911111111111111111111111";

// Encrypt $string
$encrypted_string = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $secret_key, $string, MCRYPT_MODE_CBC, $iv);


$sql="INSERT INTO `customer` (`id`, `name`, `gender`, `dob`, `nominee`, `account`, `address`, `mobile`, `email`, `password`, `branch`, `ifsc`, `lastlogin`, `accstatus`) values('','$name','$gender','$dob','$nominee','$type','$address','$mobile',
    '$email','$encrypted_string','$branch','$ifsc','','ACTIVE')";
mysql_query($sql) or die("Email already exists!");

$sql3="SELECT MAX(id) from customer";
$result=mysql_query($sql3) or die(mysql_error());
$rws=  mysql_fetch_array($result);
$id=$rws[0];
$sql1="CREATE TABLE passbook".$id." 
    (transactionid int(5) AUTO_INCREMENT, transactiondate date, name VARCHAR(255), branch VARCHAR(255), ifsc VARCHAR(255), credit int(10), debit int(10), 
    amount float(10,2), narration VARCHAR(255), PRIMARY KEY (transactionid))";

mysql_query($sql1) or die(mysql_error());
$sql4="INSERT INTO `passbook".$id."` values('','$date','$name','$branch','$ifsc','$credit','0','$credit','Account Open')";
mysql_query($sql4) or die(mysql_error());
header('location:admin_hompage.php');
?>