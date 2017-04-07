<?php
session_start();
require_once('phpmailer/PHPMailerAutoload.php');
require_once('phpmailer/class.phpmailer.php');
$key = $_REQUEST['key'];

$msg = "http://localhost/Online-Banking-system-master/foraut.php?key=".$key;
$subj = "Click on the link to Reset your Password";
$to = $_SESSION['username'];
$from = 'kevtestme@gmail.com';
$name = 'online bank';
function smtpmailer($to, $from, $from_name, $subject, $body) { 
	global $error;
	$mail = new PHPMailer();  // create a new object
	$mail->IsSMTP(); // enable SMTP
	$mail->SMTPDebug = 0;  // debugging: 1 = errors and messages, 2 = messages only
	$mail->SMTPAuth = true;  // authentication enabled
	$mail->SMTPSecure = 'ssl'; // secure transfer enabled REQUIRED for GMail
	$mail->Host = 'smtp.gmail.com';
	$mail->Port = 465; 
	$mail->Username = 'kevtestme@gmail.com';  
	$mail->Password = 'Samsunggtb3210';           
	$mail->SetFrom($from, $from_name);
	$mail->Subject = $subject;
	$mail->Body = $body;
	$mail->AddAddress($to);
	if(!$mail->Send()) {
		$error = 'Mail error: '.$mail->ErrorInfo; 
		return false;
	} else {
		$error = 'Message sent!';
		return true;
	}
}
if (smtpmailer($to, $from, $name, $subj, $msg)) {
	header("location:index.php?msg=Conformation mail has been send to your email address please check your email address or contact your branch");
} else {
	if (!smtpmailer($to, $from, $name, $subj, $msg, false)) {
		if (!empty($error)) echo $error;
	} else {
		echo 'Yep, the message is send (after doing some hard work)';
	}
}
  
?>
