<?php include "imports/header.php";
$msg ="";
?>
<div class="right_panel1">

<?php
session_start();
error_reporting(0);


if(isset($_POST['Submit'])){

for ($i=1; $i < 9; $i++) { 
	for ($j=$i+1; $j < 9; $j++) { 
		
		if ($_POST[$i] == $_POST[$j]) {
			$x = 1;
		}
		
	}
	
}
if ($x != 1) {
$_SESSION['Rcolor'] = $_POST[1].$_POST[2].$_POST[3].$_POST[4].$_POST[5].$_POST[6].$_POST[7].$_POST[8];
header("location:register4.php");
}
else {
			
	$msg ="Please Enter Diffrent Values for Each Color";
					
		}



}


?>


<center>
	
<br><br><br><br>
<h2>Provide us with a New Password<h2>
				<?php echo "<p style='color:red'>$msg</p>"?>
<?php
$array = array('#FFFFFF', '#9400D3', '#4B0082', '#0000FF', '#00FF00', '#FFFF00', '#FF7F00', '#FF0000');

$col = 0;
?>
<form action="" method="post">
<table><tr style="height:20px; width:20px">
<?php
foreach ($array as $col) {
	?>
	 <td bgcolor="<?php  echo "$col";?>" style="height:50px; width:30px">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
	
	 <?php
	}
	?> </tr><tr style="height:50px; width:30px">
	<?php
	foreach ($array as $pas){
		$col = $col+1;
	?>
      <td style="height:50px; width:30px"> <input type="number" min="1" max="8" required="required" name="<?php echo $col?>" style="width: 55px; height: 26px"> </td>

	
	<?php	
		
	}
	?>
</tr></table>
<button type="submit" value="Submit" name="Submit" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Next</button>

</form>
</center>
</div>
 	<div class="left_panel">
  <p style="font-size:26px"><b>Hybrid based Authentication
  	<br><br>
 	Example:
 		<br>
 			<br>
  <img src="_img/color.jpg" alt="grid" width="270px" >
  	<br>
  Provide us with Rank for each color grid from the range 1 to 8...</p>
  </div>


<?php include 'footer.php' ?>
