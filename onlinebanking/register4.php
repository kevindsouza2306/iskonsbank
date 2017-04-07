
 
<!DOCTYPE html>

<html>
    <head>
        
        <noscript><meta http-equiv="refresh" content="0;url=no-js.php"></noscript>    
        
        
        <meta charset="UTF-8">
        <title>Online Banking System</title>
       <link rel="stylesheet" type="text/css" href="_style/patternlock.css"/>
       <style>
    body{
        text-align:center;
        font-family:Arial, Helvetica, sans-serif;
    }

    h2{
        margin-bottom: 4px;
    }
</style>
    <script src="_script/patternlock.js"></script>

    <script type="text/javascript">
        function submitform(){
         var abc = document.getElementById("password").value;
 
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
         <form action="aut.php?option=register4" method="post">
          <center>  <h2>Provide us with a Pattern</h2>   
        <div>
            <input type="password" id="password" name="password" class="patternlock" />

           
        </div>
        <button type="submit" name="submit" value="submit" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Confirm</button>
 </form>
  </center>
 </div>
  <div class="left_panel">
<h1>Provide us with a pattern and remember for furure use......</h1>
  
  </div>
      <?php include 'footer.php' ?>