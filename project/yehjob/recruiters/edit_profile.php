<?php include_once("../include/header_recruiter.php");
//if(empty($_SESSION['recruiter_id'])){header('Location:'.WEB_ROOT);}
?>
	<!--header ends from here-->
	<div class="clearfix"></div>
	<!--Job seeker body starts from her-->
	<script type="text/javascript">stLight.options({publisher: "ab986f6c-fe4b-47d2-837f-b0aa95b75d20", doNotHash:true, doNotCopy:true,hashAddressBar:false})</script>
	<section id="seeker_index">
		<div class="container">
			<div class="col-xs-12 col-sm-2 seeker_three">
				<img src="images/ad_k9_optimizer.jpg" class="img-responsive" alt="">
			</div>
			<div class="col-xs-12 col-sm-8 seeker_three">
				<?php if(!empty($_SESSION['logo'])){ ?>
				<div class="alert alert-success">
  					<strong>Success!</strong> <?php echo $_SESSION['logo'];unset($_SESSION['logo']);?>
				</div>
				<?php } ?>
				<div class="upload_profile"> 
					<div class="upload_profile_heading">
						<span><i class="fa fa-clone"></i></span>&nbsp;&nbsp;<h3>My Profile</h3>
					</div>
				</div>
				<div>
					<div class="tabbable tabs-left">
				        <ul class="nav nav-tabs col-xs-12 col-sm-4">
				        <li class="active"><a href="#a" data-toggle="tab">Edit Profile</a></li>
				        <?php if(!empty($_SESSION[FBID])){?>
				         <li><a href="#d" data-toggle="tab">Upload Company Logo</a></li>
						<?php } elseif(!empty($_SESSION["user_id"])){?>
						<li><a href="#d" data-toggle="tab">Upload Company Logo</a></li>
						<?php } else { ?>	
						<li><a href="#d" data-toggle="tab">Upload Company Logo</a></li>	
						<li><a href="#b" data-toggle="tab">Change Password</a></li>
						<li><a href="#c" data-toggle="tab">Change Profile Picture</a></li>
						<?php } ?>
				        </ul>
				        <div class="tab-content col-xs-12 col-sm-7">
						   	<div class="tab-pane active" id="a">
								<form method="post" id="recruiter_update" role="form">
						       		<span id="RECRUITEREDIT"></span>
									<div class="container col-xs-12">
						         		<?php foreach ($results as $result) { ?>
						         		<div class="form-group tab_text_outer">
						         			<label class="col-xs-12 col-sm-12 col-md-5 tab_text">Name:</label>
						         			<div class="col-xs-12 col-sm-12 col-md-7 tab_input">
						         				<input type="text" placeholder="Name" name="name" value="<?php echo $result['recruiter_name']; ?>" class="form-control">
						         			</div>
						         		</div>
						         		<div class="form-group tab_text_outer">
						         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Email:</label>
						         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         				<input type="text" placeholder="Email" name="email" value="<?php echo $result['recuriter_email']; ?>" class="form-control">
						         			</div>
						         		</div>
						         		<div class="form-group tab_text_outer">
						         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Phone Number:</label>
						         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         				<input type="text" placeholder="Phone Number" value="<?php echo $result['recruiter_phone']; ?>" name="phone" class="form-control">
						         			</div>
						         		</div>
						         		<div class="form-group tab_text_outer">
						         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Company Name:</label>
						         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         				<input type="text" placeholder="Company Name" name="company" value="<?php echo $result['recruiter_company']; ?>" class="form-control">
						         			</div>
						         		</div>
						         		<div class="form-group tab_text_outer">
						         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text"></label>
						         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         				<input type="submit" name="recruiter_update" value="Update Profile" class="btn-rv new_log">
						         			</div>
						         		</div>
						         		<?php } ?>
						         	</div>
									
						        </form>
								
						    </div>
							
							<div class="tab-pane" id="b">
						        <form method="post" id="change_password" role="form">
						        	<span id="CHANGEPASS"></span>
						         	<div class="form-group tab_text_outer">
						         		<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Old Password:</label>
						         		<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         			<input type="password" placeholder="Password" name="old_password" class="form-control">
						         		</div>
						         	</div>
						         	<div class="form-group tab_text_outer">
						         		<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">New Password:</label>
						         		<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         			<input type="password" placeholder="Password" name="new_password" id="new_password" class="form-control">
						         		</div>
						         	</div>
						         	<div class="form-group tab_text_outer">
						         		<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Confirm Password:</label>
						         		<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         			<input type="password" placeholder="Password" name="cnf_password" class="form-control">
						         		</div>
						         	</div>
						         	<div class="form-group tab_text_outer">
						         		<label  class="col-xs-12 col-sm-12 col-md-5 tab_text"></label>
						         		<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         			<input type="submit" value="Change Password" id="change_password" name="change_password" class="btn-rv new_log">
						         		</div>
						         	</div>
						        </form>
						    </div>
						


						    <div class="tab-pane" id="c">
						    	<form method="post" action="" id="change_pic"  role="form" enctype = "multipart/form-data">
						    		<span class="hide_form"><?php foreach ($results as $result) {
						    		 if($result['recruiter_profile_img']!=""){ ?>
								        <div class="form-group tab_text_outer job_img">
								         	<img src="profile_pic/<?php echo $result['recruiter_profile_img']; ?>" class="img-responsive" alt="">
								        </div>
								        <?php } else { ?>
								        <div class="form-group tab_text_outer job_img">
								         	<img src="profile_pic/no_photo.png" class="img-responsive" alt="">
								        </div>
							        	<?php } } ?>
							        </span>
							        <span class="img-preview"></span>
							        <div class="form-group tab_text_outer">
						         		<label class="col-xs-12 col-sm-12 col-md-5 tab_text">Profile picture:</label>
						         		<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         			<input type="file" id="profile_image" accept="image/*"  name="profile_image">
						         		</div>
						         	</div>
						         	<span class="upload-msg" style="color:green;"></span>
						         	<span class="upload-error-msg" style="color:red;"></span>
						         	<div class="form-group tab_text_outer">
						         		<label  class="col-xs-12 col-sm-4 tab_text"></label>
						         		<div  class="col-xs-12 col-sm-8 tab_text">
						         			<input type="submit" value="Update Profile Picture" name="change_pic" id="button" class="btn-rv new_log">
						         		</div>
						         	</div>
					         	</form>
						    </div>

						    <!--company logo change form here -->
						     <div class="tab-pane" id="d">
						    	<form method="post" action="" id="change_logo"  role="form" enctype = "multipart/form-data">
								<span class="hide_form"><?php foreach ($results as $result) {
						    		 if($result['company_logo']!=""){ ?>
								        <div class="form-group tab_text_outer job_img">
								         	<img src="images/<?php echo $result['company_logo']; ?>" class="img-responsive" alt="">
								        </div>
								        <?php } else { ?>
								        <div class="form-group tab_text_outer job_img">
								         	<img src="images/no_photo.jpg" class="img-responsive" alt="">
								        </div>
							        	<?php } } ?>
							        </span>
									
							        <span class="img-preview"></span>
							        <div class="form-group tab_text_outer">
						         		<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Company Logo:</label>
						         		<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">
						         			<input type="file" id="logo" accept="image/*"  name="logo">
						         		</div>
						         	</div>
						         	<span class="upload-msg" style="color:green;"></span>
						         	<span class="upload-error-msg" style="color:red;"></span>
						         	<div class="form-group tab_text_outer">
						         		<label  class="col-xs-12 col-sm-4 tab_text"></label>
						         		<div  class="col-xs-12 col-sm-8 tab_text">
						         			<input type="submit" value="Upload Company Logo" name="change_logo" id="button" class="btn-rv new_log">
						         		</div>
						         	</div>
					         	</form>
						    </div>
						 </div>
				    </div>
				      <!-- /tabs -->
				      
				    </div>
				</div>
			<div class="col-xs-12 col-sm-2 seeker_three">
				<img src="images/1.jpg" class="img-responsive" alt="">
			</div>
		</div>
	</section>
	<!--Job seeker body starts from her-->
	<div class="clearfix"></div>
	<!--footer starts from here-->
	<?php include("../include/footer.php") ?>
	<!--footer ends from here-->
	<script type="text/javascript" src="../js/jquery-validation.js"></script>
	<script type="text/javascript" src="../js/additional-methods.min.js"></script>
	<link rel="stylesheet" href="../css/bootstrap-select.css" type="text/css">
	<!--update profile validation-->
	<script type="text/javascript">
	$(document).ready(function(){
		$("#recruiter_update").validate({
			debug:false,
			rules: {
				name:{ 
					required: true,
				},
				email:{
					required: true,
					email:true,
				},
				phone:{
					required: true,
					digits:true,
					minlength:10,
					maxlength:13,
				},
				
				company:{
					required: true,
				},  
			},
			messages:{
				name:{
					required: "Please enter your name"
				},
				email: {
					required: "Please enter email address",
					email: "Please enter your valid email address"
				},
				phone: {
					required: "Please enter your phone number."
				},
				company: {
					required: "Please enter your company name."
				},
			},	

		  	submitHandler: function(form) {
			  	
				$.post('../recruiter_process.php', $("#recruiter_update").serialize(), function(data){
				
					if(data==1){
					  	$('#RECRUITEREDIT').html('</br><div class = "alert alert-danger">Error Please try again later!</span>');
					} else {
						$('#RECRUITEREDIT').html('</br><div class = "alert alert-success">Successfully updated!</div>');
						//window.location.replace('recruiter_login.php');
					}
				});
			}			
		});
	});

	//change password form validation//
	$(document).ready(function(){

		$("#change_password").validate({
			rules: {
				old_password:{ 
					required: true
				},
			  	new_password:{
					required: true,
					minlength:6
				},
				
				cnf_password:{
					required: true,
					equalTo:"#new_password"
				},
			},
			messages:{
				old_password: {
					required: "Please enter your old password!",
				},
				new_password: {
					required: "Please generate a new password!",
					minlength: jQuery.format("Enter at least {6} characters")
				},
				cnf_password: {
					required: "Please enter Cconfirm password!",
					equalTo: "Please enter the same password as above!"
				},	
			},	

		  	submitHandler: function(form) {
				$.post('../recruiter_process.php', $("#change_password").serialize(), function(data){
					if(data==1){
					  	$('#CHANGEPASS').html('</br><div class="alert alert-danger">Please enter correct old password!</div>');
					} else {
						$('#CHANGEPASS').html('</br><div class="alert alert-success">Your password Successfully changed!</div>');
					}
				});
			}			
		});
	});

	</script>
	<script src="js/ajax-upload.js"></script>
	<script src="js/company_logo.js"></script>
	