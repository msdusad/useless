<?php 
error_reporting(0);
include("../include/config.php");
$db= new Database();
	if(isset($_POST['upload_profile_btn'])) {
		$response=array();
		$category= mysql_real_escape_string($_POST['category']);
		$con_skills= $_POST['key_skills'];
		$exp_years= mysql_real_escape_string($_POST['min_exp']);
		$exp_moths= mysql_real_escape_string($_POST['max_exp']);
		$experience=$exp_years.'.'.$exp_moths;
		$qualification= mysql_real_escape_string($_POST['qualification']);
		$location= $_POST['location'];
		$whatsapp= $_POST['whatsapp'];
		$linkedin= $_POST['linkedin'];
		$fileName=$_FILES['jobseeker_resume']['name'];
		$fileSize=$_FILES["jobseeker_resume"]["size"]/1024;
		$fileType=$_FILES["jobseeker_resume"]["type"];
		$fileTmpName=$_FILES["jobseeker_resume"]["tmp_name"]; 
		//$con_skills=implode(',',$key_skill);//ActionScript,BASIC,C

		$con_location=implode(',',$location);//Andaman and Nicobar Islands,Assam,Chhattisgarh
		if ($con_skills !="" && $qualification !="") {
			if(!empty($fileName)){
				if($fileSize<=200) {
					$random=rand(1111,9999);
					$newFileName=$random.$fileName;
					$uploadPath="resume/".$newFileName;
					move_uploaded_file($fileTmpName,$uploadPath);
		
				} else {
					$response[]= "You are not allowed to upload file size more than 200kb!";
					die("<script>location.href = 'index.php'</script>");
				}	
			}
			$storeQuery="SELECT * FROM tb_jobseeker_info WHERE jobseeker_id='$_SESSION[jobseeker_id]' LIMIT 1";
			$db->execute($storeQuery);
			$profileData=$db->getResult();
			$countid=$db->rowcount();			
			if($countid>0) {	
				$updatesQuery="UPDATE tb_jobseeker_info SET jobseeker_id='$_SESSION[jobseeker_id]',category_name='$category',skill='$con_skills',experience='$experience',qualification_name='$qualification',location='$con_location',whatsapp_link='$whatsapp',linkedin='$linkedin',upload_resume='$newFileName' WHERE jobseeker_id='$_SESSION[jobseeker_id]'";	
				$db->execute($updatesQuery);
				$response[]= "Your profile has been updated successfully!";
			} else {
				$insertQuery="INSERT INTO tb_jobseeker_info(jobseeker_id,category_name,skill,experience,qualification_name,location,whatsapp_link,linkedin,upload_resume) VALUES ('$_SESSION[jobseeker_id]','$category','$con_skills','$experience','$qualification','$con_location','$whatsapp','$linkedin','$newFileName')";
				$db->execute($insertQuery);				
				$response[]= "Your profile has been updated successfully!";
			}	
		}
  	$url_decode = urldecode(http_build_query($response));
  	$url_string=substr($url_decode,2);
  	$_SESSION['url_string']=$url_string;
	die("<script>location.href = 'index.php'</script>");
}
?>