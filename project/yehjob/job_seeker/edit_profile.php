	<?php
	error_reporting(0);
	include("../include/header_jobseeker.php"); 
	if(empty($_SESSION['jobseeker_id']) && !headers_sent()){
	 	die("<script>location.href = 'http://www.yehjob.com'</script>");
	}
	?>
	<!--header ends from here-->

	<div class="clearfix"></div>

	<!--Job seeker body starts from her-->
	<script type="text/javascript">stLight.options({publisher: "ab986f6c-fe4b-47d2-837f-b0aa95b75d20", doNotHash:true, doNotCopy:true,hashAddressBar:false})</script>
	<section id="seeker_index">

		<div class="container">

			<div class="col-xs-12 col-sm-2 seeker_three">

				<img src="images/k9utilities.jpg" class="img-responsive" alt="">

			</div>

			<div class="col-xs-12 col-sm-8 seeker_three">

				<div class="upload_profile"> 

					<div class="upload_profile_heading">

						<span><i class="fa fa-clone"></i></span>&nbsp;&nbsp;<h3>My Profile</h3>

					</div>

				</div>

				<div>

					 <div class="tabbable tabs-left">

				        <ul class="nav nav-tabs col-xs-12 col-sm-4">
						  <?php if($_SESSION['FBID_JS']!=''){ ?>
				          <li class="active"><a href="#a" data-toggle="tab">Edit Profile</a></li>
						  <?php }elseif(!empty($_SESSION["user_id"])){ ?>
						  <li class="active"><a href="#a" data-toggle="tab">Edit Profile</a></li>
						  <?php } else {?>
						  <li class="active"><a href="#a" data-toggle="tab">Edit Profile</a></li>
				          <li><a href="#b" data-toggle="tab">Change Password</a></li>
				          <li><a href="#c" data-toggle="tab">Change Profile Picture</a></li>
						  <?php } ?>

				        </ul>

				        <div class="tab-content col-xs-12 col-sm-7">

				         <div class="tab-pane active" id="a">

                         <form  method="post" id="edit_profileform" action="">

                           <span id="JOBSEEKERUPDATE"></span>

				         	<div class="container col-xs-12">



                               <?php foreach($jobseeker_result as $result_individual){?>

				         		<div class="form-group tab_text_outer">

				         			<label class="col-xs-12 col-sm-12 col-md-5 tab_text">First Name:</label>

				         			<div class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				<input type="text" placeholder="Name" name="fname" value="<?php echo $result_individual['fname']; ?>" class="form-control">

				         			</div>

				         		</div>

                                

                                <div class="form-group tab_text_outer">

				         			<label class="col-xs-12 col-sm-12 col-md-5 tab_text">Last Name:</label>

				         			<div class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				<input type="text" placeholder="Name" name="lname" value="<?php echo $result_individual['lname']; ?>" class="form-control">

				         			</div>

				         		</div>

                                

				         		<div class="form-group tab_text_outer">

				         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Email:</label>

				         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				<input type="text" placeholder="Email" name="email" value="<?php echo $result_individual['jobseeker_email']; ?>"  class="form-control">

				         			</div>

				         		</div>

				         		<div class="form-group tab_text_outer">

				         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Phone Number:</label>

				         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				<input type="text" placeholder="Phone Number" name="phone" value="<?php echo $result_individual['jobseeker_phone']; ?>" class="form-control">

				         			</div>

				         		</div>

                                <?php } ?>

                                <div class="form-group tab_text_outer">

				         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text"></label>

				         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				

                                        <input type="submit" name="update_jobseeker" class="btn-rv new_log" value="Update Profile">

				         			</div>

				         		</div>

				         	</div>

                            </form>

				         </div>
				        <?php if(empty($_SESSION["user_id"])){ ?>

				         <div class="tab-pane" id="b">

				         	<form method="post" id="changepassword" role="form">

                             <span id="JOBSEEKERPASS"></span>

				         		<div class="form-group tab_text_outer">

				         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Old Password:</label>

				         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				<input type="password" placeholder="Password" name="old_pass" class="form-control">

				         			</div>

				         		</div>

				         		<div class="form-group tab_text_outer">

				         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">New Password:</label>

				         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				<input type="password" placeholder="Password" name="new_pass" id="new_password" class="form-control">

				         			</div>

				         		</div>

				         		<div class="form-group tab_text_outer">

				         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Confirm Password:</label>

				         			<div  class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				<input type="password" placeholder="Password" name="confirm_pass" class="form-control">

				         			</div>

				         		</div>

                                

				         		<div class="form-group tab_text_outer">

				         			<label  class="col-xs-12 col-sm-12 col-md-5 tab_text"></label>

				         			<div class="col-xs-12 col-sm-12 col-md-7 tab_text">

				         				<input type="submit" class="btn-rv new_log" name="change_password" value="Change Password">

				         			</div>

				         		</div>

				         	</form>

				         </div>
				         <?php } ?>

				         <div class="tab-pane" id="c">

						    	<form method="post" action="" id="change_pic"  role="form" enctype = "multipart/form-data">

						    		<span class="hide_form"><?php foreach ($jobseeker_result as $result) {

						    		 if(!empty($result['jobseeker_profile_img'])){ ?>

								        <div class="form-group tab_text_outer job_img">

								         	<img src="profile_pic/<?php echo $result['jobseeker_profile_img']; ?>" class="img-responsive" alt="">

								        </div>
								        <?php } else{ ?>

								        <div class="form-group tab_text_outer job_img">

								         	<img src="profile_pic/no_photo.png" class="img-responsive" alt="">

								        </div>
							        <?php } } ?>

							        </span>

							        <span class="img-preview"></span>

							        <div class="form-group tab_text_outer">

						         		<label  class="col-xs-12 col-sm-12 col-md-5 tab_text">Profile picture:</label>

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

				        </div>

				      </div>

				      <!-- /tabs -->

				      

				    </div>

				</div>

			<div class="col-xs-12 col-sm-2 seeker_three">

				<img src="images/fonebell1.jpg" class="img-responsive" alt="">

			</div>

		</div>

	</section>

	<!--Job seeker body starts from her-->

	<div class="clearfix"></div>

 <?php include("../include/footer.php") ?>

   <!--<script src="js/jquery-validation.js" language="javascript" type="text/javascript"></script>-->  

	<!--footer starts from here-->

	

    <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->

  <script type="text/javascript" src="../js/jquery-validation.js"></script>

	<script type="text/javascript" src="../js/additional-methods.min.js"></script>

	<link rel="stylesheet" href="../css/bootstrap-select.css" type="text/css">

         

