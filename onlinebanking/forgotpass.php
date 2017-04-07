<?php include "imports/header.php";
include '_inc/dbconn.php';
session_start();

if(isset($_POST['submit'])){
$queryans = mysql_query("SELECT * FROM `customer` WHERE `email`='".$_SESSION['username']."' AND `secans`='".$_POST['Answer']."'");
$numrows = mysql_num_rows($queryans);
	
	if ($numrows!=0)
	{
		$_SESSION['Remail'] = $_SESSION['username'];
	header("location:register2.php");

		
	}

	else
	{

		echo "Please Provide us with a valid Answer or Contact your branch";
	}

}

?>

 <div class="right_panel">
 <br><br><br><br><br><br>
 <center>
 	<form action="" method="post">
<?php


//echo $_SESSION['username'];

$queryfor = mysql_query("SELECT * FROM `customer` WHERE `email`='".$_SESSION['username']."'");
$numrows = mysql_num_rows($queryfor);
	
	if ($numrows!=0)
	{
	
		while($row = mysql_fetch_assoc($queryfor))
		{

			echo $row['secques'];



			}
}
else
{


	echo "<CENTER>";
		echo "<b style='color:red; font-size:35px'>Usear not Found</b>";
		echo "<a href='login.php'><h3>Back</h3></a>";
		echo "</CENTER>";
	
}


?>

<br>
<input type="text" placeholder="Answer" name="Answer" required="required"style="width: 250px;height: 30px;background: transparent;border: 1px solid rgba(0,0,0,0.6);border-radius: 2px;color: #000;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 4px;margin-top: 10px;"><br>
<button type="submit" value="Next" name="submit" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Next</button>
				
</form><center>

 </div>
  <div class="left_panel">
  <h1>Provide us with a Security question which can be used by us in future in case of password forgotten......</h1>
  </div>
  <?php include 'footer.php' ?>