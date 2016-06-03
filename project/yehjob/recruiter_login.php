<?php include("include/header.php"); ?>
	<!--header ends from  here-->
	<div class="clearfix"></div>

	<!--body starts from here-->
	<section id="recruiter_outer">
		<div class="back_color">	
			<div class="container">
				<div class="jobseeker_inner">	
					<div class="login_heading">
						<span><i class="fa fa-lock"></i>&nbsp;&nbsp;</span><h3>Recruiter Login</h3>
					</div>
					<div class="below_formheading">
						<div class="login_form">
							<span id="RECRUITERLOGIN"></span>
							<span id="Recovery"></span>
							<form id='recruiter_login' method="post" role="form">
								<div class="form-group input_outer">
									<span><i class="fa fa-user"></i></span>
									<input type="text" placeholder="Email" class="form-control" name="username">
								</div>
								<div class="form-group input_outer">
									<span><i class="fa fa-key"></i></span>
									<input type="password" placeholder="Password" name="password" class="form-control">
								</div>
								<div class="log_in">
									<input type="submit" class="btn-rv new_log" name="recruiter_login" value="Log In" class="btn-rv">
									<a href="recruiter_signup.php" class="btn-rv">Sign Up</a>
								</div>
							</form>
							<form id='forget_form' method="post" role="form">	
								<div class="log_in_a">
									<p>
										Forgotten your Password ? 
										<a href="#" id="click_password">Click here</a>
									</p>
									<div id="forget_password">
										<p>Enter the email address you used when you Registered</p>
										<input name="input_email" type="text" placeholder="Email Address" class="form-control">
										<br>
										<input type="submit" name="send" value="send" class="btn-rv new_log">
									</div>
								</div>
							</form>
						</div>
						<div class="login_form_right">
							<p>You can also log in with your social account</p>
							<div class="social_fa">
								<a href="1353/fbconfig.php"><span><i class="fa fa-facebook"></i></span>Sign in with Facebook</a>
							</div>
							<div class="social_la">
								<a href="linkedin/linkedin_recruiter_login.php"><span><i class="fa fa-linkedin"></i></span>Sign in with Linkedin</a>
							</div>
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

		$("#recruiter_login").validate({
			rules: {
				username:{ 
					required: true,
					email: true,
				},
			  	password:{
					required: true,
					minlength:6
				},
				
			},
			messages:{
				username:{
					required: "Please enter your email"
				},
				password: {
					required: "Please enter password",
					minlength: jQuery.format("Enter at least {6} characters")
				},	
			},	

		  	submitHandler: function(form) {
			  	$('#RECRUITERSIGNUP').html('<img src="images/ajax-loader.gif">');
				$.post('recruiter_process.php', $("#recruiter_login").serialize(), function(data){
				
					if(data==1){
					  	$('#RECRUITERLOGIN').html('</br><div class="alert alert-danger">invalid username/password!</div>');
					} else if(data == 0) {
							window.location.replace('recruiters/details.php');
					} else if(data == 2){
						window.location.replace('recruiters');
					}
				});
			}			
		});
	});
	</script>
	<script type="text/javascript">
	$(document).ready(function(){

		$("#forget_form").validate({
			rules: {
				input_email:{ 
					required: true,
					email: true,
							},
				   },
			messages:{
				input_email:{
					required: "Please enter your registered email address"
							},
					},	

		  	submitHandler: function(form) {
			$.post('recruiter_process.php', $("#forget_form").serialize(), function(data){
				
					if(data==1)
					{
					  	$('#Recovery').html('<div class="alert alert-success">Successfull,Please check your Email-id!</div>');
					} 
					if(data==2) 
					{
						$('#Recovery').html('<div class="alert alert-danger">This Email-id is not registered with us!</div>');
					}
				});
			}			
		});
	});
	</script>
	<div class="clearfix"></div>
