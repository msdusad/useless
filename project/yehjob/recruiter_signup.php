	<?php
	error_reporting(0);
	include("include/header.php") ?>

	<!--header ends from  here-->

	<div class="clearfix"></div>



	<!--body starts from here-->

	<section id="recruiter_outer">

		<div class="back_color">	

			<div class="container">

			<div class="recruiter_inner">	

				<div class="login_heading">

					<span><i class="fa fa-lock"></i>&nbsp;&nbsp;</span><h3>Create an account</h3>

				</div>

				<div class="below_formheading">

					<form method="post" role="form" id="recruiter_signup_form">

						<span id="RECRUITERSIGNUP"></span>

						<div class="signup_left">

							<div class="form-group input_outer">

								<span><i class="fa fa-user"></i></span>

								<input type="text" placeholder="Name" name="name" class="form-control">

							</div>

							<div class="form-group input_outer">

								<span><i class="fa fa-envelope"></i></span>

								<input type="email" placeholder="Email Address" name="email" class="form-control">

							</div>

							<div class="form-group input_outer">

								<span><i class="fa fa-pencil"></i></span>

								<input type="text" placeholder="Company Name" name="company" class="form-control">

							</div>

							<div class="form-group input_captcha">

								<img src="captcha.php?rand=<?php echo rand(); ?>" id='captchaimg'>

								<input type="text" placeholder="Captcha" name="captchaimg" id="captchaimg" class="form-control">

								<p id="req_p">Can't read the image? click <a href="javascript:reload();">here</a> to refresh</p>

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

								<input type="submit" id="recruiter_signup" name="recruiter_signup" class="btn-rv new_log" value="Register now">
								<br>
								<div id="new_log">
									<span>Already Register ?</span>
									<a href="recruiter_login.php">Click here to log in</a>
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
	<script type="text/javascript">
	function reload()
	{
	img = document.getElementById("captchaimg");
	img.src="captcha.php?rand=" + Math.random();
	}
	</script> 
	<!--footer ends from  here-->

	<script type="text/javascript" src="js/jquery-validation.js"></script>

	<script type="text/javascript" src="js/additional-methods.min.js"></script>

	<link rel="stylesheet" href="css/bootstrap-select.css" type="text/css">

	<script type="text/javascript">

	$(document).ready(function(){

		$("#recruiter_signup_form").validate({

			rules: {

				name:{ 

					required: true

				},

				email:{

					required: true,

					email:true

				},

				company:{

					required: true,

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

				name:{

					required: "Please enter your name"

				},

				email: {

					required: "Please enter valid email address",

					minlength: "Please enter your valid email address"

				},

				company: {

					required: "Please enter your company name."

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

				},

				

			},	



		  	submitHandler: function(form) {

			  	//$('#RECRUITERSIGNUP').html('<img src="images/ajax-loader.gif">');

				$.post('recruiter_process.php', $("#recruiter_signup_form").serialize(), function(data){

		
					if(data==2){
						$('#RECRUITERSIGNUP').html('</br><span style="color:red">Please enter correct captcha image</span>');
					} else if(data==1){
					  	$('#RECRUITERSIGNUP').html('</br><span style="color:red;">This email id is already register try another</span>');
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