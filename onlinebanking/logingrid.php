<?php include "imports/header.php"?>
	
	<div class="right_panel1">
	<br><br><br><br><br><br>
			<center><?php 
 include '_inc/dbconn.php';
 session_start();

error_reporting(0);
$number = range(0,9);
$alfa = range('A','Z');
$merge = array_merge($number,$alfa);
shuffle($merge);
//print_r ($merge);
$i = 0;
$j = 0;
$k = 0;
$count = 0;
$limit = 36;
$mularry = array(array());

for ($j = 0; $j <  6; $j++) {
	 for ($k = 0; $k <  6; $k++) {
     if($count < $limit)
{  
	 $mularry[$j][$k] = $merge[$count];
	 $count++;
   }
   
}


}
//print_r ($mularry);
?>
<div class="CSSTableGenerator" >
<?php
$out  = "";
$out .= "<table>";
foreach($mularry as $key => $element){
    $out .= "<tr>";
    foreach($element as $subkey => $subelement){
        $out .= "<td>$subelement</td>";
    }
    $out .= "</tr>";
}
$out .= "</table>";


echo $out;
$_SESSION['mularray'] = $mularry;
$pass = substr($_SESSION['pd'], 0, $_SESSION['pl']);
//$pass = str_replace(' ', '', $pawd);
//echo $_SESSION['pd'];
//echo strlen($pass)."<br>";
//echo $pass;

echo "</div>";
$arr1 = str_split($pass);
//print_r($arr1);
$n = 0;
 $mas = '';  


foreach ($arr1 as $keys => &$val)
{
	if ($keys % 2 == 0)
	{
		//echo "<br>".$val." = ";
		foreach ($mularry as $keyy => &$v1) {
    foreach ($v1 as $v2) {
		if (is_numeric($val)){
		if ($v2 == $val)
		{
			$l1 = $keyy;
		//echo $keyy;
		
		
		}	
		}
		else{
		if ($v2 === $val)
		{
			$l1 = $keyy;
		//echo $keyy;
		
		
		}
       // echo "$v2\n";
	}
	   
    
	}
	
}

	
	
		
	}
	else 
		
	{
		//echo "<br>".$val." = ";
		foreach ($mularry as $v3) {
    foreach ($v3 as $ky => &$v4) {
		if (is_numeric($val)){
		if ($v4 == $val)
		{
			$l2 = $ky;
		//echo $ky;
		
		
		}	
		}
		else{
		if ($v4 === $val)
		{
			$l2 = $ky;
			
		//echo $ky;
		
		
		}
       // echo "$v2\n";
	}
	   
    
	}
		
	}
	 
	$sespass = $mularry[$l1][$l2];
	$mas = $mas.$sespass;
	
}


}
$_SESSION['sespass'] = $mas;
//echo "<br>".$mas;


?>
<br>
<br>
<br>
<form action="aut.php?option=grid" method="post">



<input type="text" placeholder="password" name="password" required="required"style="width: 250px;height: 30px;background: transparent;border: 1px solid rgba(0,0,0,0.6);border-radius: 2px;color: #000;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 4px;margin-top: 10px;text-transform: uppercase;"><br>
<button type="submit" value="Login" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Login</button>
				
</form><center>
	</div>
	<div class="left_panel">

<p style="font-size:26px"><b>Pair based Authentication</p>
 <img src="_img/grid.jpg" alt="grid" width="270px" height="300px">
 Eg:SECRET PASS = ANJ63TBR
		<br>
		<br>
	SECRET PASS IN PAIRS
       <br>
       = AN  J6 3T  BR
       <br>
       <br>
Session password:LKBT
  </div>
		<?php include 'footer.php' ?>