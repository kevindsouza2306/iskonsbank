<?php include "imports/header.php"?>
<?php
session_start();

$msg ="";
if(isset($_POST['Submit'])){

if($_POST['newpassword'] == $_POST['newpassword2'])
{
	if (strlen($_POST['newpassword']) > 7 && strlen($_POST['newpassword'])%2 == 0) {
		
	
$_SESSION['Rgrid'] = strtoupper($_POST['newpassword']);

header("location:register3.php");
	}
	else{
		$msg = "Password should be of minimum 8 characters and should be a even string";
}
	
}

else{

	$msg = "Password didn't match";
}

}


?>

<div class="right_panel1">
			<center>
			<h2>Provide us with a New Password<h2>
				<?php echo "<p style='color:red'>$msg</p>"?>
<form action="" method="post">



<input type="password" placeholder="Change the password" name="newpassword" required="required"style="width: 250px;height: 30px;background: transparent;border: 1px solid rgba(0,0,0,0.6);border-radius: 2px;color: #000;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 4px;margin-top: 10px;"><br>
<input type="Password" placeholder="Re-type Password" name="newpassword2" required="required"style="width: 250px;height: 30px;background: transparent;border: 1px solid rgba(0,0,0,0.6);border-radius: 2px;color: #000;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 4px;margin-top: 10px;">

<br>
<br>

<button type="submit" value="Submit" name="Submit" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Next</button>
				
</form><center>
	</div>
	</div>
 	<div class="left_panel">

  <h1>Change the password provided by the branch for security purpose......</h1>
  
  </div>


        <?php include 'footer.php' ?>
