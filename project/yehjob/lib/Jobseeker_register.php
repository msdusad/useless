<?php

   include("include/config.php");
	class JobseekerRegister {
		function __construct() {
			$this->db= new Database();
		}
		public function jobseekerUploadProfile() {
			$category= mysql_real_escape_string($_POST['category']);
			$key_skill= $_POST['key_skills'];
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
			//echo "Your experience is:".$experience;die;
			if($fileSize<=200) {
				$random=rand(1111,9999);
				$newFileName=$random.$fileName;
				$uploadPath="resume/".$newFileName;
				if(move_uploaded_file($fileTmpName,$uploadPath)){
					$storeQuery="SELECT * FROM tb_jobseeker_info WHERE jobseeker_id='$_SESSION[jobseeker_id]' LIMIT 1";
					$this->db->execute($storeQuery);
					$profileData=$this->db->getResult();
					$countid=$this->db->rowcount();			
					if($countid>0) {
						$updatesQuery="UPDATE tb_jobseeker_info SET jobseeker_id='$_SESSION[jobseeker_id]',category_id='$category',experience='$experience',qualification_id='$qualification',whatsapp_link='$whatsapp',linkedin='$linkedin',upload_resume='$newFileName' WHERE jobseeker_id='$_SESSION[jobseeker_id]'";	
						$this->db->execute($updatesQuery);
						$updatesQuery1="UPDATE tb_jobseekermulti_record SET skill_id='$key_skill',state_id='$location'";
						$this->db->execute($updatesQuery1);
						echo 'Your profile has been updated successfully!';
					} else {
						$insertQuery="INSERT INTO tb_jobseeker_info(jobseeker_id,category_id,experience,qualification_id,whatsapp_link,linkedin,upload_resume) VALUES ('$_SESSION[jobseeker_id]','$category','$experience','$qualification','$whatsapp','$linkedin','$newFileName')";
						$this->db->execute($insertQuery);
						$insertQuery1="INSERT INTO tb_jobseekermulti_record(jobseeker_id,skill_id,state_id) VALUES('$_SESSION[jobseeker_id]','$key_skill','$location')";
						$this->db->execute($insertQuery1);
						echo 'Thanks to update your profile!';
					}	
				} else {
					echo "File not uploaded to the server";
				}
			} else {
				echo "You're not allowed to upload file size more than 200kb";	
			}
		}

		public function jobseekercpass() {
			$oldpass= mysql_real_escape_string(md5($_POST['old_pass']));
			$newpass= mysql_real_escape_string(md5($_POST['new_pass']));
			$cfpass= mysql_real_escape_string($_POST['confirm_pass']);
			$cpass_query="SELECT * FROM tb_jobseeker WHERE jobseeker_password='$oldpass'";
			$this->db->execute($cpass_query);
			$get_pass= $this->db->getResult();
			if($get_pass['jobseeker_password']==$oldpass) {
				$pass_data="UPDATE tb_jobseeker SET jobseeker_password='$newpass' WHERE  jobseeker_id='$_SESSION[jobseeker_id]'";
				$this->db->execute($pass_data);
				echo '0';
			 } else {
				echo '1';
			 }
		}

		public function jobseekerprofile() {
			$jobseeker_id=$_SESSION['jobseeker_id'];
			$first_name= mysql_real_escape_string($_POST['fname']);
			$last_name= mysql_real_escape_string($_POST['lname']);
			$emailid= mysql_real_escape_string($_POST['email']); 
			$phoneno= mysql_real_escape_string($_POST['phone']);
			if(!empty($_SESSION['jobseeker_id'])) {		
				$updateQuery="Update tb_jobseeker SET fname='$first_name',lname='$last_name', jobseeker_email='$emailid',jobseeker_phone='$phoneno' WHERE jobseeker_id='$jobseeker_id'";
				$this->db->execute($updateQuery);
				echo '0';
			}else {
				echo '1';
			}
		}

		public function jobseekerLogin() {
			$username = mysql_real_escape_string($_POST['jobseekerEmail']);
			$password = mysql_real_escape_string(md5($_POST['jobseekerPassword']));
			$login_query = "SELECT jobseeker_id, jobseeker_email FROM tb_jobseeker WHERE jobseeker_email= '$username' AND jobseeker_password= '$password' AND jobseeker_status= '1' LIMIT 1";
			$this->db->execute($login_query);
			$rec_result = $this->db->getResult(); 
			$count =$this->db->rowcount();
			if($count > 0){
				if(!empty($_SESSION['job_id'])){
					$_SESSION['jobseeker_id'] = $rec_result['jobseeker_id'];
					$_SESSION['jobseeker_email'] = $rec_result['jobseeker_email'];
					echo '0';die();
				}elseif (!empty($_SESSION['type'])) {
					$_SESSION['jobseeker_id'] = $rec_result['jobseeker_id'];
					$_SESSION['jobseeker_email'] = $rec_result['jobseeker_email'];
					echo '3';die;
				} else {
					$_SESSION['jobseeker_id'] = $rec_result['jobseeker_id'];
					$_SESSION['jobseeker_email'] = $rec_result['jobseeker_email'];
					echo '2';die;
				}
			} else {
				echo '1';
			}
		}

		public function Jobseekersignup() {
		   	$userName=mysql_real_escape_string($_POST['fname']);
		    $lastName=mysql_real_escape_string($_POST['lname']);
		  	$email=mysql_real_escape_string($_POST['email']);
		  	$password=mysql_real_escape_string(md5($_POST['password']));
			$captcha=mysql_real_escape_string($_POST['captchaimg']);
		    if(strtolower($captcha)==$_SESSION['6_letters_code']) {
		    	$this->db->execute("SELECT jobseeker_email FROM tb_jobseeker WHERE jobseeker_email='{$email}' LIMIT 1");
				$duplicate=$this->db->rowcount();
				if($duplicate > 0) {
					echo '1';
				}else{
					$qry="INSERT INTO tb_jobseeker(fname,lname,jobseeker_email,jobseeker_password,register_date) values('{$userName}','{$lastName}','{$email}','{$password}',NOW())";
					$this->db->execute($qry);
					$current_id = $this->db->LastId();
					$toEmail = $email;
					$subject = "User Registration Activation Email";
					$content = 'Click here to activate your link  '.'<a href="http://yehjob.com/email_verification.php?job_seek_id='.base64_encode($current_id).'">http://yehjob.com/email_verification</a>';
					$headers  = "From:YehJob\r\n";
					$headers .= "MIME-Version: 1.0\r\n";
					$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
					mail($toEmail, $subject, $content, $headers);
					echo '0';
				}
			} else {
				echo '2';
			}

		}
		
		public function forgotPassword()
		{
		$email_input = mysql_real_escape_string($_POST['input_email']);
		$fetch_query = "SELECT * from tb_jobseeker WHERE jobseeker_email = '$email_input' LIMIT 1";
		$random_number= mt_rand(100,100000);
		$this->db->execute($fetch_query);
		$fetch_result = $this->db->getResult();
		$name=$fetch_result['fname'].' '.$fetch_result['lname'];
		$password=$fetch_result['jobseeker_password'];
		$fetch_count=$this->db->rowcount();
		if($fetch_count > 0 && $password!=''){
			$insert_query="UPDATE tb_jobseeker SET match_number='$random_number' WHERE jobseeker_email='$email_input'";
			$this->db->execute($insert_query);
			$toEmail = $email_input;
			$subject = "Password Recovery From YehJOB";
			$content ='<p><strong>Hello'.' '. $name.',</strong></p>
					<p>As per your request, please click the link below to reset your password.</p>
					<p><a href="http://www.yehjob.com/forgot_password_js.php?rand='.$random_number.'">Click Here</a></p>
					<p>Regards,</p>
					<p>Yehjob </p>';
			$headers = "From:YehJOB\r\n";
			$headers .= "MIME-Version: 1.0\r\n";
			$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
			mail($toEmail, $subject, $content, $headers);	
			echo '1';
		}
		else
		{
			echo '2';
		}
	
		}
		
		public function changerecoveryPassword()
		{
		$newpass = mysql_real_escape_string(md5($_POST['confirm_password']));
		$update_password="Update tb_jobseeker SET jobseeker_password = '$newpass' WHERE match_number = '$_GET[rand]'";
		$this->db->execute($update_password);
		echo '1';
		}
	
	
	}

?>











