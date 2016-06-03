<?php 
include_once("../lib/function_recruiter.php");
include_once("../lib/POST_JOB.php");
$lk_object = new search();
$object = new PostJob();
if(!empty($_SESSION['company1'])) {
	$_SESSION['message'] = $object->postJob();
	header('Location: post_job.php');
}
//updation code
if(isset($_REQUEST['submit'])) {

	if($_REQUEST['submit']){
		$company = $_SESSION['company'] = mysql_real_escape_string($_POST['company']);
		$job_title = $_SESSION['job_title'] = mysql_real_escape_string($_POST['job_title']);
		$position_id = $_SESSION['position'] =$_POST['position'];
		$desc = $_SESSION['desc'] = htmlspecialchars_decode($_POST['desc'],ENT_NOQUOTES);
		$keywords = $_SESSION['keywords'] = htmlspecialchars_decode($_POST['keywords'],ENT_NOQUOTES);
		if(is_array($_POST['location'])){
			$location = $_POST['location'];
			$locations = $_SESSION['location'] = implode(",", $location);
			$location_t = trim($locations,"other,");
		}
		$other_location=$_SESSION['other_location']= mysql_real_escape_string($_POST['other_location']);
		$email = $_SESSION['email'] = mysql_real_escape_string($_POST['email']);
		$phone = $_SESSION['phone'] = mysql_real_escape_string($_POST['phone']);
		$category = $_SESSION['category'] = mysql_real_escape_string($_POST['category']);
		$categorys = $lk_object->selectJobCategory();
		if(is_array($_POST['skills'])){
			$skills =  $_POST['skills'];
			$strskills = $_SESSION['skills'] = implode(",", $skills);
		}
		if(!empty($_POST['qualifications'])){
			$qualifications = $_POST['qualifications'];
			$strquali = $_SESSION['qualifications'] = implode(",", $qualifications);
		}
		
		$job_id = $_SESSION['job_type'] = mysql_real_escape_string($_POST['job_type']);
		$job_type = $lk_object->selectJobType();
		$min_salary = $_SESSION['min_salary'] = mysql_real_escape_string($_POST['min_salary']);
		$max_salary = $_SESSION['max_salary'] = mysql_real_escape_string($_POST['max_salary']);
		$min_exp = $_SESSION['min_exp'] = mysql_real_escape_string($_POST['min_exp']);
		$max_exp = $_SESSION['max_exp'] = mysql_real_escape_string($_POST['max_exp']);
		$company_overview = $_SESSION['company_overview'] = htmlspecialchars_decode($_POST['company_overview'],ENT_NOQUOTES);
		$whatsapp_id = $_SESSION['whatsapp_id'] = mysql_real_escape_string($_POST['whatsapp_id']);
		$linkedin = $_SESSION['linkedin'] = mysql_real_escape_string($_POST['linkedin']);
	}
	$_SESSION['message'] = $object->editPostedJob();
	echo "<script>window.location = 'post_job.php'</script>";
}
?>