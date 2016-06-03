<?php 
error_reporting(0);
if($_GET['rand']!='')
{
$rand=$_GET['rand'];
}
else{
die('<script>location.href="http://www.yehjob.com"</script>');	
}
?>
<?php include("include/header.php");?>
	<!--header ends from  here-->
	<div class="clearfix"></div>

	<!--body starts from here-->
	<section id="recruiter_outer">
		<div class="back_color">	
			<div class="container">
				<div class="jobseeker_inner">	
					<div class="login_heading">
						<span><i class="fa fa-lock"></i>&nbsp;&nbsp;</span><h3>Change your password</h3>
					</div>
					<div class="below_formheading">
						<div class="login_form">
							<span id="result_change"></span>
							<form id='change_password_form' method="post" role="form">
								<div class="form-group input_outer">
									<span><i class="fa fa-key"></i></span>
									<input id="newpassword" type="password" placeholder="New Password" name="new_password" class="form-control">
								</div>
								<div class="form-group input_outer">
									<span><i class="fa fa-key"></i></span>
									<input type="password" placeholder="Confirm Password" name="confirm_password" class="form-control">
								</div>
								<div class="log_in">
									<input type="submit" name="change_recovery" value="Change password" class="btn-rv new_log">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--body ends from here-->

	<div class="clearfix"></div>	
	<!--footer starts from  here-->
	<?php include("include/footer.php") ?>
	<script type="text/javascript" src="js/jquery-validation.js"></script>
	<script type="text/javascript" src="js/additional-methods.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap-select.css" type="text/css">
	<script type="text/javascript">
	$(document).ready(function(){

		$("#change_password_form").validate({
			rules: {
				new_password:{ 
					required: true,
					minlength:6
				},
			  	confirm_password:{
					required: true,
					equalTo: "#newpassword"
					
				},
				
			},
			messages:{
				new_password:{
					required: "Please enter your new password",
					minlength:"Enter at least {6} characters"
				},
				password: {
					required: "Please enter your confirm password",
					equalTo:"Password does not match"
				},	
			},	

		  	submitHandler: function(form) {
			$.post('jobseeker_process.php?rand=<?php echo $rand; ?>', $("#change_password_form").serialize(), function(data){
					
					if(data==1){
					  	$('#result_change').html('<div class="alert alert-success">Your password has been updated successfully!</div>');
					} 
					else {
						$('#result_change').html('<div class="alert alert-danger">There is some problem in updating your password.</div>');
					}
				});
			}			
		});
	});
	</script>
	<div class="clearfix"></div>
