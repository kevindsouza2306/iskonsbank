<?php include "imports/header.php"?>

<?php
session_start();

if(isset($_POST['submit'])){

	
$_SESSION['securityques'] = ($_POST['select']);
$_SESSION['securityans'] = ($_POST['Answer']);

header("location:register2.php");

}

?>

 <div class="right_panel">
 <br><br><br><br><br><br>
 <center>
<form action="" method="post">
<select name="select" style="width: 250px;height: 30px;background: transparent;border: 1px solid rgba(0,0,0,0.6);border-radius: 2px;color: #000;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 4px;margin-top: 10px;" >
<option value="	Which phone number do you remember most from your childhood?">	Which phone number do you remember most from your childhood?	</option>
<option value="	What was your favorite place to visit as a child?">	What was your favorite place to visit as a child?	</option>
<option value="	Who is your favorite actor, musician, or artist?">	Who is your favorite actor, musician, or artist?	</option>
<option value="	What is the name of your favorite pet?">	What is the name of your favorite pet?	</option>
<option value="	In what city were you born?">	In what city were you born?	</option>
<option value="	What high school did you attend?">	What high school did you attend?	</option>
<option value="	What is the name of your first school?">	What is the name of your first school?	</option>
<option value="	What is your favorite movie?">	What is your favorite movie?	</option>
<option value="	What is your mother's maiden name?">	What is your mother's maiden name?	</option>
<option value="	What street did you grow up on?">	What street did you grow up on?	</option>
<option value="	What was the make of your first car?">	What was the make of your first car?	</option>
<option value="	When is your anniversary?">	When is your anniversary?	</option>
<option value="	What is your favorite color?">	What is your favorite color?	</option>
<option value="	What is your father's middle name?">	What is your father's middle name?	</option>
<option value="	What is the name of your first grade teacher?">	What is the name of your first grade teacher?	</option>
<option value="	What was your high school mascot?">	What was your high school mascot?	</option>
<option value="	Which is your favorite web browser?	">	Which is your favorite web browser?	</option>
</select>

<br>
<input type="text" placeholder="Answer" name="Answer" required="required"style="width: 250px;height: 30px;background: transparent;border: 1px solid rgba(0,0,0,0.6);border-radius: 2px;color: #000;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 4px;margin-top: 10px;"><br>
<button type="submit" value="Next" name="submit" style="width: 260px;height: 35px;background: #736D66;border: 1px solid #fff;cursor: pointer;border-radius: 2px;color: #FFF;font-family: 'Exo', sans-serif;font-size: 16px;font-weight: 400;padding: 6px;margin-top: 10px;">Next</button>
				
</form><center>

 </div>
  <div class="left_panel">
  <h1>Provide us with a Security question which can be used by us in future in case of password forgotten......</h1>
  </div>
  <?php include 'footer.php' ?>