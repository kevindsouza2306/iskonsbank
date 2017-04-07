<?php
include "imports/header.php";
?>
 <div class="right_panel1">
<center><?php
 include '_inc/dbconn.php';
 session_start();
error_reporting(0);
$i = 0;
$mas = "";
//echo"Coding in Progress....";

$array = array('#FFFFFF', '#9400D3', '#4B0082', '#0000FF', '#00FF00', '#FFFF00', '#FF7F00', '#FF0000');
$rest = substr($_SESSION['color_pd'], 0, 8);
$pass = str_split($rest);


$colorary =array('#FFFFFF', '#9400D3', '#4B0082', '#0000FF', '#00FF00', '#FFFF00', '#FF7F00', '#FF0000');
shuffle($colorary);
echo "<table><tr>";
foreach ($array as $col) {
	?>
	 <td bgcolor="<?php  echo "$col";?>">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
	
	 <?php
	}
	echo " </tr><tr>";
	foreach ($pass as $pas){
	?>
      <td><?php echo"$pas"?></td>

	
	<?php	
		
	}
echo "</tr></table>";
echo "<br>";
echo "<table><tr>";
foreach ($colorary as $color) {
	if($i<2)
	{
	?>
	
   <td bgcolor="<?php  echo "$color";?>">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
   
   
   
   <?php
   $i++;
   	}
   else 
   {
	  echo "<td></td><td></td><td></td><td></td><td></td><td></td><td></td></td><td></td></td><td></td></td><td></td>";
	?>
	<td bgcolor="<?php  echo "$color";?>">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
	<?php  
	  $i = 1;
	   
   }

	
   
}
echo "</tr></table>";

/*2D array--------------------------------------------------------------------*/
$numarray = array(array(5, 7, 8, 3, 1, 4, 2, 6),
			array(8, 6, 4, 2, 3, 1, 5, 7),
			array(3, 5, 6, 4, 7, 8, 1, 2),
			array(2, 3, 5, 6, 8, 7, 4, 1),
			array(7, 2, 1, 5, 4, 6, 8, 3),
			array(1, 4, 7, 8, 2, 3, 6, 5),
			array(4, 1, 2, 7, 6, 5, 3, 8),
			array(6, 8, 3, 1, 5, 2, 7, 4));

?>
<br>
<div class="CSSTable">
<?php
echo '<table>';

//our control variable
$first = true;

foreach($numarray as $key1 => $val1) {
    //if first time through, we need a header row
    if($first){
        echo '<tr><td></td>';
        foreach($val1 as $key2 => $value2){
			 $key3 = $key2 + 1;
            echo '<td>'.$key3.'</td>';
        }
        echo '</tr>';

        //set control to false
        $first = false;
    }
    $key4 = $key1 + 1;
    //echo out each object in the table
    echo '<tr><td>'.$key4.'</td>';
    foreach($val1 as $key2 => $value2){
        echo '<td>'.$value2.'</td>';
    }
    echo '</tr>';
}

echo '</table>';
?></div>
<br>
<form action="aut.php?option=color" method="post">
<!--action change to logcolor.php-->


<input type="text" placeholder="password" name="password" required="required"style="width: 250px;height: 30px;background: transparent;border: 1px solid rgba(0,0,0,0.6);border-radius: 2px;color: #000;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 4px;margin-top: 10px;text-transform: uppercase;"><br>
<button type="submit" value="Login" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Login</button>
				
</form>
<br>
</center>
<?php
/*session part------------------------------------------------------------------*/
foreach($colorary as $seskey1 => &$v1){
	foreach($array as $arykey => &$v2){
		if($v1==$v2){
			
		$ret = $arykey;	
			//echo $arykey;
			echo "&nbsp";
			$passarray[] = ($pass[$arykey]);
			foreach ($passarray as $k => $v) {
    if ($k % 2 == 0) {
        $even = $v-1;
    }
    else {
        $odd = $v-1;
    }
	
	
}
		}
		
		
	}
$sespass = $numarray[$even][$odd];
	$mas = $mas.$sespass;
}

//print_r($passarray);


	//echo $mas."    ";
$sesp = str_split($mas);
foreach ($sesp as $k => $sesp) {
    if ($k % 2 == 0) {
       $color_passwd .= $sesp;
	  
    }
    else {
        
    }
}
$_SESSION['color_ses'] = $color_passwd;
echo  $color_passwd;
?>
 </div>
 	<div class="left_pane3">
 	<p style="font-size:26px"><b>Hybrid based Authentication</p>
 	Example:
  <img src="_img/color.jpg" alt="grid" width="270px" >
  As shown above you had given Rank to the color grid during registration
  <img src="_img/color2.png" alt="grid" width="270px" >
Rank given to 1st color of each pair will give the row in the grid.<br><br>
Rank given to 2nd color of each pair will give the column. <br><br>
The intersection of the row and column will give the session password.<br><br>

  </div>
<?php include 'footer.php' ?>