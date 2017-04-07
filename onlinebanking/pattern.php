
	

<!DOCTYPE html>

<html>
    <head>
        
        <noscript><meta http-equiv="refresh" content="0;url=no-js.php"></noscript>    
        
        
        <meta charset="UTF-8">
        <title>Online Banking System</title>
        <link rel="stylesheet" type="text/css" href="_style/patternlock.css"/>
	<script src="_script/patternlock.js"></script>

    <script>
        function submitform(){
            /* alert("You entered " + document.getElementById("password").value);  */
			
            return true;
        } 
    </script>
		
    </head>
    <body>
        <div class="wrapper">
            
        <div class="header">
            <img src="header.jpg" height="100%" width="100%"/>
            </div>
            <div class="navbar">
                
            <ul>
            <li><a href="index.php">Home </a></li>
            <li><a href="features.php">Features </a></li>
            <li><a href="contact.php">Contact Us</a></li>
            <li><a href="register.php">Register</a></li>
            <li id="last"><a href="login.php">Login</a></li>
            </ul>
            </div>



 <div class="right_panel1">
<form method="post" onsubmit="return submitform()" action="aut.php?option=pattern" ><!--edit:action="patternaut.php"-->
      <center>  <h2>Please login</h2>

        <div>
            <input type="password" id="password" name="password" class="patternlock" />
            <input type="submit" method="post" value="login"/>
        </div>
    </form>
</center>
	<br><br><br><br><br><br><br><br><br><br>
	
	 </div>
  <div class="left_panel">
 <h1>Provide us with a pattern used during regestration......</h1>
  
  
  </div>
  <?php include 'footer.php' ?>