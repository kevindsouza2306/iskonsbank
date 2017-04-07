<?php
include '_inc/dbconn.php';
session_start();
//error_reporting(0);
$option = $_REQUEST['option'];
if($option=='pattern')
{
	$pass = $_POST['password'];
//echo $pass;



//$pass = "sachin";
$arr1 = str_split($pass);
$result = sizeof($arr1);
$salt = "abcd";
//print_r($arr1);

$m = "";
$x = "";
    
if($result  % 2 == 0)
{
foreach ($arr1 as $keys => &$val)
{
	$z = "";
	if ($keys % 2 == 0)
	{

		$x = $val;

	}


	else
	{

		$z = $x.$val.$salt;
	}
	$m = $m.$z;
	


}


//echo "$m";
}


else
{

foreach ($arr1 as $keys => &$val)
{
	$z = "";
	

	if ($keys % 2 == 0)
	{

		$x = $val;

	}


	else
	{

		$z = $x.$val.$salt;
	}
	$m = $m.$z;

	if ($keys == $result-1)
	 {
		$m = $m.end($arr1);	

	}


}

//echo $result;
//echo "$m";




}

$sha = hash('sha256', $m);
//echo $sha;


if($sha == $_SESSION['pattern'])
{
	
	 $_SESSION['customer_login']=1;
	 header('location:customer_account_summary.php'); 
	
}
else {
	
	
	echo "<CENTER>";
		echo "<b style='color:red; font-size:35px'>Incorrect Password</b>";
		echo "<a href='pattern.php'><h3>Back</h3></a>";
		echo "</CENTER>";
	
}
	
	
	
}

if($option=='usears')
{
	
	
$username = htmlspecialchars($_REQUEST['username']);
error_reporting(0);
$_SESSION['username'] = $username;
if($_POST['Grid'])
{
	


	
	
	$query = mysql_query("SELECT * FROM `customer` WHERE email='$username'");
	$numrows = mysql_num_rows($query);
	
	
	if ($numrows!=0)
	{
		while($row = mysql_fetch_assoc($query))
		{
			$secret_key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
    

$iv = "12345678911111111111111111111111";


$encrypted_string = $row['password'];

$decrypted_string = mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $secret_key, $encrypted_string, MCRYPT_MODE_CBC, $iv);




			$_SESSION['pl'] = $row['pwdlen'];
			$_SESSION['cust_id'] = $row['email'];
			$_SESSION['pd'] = $decrypted_string ;
			$_SESSION['pattern'] = $row['pattern'];
		header("location:logingrid.php");
		}
	
	
	}
	else
	{
		

		echo "<CENTER>";
		echo "<b style='color:red; font-size:35px'>Not In</b>";
		echo "<a href='login.php'><h3>Back</h3></a>";
		echo "</CENTER>";
	
	}
}
else if($_POST['Color'])
{
	
	
	$query = mysql_query("SELECT * FROM `customer` WHERE `email` = '$username'");
	$numrows = mysql_num_rows($query);
	
	
	if ($numrows!=0)
	{
		while($row = mysql_fetch_assoc($query))
		{

			$secret_key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
    

$iv = "12345678911111111111111111111111";


$encrypted_string = $row['color_passwd'];

$decrypted_string = mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $secret_key, $encrypted_string, MCRYPT_MODE_CBC, $iv);




			
			$_SESSION['cust_id'] = $row['email'];
			$_SESSION['color_pd'] = $decrypted_string;
			$_SESSION['pattern'] = $row['pattern'];
		

		header("location:logincolor.php");
		}
	
	
	}
	else
	{
			echo "<CENTER>";
		echo "<b style='color:red; font-size:35px'>Not In</b>";
		echo "<a href='login.php'><h3>Back</h3></a>";
		echo "</CENTER>";
	}
	
	
}
else
{
$confirm_code=md5(uniqid(rand())); 
$sql="INSERT INTO forgot_password(confirm_code, email)VALUES('$confirm_code', '$username')";
$result=mysql_query($sql);
$link = "email.php?key=".$confirm_code;
	header("location:$link");
	
}
	
	
	
}


if($option=='color')
{
	
$passwd = htmlspecialchars($_REQUEST['password']);
if($passwd == $_SESSION['color_ses'])
{
	
	header("location:pattern.php");
	
}
else {
	
	echo "incorrect password";
	
}
	
}

if($option=='grid')
{
	
	$passwd = htmlspecialchars($_REQUEST['password']);
$passwd = strtoupper($passwd);
if($passwd == $_SESSION['sespass'])
{
	
	header("location:pattern.php");
	
}
else {
	
	echo "incorrect password";
	
}

}

if($option=='register')
{
$email = htmlspecialchars($_REQUEST['username']);
$passwd = htmlspecialchars($_REQUEST['password']);

$string = $passwd;
$secret_key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
    

$iv = "12345678911111111111111111111111";


$encrypted_string = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $secret_key, $string, MCRYPT_MODE_CBC, $iv);





$query = mysql_query("SELECT * FROM `customer` WHERE `email` = '$email' AND `password`='".$encrypted_string."'AND `pattern`='' AND `color_passwd`=''");
$numrows = mysql_num_rows($query);
if ($numrows!=0)
	{
		while($row = mysql_fetch_assoc($query))
		{
			
		
		$_SESSION['Remail'] = $email;
		header("location:register2.php");
		
		
		}
	
	
	}
	else
	{
		echo "<CENTER>";
		echo "<b>Incorrect Password OR You Might have Already Registered Please Contact your Branch For futher Details<b>";
		echo "<a href='index.php'><h3>Back</h3></a>";
		echo "</CENTER>";
	}
	
	






}




if($option == 'register4')
{
        
if($_POST['submit'] == "submit"){

$string = $_SESSION['Rgrid'];
$plen = strlen($_SESSION['Rgrid']);

$string1 = $_SESSION['Rcolor'];

$secret_key = pack('H*', "bcb04b7e103a0cd8b54763051cef08bc55abe029fdebae5e1d417e2ffb2a00a3");
    

$iv = "12345678911111111111111111111111";


$encrypted_string = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $secret_key, $string, MCRYPT_MODE_CBC, $iv);
$encrypted_string1 = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $secret_key, $string1, MCRYPT_MODE_CBC, $iv);





$pass = htmlspecialchars($_REQUEST['password']);
$arr1 = str_split($pass);
$result = sizeof($arr1);
$salt = "abcd";
//print_r($arr1);

$m = "";
$x = "";
    
if($result  % 2 == 0)
{
foreach ($arr1 as $keys => &$val)
{
	$z = "";
	if ($keys % 2 == 0)
	{

		$x = $val;

	}


	else
	{

		$z = $x.$val.$salt;
	}
	$m = $m.$z;
	


}


//echo "$m";
}


else
{

foreach ($arr1 as $keys => &$val)
{
	$z = "";
	

	if ($keys % 2 == 0)
	{

		$x = $val;

	}


	else
	{

		$z = $x.$val.$salt;
	}
	$m = $m.$z;

	if ($keys == $result-1)
	 {
		$m = $m.end($arr1);	

	}


}

//echo $result;
//echo "$m";




}



$sha = hash('sha256', $m);



mysql_query("UPDATE customer SET password = '".$encrypted_string."', color_passwd = '".$encrypted_string1."', pattern = '".$sha."', pwdlen ='".$plen."' WHERE email='".$_SESSION['Remail']."'");
$_SESSION['customer_login']=1;
        $_SESSION['cust_id']=$_SESSION['Remail'];
    header('location:customer_account_summary.php'); 
}
}
?>