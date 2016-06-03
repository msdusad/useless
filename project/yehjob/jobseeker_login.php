<?php include("include/header.php");?>
	<!--header ends from  here-->
	<div class="clearfix"></div>

	<!--body starts from here-->
	<section id="jobseeker_outer">
		<div class="back_color">	
			<div class="container">
				<div class="jobseeker_inner">	
					<div class="login_heading">
						<span><i class="fa fa-lock"></i>&nbsp;&nbsp;</span><h3>Jobseeker Login</h3>
					</div>
					<div class="below_formheading">
						<div class="login_form">
                           <span id="JOBSEEKERLOGIN"></span>
						   <span id="Recovery"></span>
							<form method="post" id="register-form" role="form">
								<div class="form-group input_outer">
									<span><i class="fa fa-user"></i></span>
									<input type="text" placeholder="User Name" name="jobseekerEmail" class="form-control">
								</div>
								<div class="form-group input_outer">
									<span><i class="fa fa-key"></i></span>
									<input type="password" placeholder="Password" name="jobseekerPassword" class="form-control">
								</div>
								<div class="log_in">
									<input type="submit" name="JobseekerLogin" class="btn-rv new_log" value="Log In">
									<a href="jobseeker_signup.php" class="btn-rv">Sign Up</a>
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
										<input type="text" name="input_email" placeholder="Email Address" class="form-control">
										<br>
										<input type="submit" name="send" value="send" class="btn-rv new_log">
									</div>
								</div>
							</form>
						</div>
						<div class="login_form_right">
							<p>You can also log in with your social account</p>
							<div class="social_fa">
								<a href="1353/fbconfig_jb.php"><span><i class="fa fa-facebook"></i></span>Sign in with Facebook</a>
							</div>
							<div class="social_la">
								<a href="linkedin/linkedin_login.php"><span id="profiles"><i class="fa fa-linkedin"></i></span>Sign in with Linkedin</a>
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
	<!--footer ends from  here-->
	<div class="clearfix"></div>
	<script type="text/javascript" src="js/jquery-validation.js"></script>
	<script type="text/javascript" src="js/additional-methods.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap-select.css" type="text/css">
   <!--<script src="js/jquery-validation.js" language="javascript" type="text/javascript"></script>-->        
   <script type="text/javascript">
(function($,W,D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
			
            //form validation rules
            $("#register-form").validate({
                rules: {
					       
					    jobseekerEmail: {
                         required: true,
                            email: true
                         },
					     jobseekerPassword: {
                         required: true,
                         },
					         
                },
                messages: {
                    
					jobseekerEmail: {
                        required:"Please enter your Email ID",
                        email: "Please enter a valid email address",
                    },
					
					jobseekerPassword: {
                        required:"Please enter password",
                    },
                },
				
               	submitHandler: function(form) {
					//$('#results').html('<img src="images/ajax-loader.gif">');
					 
					$.post('jobseeker_process.php', $("#register-form").serialize(), function(data) {
						if(data == 1) {	
							$('#JOBSEEKERLOGIN').html('</br><span style="color:red">invalid UserName/Password</span>');
						} else if(data == 0) {
							window.location.replace('job_seeker/details.php');
						}else if(data == 3) {
							window.location.replace('index.php');
						}
						else if(data == 2){ 
							window.location.replace('job_seeker/');
						}
					});
				}
            });
        }
		
    }
	    
    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation();
    });

})(jQuery, window, document);
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
			$.post('jobseeker_process.php', $("#forget_form").serialize(), function(data){
				
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