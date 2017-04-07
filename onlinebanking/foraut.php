<?php

include '_inc/dbconn.php';
session_start();
// Passkey that got from link 
$passkey=$_GET['key'];
$tbl_name1="forgot_password";

// Retrieve data from table where row that match this passkey 
$sql1="SELECT * FROM $tbl_name1 WHERE confirm_code ='$passkey'";
$result1=mysql_query($sql1);
if($result1){

// Count how many row has this passkey
$count=mysql_num_rows($result1);

// if found this passkey in our database, retrieve data from table "temp_members_db"
if($count==1){
	$rows=mysql_fetch_assoc($result1);
	$_SESSION['Remail'] = $rows['email'];

	
	$sql3="DELETE FROM $tbl_name1 WHERE confirm_code = '$passkey'";
$result3=mysql_query($sql3);

	header("location:register2.php");
}
else {
echo "Wrong Confirmation code";
}
}