<?php 
include_once("include/config.php");
class RecruiterRegister 
{

	function __construct() 
	{
		$this->db = new Database();
	}
	public function recruiterSignup()
	{
		$name = mysql_real_escape_string($_POST['name']);
		$email = mysql_real_escape_string($_POST['email']);
		$password = mysql_real_escape_string(md5($_POST['password']));
		$cpassword = mysql_real_escape_string(md5($_POST['cpassword']));
		$company = mysql_real_escape_string($_POST['company']);
		$captcha = mysql_real_escape_string($_POST['captchaimg']);

		if(strtolower($captcha) == $_SESSION['6_letters_code']){
			$this->db->execute("SELECT recuriter_email FROM  tb_recruiter WHERE recuriter_email = '$email' LIMIT 1");
			$duplicate = $this->db->rowcount();
			if($duplicate > 0){
				echo '1';
			} else {
				$recruiter = "INSERT INTO  tb_recruiter(recruiter_name, recruiter_company, recuriter_email, recruiter_password, recruiter_reg_date) VALUES('{$name}','{$company}','{$email}','{$password}',NOW())";
				$this->db->execute($recruiter);
				$current_id = $this->db->LastId();
				$toEmail = $email;
				$subject = "User Registration Activation Email";
				$content = 'Click here to activate your link  '.'<a href="http://yehjob.com/email_verification.php?id='.base64_encode($current_id).'">http://yehjob.com/email_verification</a>';
				$headers  = "From:YehJOB\r\n";
				$headers .= "MIME-Version: 1.0\r\n";
				$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
				mail($toEmail, $subject, $content, $headers);
				echo '0';
			}
		}else{
			echo '2';
		}
	}

	public function recruiterLogin()
	{
		$username = mysql_real_escape_string($_POST['username']);
		$password = mysql_real_escape_string(md5($_POST['password']));	
		$login_query = "SELECT recruiter_id,recruiter_name,recuriter_email FROM tb_recruiter WHERE recuriter_email = '$username' AND recruiter_password = '$password' AND recruiter_status = '1' LIMIT 1";
		$this->db->execute($login_query);
		$rec_result = $this->db->getResult();
		$count =$this->db->rowcount();
		if($count > 0){
			if(!empty($_SESSION['job_id'])){
				$_SESSION['recruiter_id'] = $rec_result['recruiter_id'];
				$_SESSION['recruiter_name'] = $rec_result['recruiter_name'];
				$_SESSION['recruiter_email'] = $rec_result['recuriter_email'];
				echo '0';
			} else {
				$_SESSION['recruiter_id'] = $rec_result['recruiter_id'];
				$_SESSION['recruiter_name'] = $rec_result['recruiter_name'];
				$_SESSION['recruiter_email'] = $rec_result['recuriter_email'];
				echo '2';
			}
		} else {
			echo '1';
		}
	} 
	public function recruiterUpdate()
	{
		$name = mysql_real_escape_string($_POST['name']);
		$email = mysql_real_escape_string($_POST['email']);
		$phone = mysql_real_escape_string($_POST['phone']);
		$company = mysql_real_escape_string($_POST['company']);
		if(!empty($_SESSION['recruiter_id']) or !empty($_SESSION['FBID'])){
			$recruiter_id = $_SESSION['recruiter_id'];
			$update_query ="UPDATE tb_recruiter SET recruiter_name ='$name', recuriter_email='$email', recruiter_phone = '$phone', recruiter_company='$company' WHERE recruiter_id = '$recruiter_id' or social_id='$_SESSION[FBID]'";
			$this->db->execute($update_query);
			echo '0';
		}else{
			echo '1';
		}
		
	} 
	public function changePassword()
	{
		$oldpass = mysql_real_escape_string(md5($_POST['old_password']));
		$newpass = mysql_real_escape_string(md5($_POST['new_password']));
		$cnfpass = mysql_real_escape_string(md5($_POST['cnf_password']));
		$password_query = "SELECT * from tb_recruiter WHERE recruiter_password = '$oldpass'";
		$this->db->execute($password_query);
		$pass_result = $this->db->getResult();
		if($pass_result['recruiter_password'] == $oldpass){
			$recruiter_id = $_SESSION['recruiter_id'];
			$change_pass = "UPDATE tb_recruiter SET recruiter_password = '$newpass' WHERE recruiter_id = '$recruiter_id'";
			$this->db->execute($change_pass);
			echo '0';
		}else{
			echo '1';
		}
	}
	public function forgotPassword()
	{
		$email_input = mysql_real_escape_string($_POST['input_email']);
		$fetch_query = "SELECT recruiter_id,social_id,linkedin_id,recruiter_name,recuriter_email,recruiter_password from tb_recruiter WHERE recuriter_email = '$email_input' LIMIT 1";
		$random_number= mt_rand(100,100000);
		$this->db->execute($fetch_query);
		$fetch_result = $this->db->getResult();
		$password=$fetch_result['recruiter_password'];
		$name=$fetch_result['recruiter_name'];
		$email=$fetch_result['recuriter_email'];
		$fetch_count=$this->db->rowcount();
		if($fetch_count > 0 && $password!=''){
			$insert_query="UPDATE tb_recruiter SET match_number='$random_number' WHERE recuriter_email='$email_input'";
			$this->db->execute($insert_query);
			$toEmail = $email_input;
			$subject = "Password Recovery From YehJOB";
			$content ='<p><strong>Hello'.' '. $name.',</strong></p>
					<p>As per your request, please click the link below to reset your password.</p>
					<p><a href="http://www.yehjob.com/forgot_password.php?rand='.$random_number.'">Click Here</a></p>
					<p>Regards,</p>
					<p>Yehjob </p>';
			$headers = "From:YehJOB\r\n";
			$headers .= "MIME-Version: 1.0\r\n";
			$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
			mail($toEmail, $subject, $content, $headers);	
			echo '1';
		}
		else{
			echo '2';
		}
	
	}
	public function changerecoveryPassword()
	{
		$newpass = mysql_real_escape_string(md5($_POST['confirm_password']));
		$update_password="Update tb_recruiter SET recruiter_password = '$newpass' WHERE match_number = '$_GET[rand]'";
		$this->db->execute($update_password);
		echo '1';
			
	}
}
	
	
?>