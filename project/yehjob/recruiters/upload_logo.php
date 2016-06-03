<?php
if(session_id()==""){
	session_start();
}
include_once("../include/config.php");
$db=new Database();
$db->execute("SELECT company_logo FROM tb_recruiter WHERE recruiter_id='$_SESSION[recruiter_id]' OR social_id='$_SESSION[FBID]' LIMIT 1");
$update_pic=$db->getResult();
$delete=$update_pic['company_logo'];
$path = "images/";
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_FILES["logo"]["type"])){
	$msg = '';
	$uploaded = FALSE;
	$extensions = array("jpeg", "jpg", "png"); // file extensions to be checked
	$fileTypes = array("image/png","image/jpg","image/jpeg"); // file types to be checked
	$file = $_FILES["logo"];
	$file_extension = strtolower(end(explode(".", $file["name"])));
	//file size condition can be included here   -- && ($file["size"] < 100000)
	if (in_array($file["type"],$fileTypes) && in_array($file_extension, $extensions)) {
		if ($file["error"] > 0)
		{
			$msg = 'Error Code: ' . $file["error"];
		}
		else
		{
			list($txt, $ext) = explode(".", $file["name"]);
			$actual_image_name = time().substr(str_replace(" ", "_", $txt), 5).".".$ext;
			$sourcePath = $file['tmp_name']; //  source path of the file
			$targetPath = $path.$actual_image_name; // Target path where file is to be stored
			if(move_uploaded_file($sourcePath,$targetPath)){
				if(file_exists($path.$delete)) {
					//chown($path.$delete,465);
					unlink($path.$delete);	
				}
				$db->execute("UPDATE tb_recruiter SET company_logo='$actual_image_name' WHERE recruiter_id='$_SESSION[recruiter_id]' OR social_id='$_SESSION[FBID]'");	
				$_SESSION['logo'] = 'Company Logo Uploaded Successfully...!!';
				$uploaded = TRUE;
			}// Moving Uploaded file
		}
	}
	else
	{
		$msg = '***Invalid file Size or Type***';
	}
	echo ($uploaded ? $msg : '<span class="msg-error">'.$msg.'</span>');
}

die();
?>