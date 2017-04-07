<?php include "imports/header.php"?>
 <div class="right_panel">
 <br><br><br><br><br><br>
 <center>
<form action="aut.php?option=usears" method="post" id="log">



<input type="text" placeholder="username" name="username" required="required"style="width: 250px;height: 30px;background: transparent;border: 1px solid rgba(0,0,0,0.6);border-radius: 2px;color: #000;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 4px;margin-top: 10px;"><br>
<button type="submit" value="Grid" name="Grid" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Pair Based Authentication</button>
<button type="submit" value="Color" name="Color" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Hybrid Textual Authentication</button>
<br>	<a href="#" type="submit" onclick="document.getElementById('log').submit();">Forgot Password</a> 		
</form><center>

 </div>
  <div class="left_panel" style="font-size: 24px">
<br>
  There are two methods avaliable that is "Pair Based Authentication" or Grid based and "Hybrid Textual Authentication" or Color based technique. <br>Enter your Username/email select one of the two techniques
  </div>
  <?php include 'footer.php' ?>