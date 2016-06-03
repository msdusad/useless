<?php 
include_once("lib/recruiter_register.php");
//include_once("lib/post_job.php");
$object = new RecruiterRegister();
if(isset($_REQUEST['recruiter_signup'])) {
	$object->recruiterSignup();
}
if(isset($_REQUEST['recruiter_login'])) {
	$object->recruiterLogin();
}
if(isset($_REQUEST['send'])) {
	$object->forgotPassword();
}
if(isset($_REQUEST['confirm_password'])) {
	$object->changerecoveryPassword();
}
if(isset($_REQUEST['recruiter_update'])) {
	$result=$object->recruiterUpdate();
}

if(isset($_REQUEST['change_password'])) {
	$object->changePassword();
}

if(isset($_REQUEST['change_pic'])) {
	$object->updateProfilePicture();
}

?>