<script type="text/javascript">

	$(document).ready(function(){

		

		$("#edit_profileform").validate({

			

			rules: {

				fname:{ 

					required: true,

				},

				lname:{ 

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

			},

			messages:{

				fname:{

					required: "Please enter your First name"

				},

				lname:{

					required: "Please enter your First name"

				},

				email: {

					required: "Please enter email address",

					email: "Please enter your valid email address"

				},

				phone: {

					required: "Please enter your phone number."

				},

				

			},	

			

				submitHandler: function(form) {

				$.post('../jobseeker_process.php', $("#edit_profileform").serialize(), function(data){

					

					if(data==1){

						$('#JOBSEEKERUPDATE').html('<div class="alert alert-danger">Error,please try later!</div>');

					} else {

					

						$('#JOBSEEKERUPDATE').html('<div class="alert alert-success">Your profile successfully updated!</div>');

					}

				});

			}		



		  		

		});

	});

	

	//change password form validation//

	

	$(document).ready(function(){

		$("#changepassword").validate({

			rules: {

				old_pass:{

					required: true

				},

				new_pass:{

					required: true,

					minlength:6

				},

				confirm_pass:{

					required: true,

					equalTo:"#new_password"

				},

			},

			messages:{

				old_pass: {

					required: "Please enter your old password!",

				},

				new_pass: {

					required: "Please generate a new password!",

					minlength: jQuery.format("Enter at least {6} characters")

				},

				confirm_pass: {

					required: "Please enter Cconfirm password!",

					equalTo: "Please enter the same password as above!"

				},

			},	



		  	submitHandler: function(form) {

					$.post('../jobseeker_process.php', $("#changepassword").serialize(), function(data){

					

					if(data==1){

					  	$('#JOBSEEKERPASS').html('<div class="alert alert-danger" >Please enter correct password!</div>');

					} else {

						$('#JOBSEEKERPASS').html('<div class="alert alert-success" >Your password successfully updated!</div>');

					}

				});

			}			

		});

	});

	

	</script>



  <script src="js/ajax-upload.js"></script>

	<!--footer ends from here-->

    



