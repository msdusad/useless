	<?php
	error_reporting(0);
	include("include/header.php") ?>

	<style type="text/css">

	 .error{ color:#FF1519; font-size:12px;}

    </style>

	<!--header ends from  here-->

	<div class="clearfix"></div>

	<!--body starts from here-->

  

	<section id="jobseeker_outer">

		<div class="back_color">	

			<div class="container">

			<div class="jobseeker_inner">	

				<div class="login_heading">

					<span><i class="fa fa-lock"></i>&nbsp;&nbsp;</span><h3>Create an account</h3>

				</div>

				<div class="below_formheading">

                   <span id="JOBSEEKERSIGNUP"></span>

					<form method="post" id="jobseeker_signup" role="form">

						<div class="signup_left">

							<div class="form-group input_outer">

								<span><i class="fa fa-user"></i></span>

								<input type="text" placeholder="First Name" name="fname" class="form-control">

							</div>

							<div class="form-group input_outer">

								<span><i class="fa fa-pencil"></i></span>

								<input type="text" placeholder="Last name" name="lname" class="form-control">

							</div>

							<div class="form-group input_outer">

								<span><i class="fa fa-envelope"></i></span>

								<input type="text" placeholder="Email Address" name="email" class="form-control">

							</div>

							<div class="form-group input_captcha">

								

								<img src="captcha.php?rand=<?php echo rand(); ?>" id='captchaimg'>

								<input type="text" placeholder="Captcha" name="captchaimg" id="captchaimg" class="form-control">

								<p id="req_p">Can't read the image? click <a href="javascript: refreshCaptcha();">here</a> to refresh</p>

							</div>

						</div>

						<div class="signup_right">

							<div class="form-group input_outer">

								<span><i class="fa fa-key"></i></span>

								<input type="password" placeholder="Password" id="password" name="password" class="form-control">

							</div>

							<div class="form-group input_outer">

								<span><i class="fa fa-key"></i></span>

								<input type="password" placeholder="Confirm Password" name="cpassword" class="form-control">

							</div>

							

							<div class="log_in">

								<input type="submit" class="btn-rv new_log" name="JobseekerSignup" value="Register Now">
								<br>
								<div id="new_log">
									<span>Already Register ?</span>
									<a href="jobseeker_login.php">Click here to log in</a>
								</div>
							</div>

						</div>

					</form>

				</div>

			</div>

		</div>

	</section>

	<!--body ends from here-->

	<div class="clearfix"></div>	

	<!--footer starts from  here-->

	<?php include("include/footer.php") ?>

	<!--footer ends from  here-->

	<script type="text/javascript" src="js/jquery-validation.js"></script>

	<script type="text/javascript" src="js/additional-methods.min.js"></script>

	<link rel="stylesheet" href="css/bootstrap-select.css" type="text/css">

	<script type="text/javascript">

	$(document).ready(function(){

		$("#jobseeker_signup").validate({

			rules: {

				fname:{ 

					required: true

				},

				lname:{ 

					required: true

				},

				email:{

					required: true,

					email:true

				}, 

			  	password:{

					required: true,

					minlength:6

				},

				cpassword:{

					required: true,

					equalTo:'#password'

				},

				captchaimg:{

					required: true,

					///remote: "includes/captcha_validate.php"

				},

			},

			messages:{

				fname:{

					required: "Please enter your first name"

				},

				lname:{

					required: "Please enter your last name"

				},

				email: {

					required: "Please enter valid email address",

					email: "Please enter your valid email address"

				},

				password: {

					required: "Please enter password",

					minlength: jQuery.format("Enter at least {6} characters")

				},

				cpassword: {

					required:"Please enter your confirm password"

				},

				captchaimg: {

					required:"Please enter the verifcation code.",

					//remote : "Verication code incorrect, please try again."

				},

				

			},	



		  	submitHandler: function(form) {

			  	//$('#RECRUITERSIGNUP').html('<img src="images/ajax-loader.gif">');

				$.post('jobseeker_process.php', $("#jobseeker_signup").serialize(), function(data){

					if(data==1){

					  	$('#JOBSEEKERSIGNUP').html('</br><span style="color:red;">This Email ID is already register try another</span>');

					} else if(data==2) {
						
						$('#JOBSEEKERSIGNUP').html('</br><span style="color:red">Please enter correct captcha image</span>');

					} else {

						var	msg = "Verify your Email ID, link has been sent to your registered Email ID";
						window.location.href ="http://yehjob.com/email_verification.php?msg="+msg;
					
					}

				});

			}			

		});

	});

	</script>

	<div class="clearfix"></div>

    

    

    

     