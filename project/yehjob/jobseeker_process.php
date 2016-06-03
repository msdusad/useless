<?php 
include("lib/Jobseeker_register.php");
if(isset($_POST['JobseekerSignup']))
{      
$register=new JobseekerRegister();
$register->Jobseekersignup(); 
}
if(isset($_POST['JobseekerLogin']))
{      
$register=new JobseekerRegister();      
$register->jobseekerLogin(); 
} 
if(isset($_POST['send']))
{
$register=new JobseekerRegister();
$register->forgotPassword();
}  
if(isset($_POST['change_recovery']))
{	
$register=new JobseekerRegister();
$register->changerecoveryPassword();
}
if(isset($_POST['update_jobseeker']))
{      
$register=new JobseekerRegister();
$register->jobseekerprofile();
}
if(isset($_POST['change_password'])) 
{
$passdata=new JobseekerRegister();	  
$passdata->jobseekercpass();  
}
?>