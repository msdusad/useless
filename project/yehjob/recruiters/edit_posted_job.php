<?php

	include("../include/header_recruiter.php");

	$lk_data = new search();

	if(empty($_SESSION['recruiter_id']) AND empty($_SESSION['FBID'])){header('Location:'.WEB_ROOT);}

	if(!empty($_GET['post_job_id'])){

		$post_job_id =$_SESSION['post_job_id'] =  $_GET['post_job_id'];

	}

	$msg="";

	if(!empty($_GET['del']) && $_GET['del'] == 'Y' && !empty($_SESSION['post_job_id'])){

		$msg = $lk_data->deleteJob();

		if($msg="success"){

			die("<script>location.href = 'http://www.yehjob.com/recruiters/'</script>");

		}else{

			die("<script>alert('Error! Please try again later!');</script>");

		}

	}

	$post_jobs = $lk_data->selectPostedJobsRecruiterByJobId($post_job_id);

	$category_data = $lk_data->selectCategorys();

	$location_data = $lk_data->selectLocations();

	//$location_data =$lk_data->selectcities();

	$skill_data = $lk_data->selectSkills();

	$expdata = $lk_data->selectExperiences();

	$quli_data = $lk_data->selectQualifications();

	$salarys = $lk_data->selectSalarys();

	$job_types = $lk_data->selectJobTypes();

	$recruiter_data = $lk_data->recruiterData();

?>

	<style>

		.sal-cus{

		font-size: 12px;

	    margin-top: 1.5%;

	    padding-left: 0 !important;

		}

		.nicEdit-main ol{ list-style:inside; list-style-type: decimal; }

		.nicEdit-main ul{ list-style: inside; list-style-type: circle; }

		.nicEdit-main b{ list-style: inside; font-weight : bold;}

		.nicEdit-main i{ list-style: inside; font-style : italic;} 

	</style>

	<!--header ends from here-->

	<div class="clearfix"></div>

	<!--Job seeker body starts from her-->

	<script type="text/javascript">stLight.options({publisher: "ab986f6c-fe4b-47d2-837f-b0aa95b75d20", doNotHash:true, doNotCopy:true,hashAddressBar:false})</script>

	<section id="seeker_index">

		<div class="container">

			<div class="col-xs-12 col-sm-9 seeker_three">

				<div class="upload_profile"> 

					<div class="upload_profile_heading">

						<span><i class="fa fa-upload"></i></span>&nbsp;&nbsp;<h3>Post Job</h3>

					</div>

					<div class="upload_text">

						<form method="post" id="post_job" role="form" action="process.php" enctype="multipart/form-data">

							<span id="POSTJOBMSG"></span>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Company Name:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<?php 

									if(!empty($post_jobs['company_name'])){?>

										<input type="text" placeholder="Company Name" name="company" value="<?php echo $post_jobs['company_name'];?>" class="form-control">

										<?php } else { ?>

										<input type="text" placeholder="Company Name" name="company" value="" class="form-control">

									<?php } ?>

								</div>

							</div>

							<!--<?php

							foreach ($recruiter_data as $rec_data) {

							if(empty($rec_data['company_logo'])){?>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Company Logo:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<input type="file" name="company_logo" id="company_logo" accept="image/*">

								</div>

							</div>

							<?php } }?>-->

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Job Title:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<?php if(!empty($post_jobs['job_title'])){?>

									<input type="text" placeholder="Job Title" name="job_title" value="<?php echo $post_jobs['job_title']; ?>" class="form-control">

									<?php } else {?>

									<input type="text" placeholder="Job Title" name="job_title" value="" class="form-control">

									<?php } ?>

								</div>

							</div>
							<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Position:</label>
								<div class="col-xs-12 col-sm-9 job_input">
									<?php if(!empty($post_jobs['position'])){?>
									<input type="text" placeholder="Enter Position" name="position" value="<?php echo $post_jobs['position']; ?>" class="form-control">
									<?php } else {?>
									<input type="text" placeholder="Enter Position" name="position" value="" class="form-control">
									<?php } ?>
								</div>
							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Job Description :</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<?php if(!empty($post_jobs['job_description'])){?>

									<textarea placeholder="Job Description" name="desc" class="form-control"><?php echo $post_jobs['job_description']; ?></textarea>

									<?php } else {?>

									<textarea placeholder="Job Description" name="desc" class="form-control"></textarea>

									<?php }?>

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Key Skills:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<?php if(!empty($post_jobs['keywords'])){?>

									<input type="text" placeholder="Enter multiple keyskills seprated by comma ( for eg. php,mysql,html )" onkeypress="return check(event)" name="keywords" value="<?php echo $post_jobs['keywords']; ?>" class="form-control">

									<?php } else {?>

									<input type="text" placeholder="Enter multiple keyskills seprated by comma ( for eg. php,mysql,html )" onkeypress="return check(event)" name="keywords" value="" class="form-control">

									<?php } ?>

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Job Location :</label>

								<div class="col-xs-12 col-sm-9 job_input">
									<span id="txterror" style="color:#E41316; font-size:13px;">Please Enter a Location</span>
								<select class="form-control" name="location[]" id="select5" multiple>

									<optgroup label="Please select locations...">

									<?php foreach ($location_data as $locationn) { 

										if(!empty($post_jobs['location'])){

										$SSlocation=explode(",",$post_jobs['location']);

									?>

										<option  value="<?php echo $locationn['locations'] ;?>" <?php if(array_intersect($SSlocation,$locationn)) echo 'selected="selected"' ;?>><?php echo $locationn['locations'] ;?></option>

									<?php } else { ?>

										<option  value="<?php echo $locationn['locations'] ;?>" ><?php echo $locationn['locations'] ;?></option>

									<?php  }} ?>

								  	</optgroup>

								  	</select>

								  	<input value="activate selectator" id="activate_selectator5" type="hidden">

									

                                    <div class="col-xs-12 col-sm-9 job_input"  style="padding:5px 0px;">

                                      <div class="col-xs-6 col-sm-9 job_input"  style="padding:5px 0px;">

								  		<input type="text" placeholder="Other Location" name="other_location" id="locatinID" value="<?php echo $_SESSION['other_location'];?>" class="form-control">

                                        </div>

                                         <div class="col-xs-3"> <i class="fa fa-times" id="removetx" style="font-size: 17px; color:#F40C10; margin-top:13px;cursor:pointer;"></i></div>

									</div>

                                 	<span id="cllink" style="float:right; font-size:11px; font-weight:bold; cursor:pointer; margin-top:7px;color: #3399ff;text-decoration: underline;">Other Location +</span>



                                     

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Contact Email Address:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<input type="text" placeholder="Contact Email Address" name="email" value="<?php echo $post_jobs['recuriter_email'];?>" class="form-control">

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Contact Phone Numbers:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<input type="text" placeholder="Contact Phone Numbers" name="phone" value="<?php echo $post_jobs['phone'];?>" class="form-control">

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Choose Category:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<select class="form-control" name="category">

										<option  value="">Please select...</option>

										<?php foreach($category_data as $category){

											if(!empty($post_jobs['category_id'])){ 

										?>

											<option  value="<?php echo $category['category_id'];?>" <?php if($post_jobs['category_id'] == $category['category_id']) echo 'selected="selected"'; ?>><?php echo $category['category_name'];?></option>

											<?php } else { ?>

										<option  value="<?php echo $category['category_id'];?>"><?php echo $category['category_name'];?></option>

										<?php }} ?>

								    </select>

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Job Role : </label>

								<div class="col-xs-12 col-sm-9 job_input">

									<select class="form-control" name="skills[]" id="select6" multiple>

									<optgroup label="Please select Job Role...">

									<?php foreach ($skill_data as $skill) { 

										if(!empty($post_jobs['skills'])){

										$SSskill=explode(",",$post_jobs['skills']);

									?>

										<option  value="<?php echo $skill['skill'] ;?>" <?php if(array_intersect($SSskill,$skill)) echo 'selected="selected"' ;?>><?php echo $skill['skill'] ;?></option>

									<?php } else { ?>

										<option  value="<?php echo $skill['skill'] ;?>" ><?php echo $skill['skill'] ;?></option>

									<?php  }} ?>

									</optgroup>

								  	</select>

								  	<input value="activate selectator" id="activate_selectator6" type="hidden">

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">What qualifications are needed?:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<select class="form-control" name="qualifications[]" id="select7" multiple>

										<optgroup label="Please select qualifications...">

										<?php foreach ($quli_data as $quali) { 

										if(!empty($post_jobs['qualifications'])){

										$SSqualifications=explode(",",$post_jobs['qualifications']);

										?>

											<option  value="<?php echo $quali['qualification_name'] ;?>" <?php if(array_intersect($SSqualifications,$quali)) echo 'selected="selected"' ;?>><?php echo $quali['qualification_name'];?></option>

										<?php } else { ?>

											<option  value="<?php echo $quali['qualification_name'] ;?>" ><?php echo $quali['qualification_name'];?></option>

										<?php  }} ?>

										</optgroup>

								    </select>

								    <input value="activate selectator" id="activate_selectator7" type="hidden">

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Job Type (optional) :</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<select class="form-control " name="job_type">

										<option value="">Select your Job Type</option>

										<?php foreach ($job_types as $job_type) {

											if(!empty($post_jobs['job_type_id'])){

									 	?>

										<option value="<?php echo $job_type['job_type_id']; ?>" <?php if($post_jobs['job_type_id'] == $job_type['job_type_id']) echo 'selected="selected"'; ?> ><?php echo $job_type['job_type']; ?></option>

										<?php } else{ ?>

										<option value="<?php echo $job_type['job_type_id']; ?>" ><?php echo $job_type['job_type']; ?></option>

										<?php } } ?>

								    </select>

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Salary :</label>

								<div class="col-xs-12 col-sm-4 job_input">

									<select class="form-control " name="min_salary">

										<option value="0">Min Salary</option>

										<?php

										foreach ($salarys as $salary){

										 	if(!empty($post_jobs['salary'])){ 

										 		$salary1=explode("-",$post_jobs['salary']);

										 		$min_salary = $salary1[0];

										 		$max_salary = $salary1[1];

										?>

											<option value="<?php echo $salary['salary'];?>" <?php if($min_salary == $salary['salary']) echo 'selected="selected"';?>><?php echo $salary['salary'];?></option>

											<?php } else { ?>

											<option value="<?php echo $salary['salary'];?>"><?php echo $salary['salary'];?></option>

										<?php } } ?>

								    </select>

									

								</div>

								<div class="col-xs-12 col-sm-1">

									<label class="col-xs-12 col-sm-1 job_text sal-cus">To</label>

								</div>

								<div class="col-xs-12 col-sm-3">

									<select class="form-control " name="max_salary">

										<option value="0">Max Salary</option>

										<?php

										foreach ($salarys as $salary) { 

											if(!empty($max_salary)){ ?>

											<option value="<?php echo $salary['salary'];?>"<?php if($max_salary == $salary['salary']) echo 'selected="selected"';?>><?php echo $salary['salary'];?></option>

											<?php } else {?>

											<option value="<?php echo $salary['salary'];?>"><?php echo $salary['salary'];?></option>

										<?php } } ?>

								    </select>

								</div>

								<div class="col-xs-12 col-sm-1">

									<label class="col-xs-12 col-sm-1 job_text">Lakhs</label>

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Experience :</label>

								<div class="col-xs-12 col-sm-4 job_input">

									<select class="form-control " name="min_exp">

										<option value="">Select experience</option>

										<?php 

										foreach ($expdata as $experience) {

											if(!empty($post_jobs['experience'])){ 

												$exp1=explode("-",$post_jobs['experience']);

										 		$min_exp = $exp1[0];

										 		$max_exp = $exp1[1];

										?>

											<option value="<?php echo $experience['experience']; ?>" <?php if($min_exp == $experience['experience']) echo 'selected="selected"';?>><?php echo $experience['experience']; ?></option>

											<?php } else { ?>

											<option value="<?php echo $experience['experience']; ?>"><?php echo $experience['experience']; ?></option>

										<?php }} ?>

								    </select>

								</div>

								<div class="col-xs-12 col-sm-1">

									<label class="col-xs-12 col-sm-1 job_text sal-cus">Years</label>

								</div>

								<div class="col-xs-12 col-sm-3 job_input">

									<select class="form-control " name="max_exp">

										<option value="">Select experience...</option>

										<?php

										foreach ($expdata as $maxexp) {

										 	if(!empty($max_exp)){ ?>

											<option value="<?php echo $maxexp['experience']; ?>" <?php if($max_exp == $maxexp['experience']) echo 'selected="selected"';?>><?php echo $maxexp['experience']; ?></option>

											<?php } else {?>

											<option value="<?php echo $maxexp['experience']; ?>"><?php echo $maxexp['experience']; ?></option>

										<?php } } ?>

								    </select>

								</div>

								<div class="col-xs-12 col-sm-1">

									<label class="col-xs-12 col-sm-3 job_text sal-cus">Months</label>

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Company Overview:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<?php if(!empty($post_jobs['company_desc'])){?>

									<textarea placeholder="Company Overview" name="company_overview" class="form-control"><?php echo $post_jobs['company_desc'] ;?></textarea>

									<?php } else {?>

									<textarea placeholder="Company Overview" name="company_overview" class="form-control"></textarea>

									<?php } ?>

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Whatsapp ID:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<?php if(!empty($post_jobs['whatsapp_id'])){?>

									<input type="text" placeholder="Whatsapp ID" name="whatsapp_id" value="<?php echo $post_jobs['whatsapp_id'] ;?>"  class="form-control">

									<?php } else {?>

									<input type="text" placeholder="Whatsapp ID" name="whatsapp_id" value=""  class="form-control">

									<?php } ?>								

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="col-xs-12 col-sm-3 job_text">Linkedin:</label>

								<div class="col-xs-12 col-sm-9 job_input">

									<?php if(!empty($post_jobs['linkedin_profile'])){?>

									<input type="text" placeholder="Linkedin" name="linkedin" value="<?php echo $post_jobs['linkedin_profile'] ;?>"  class="form-control">

									<?php } else {?>

									<input type="text" placeholder="Linkedin" name="linkedin" value=""  class="form-control">

									<?php } ?>

								</div>

							</div>

							<div class="form-group job_text_outer">

								<label class="control-label col-sm-3"></label>

								<div class="col-xs-12 col-sm-9 job_input">

									<input  type="submit" value="Submit" name="submit" class="btn-rv new_log" onClick="return alertbox();">

									<!--<input type="submit" value="Publish" name="post_job_submit" class="btn-rv">-->

								</div>

							</div>

						</form>

					</div>

				</div>

			</div>

			<div class="col-xs-12 col-sm-3 seeker_three">

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

	<script type="text/javascript">

	$(document).ready(function(){

		$("#post_job").validate({

			rules: {
				company:{
					required: true,
				},
				company_logo:{

					required: true,
				},
				job_title:{ 

					required: true,
				},
				position:{

					required: true,
				},  
			  	desc:{
					required: true,
					minlength:20,
				},
				keywords:{
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

				'category[]':{

					required: true,

				},

				'skills[]':{

					required: true,

				},  

			  	job_type:{

					required: true,
				},
			},

			messages:{

				company:{
					required: "Please enter your name."
				},

				company_logo:{
					required: "Please select image file of company logo."
				},

				job_title:{

					required: "Please enter job title."
				},

				email: {

					required: "Please enter email address",

					email: "Please enter your valid email address"
				},
				position: {

					required: "Please select job position."
				},

				desc: {

					required: "Please enter job Description."

				},
				keywords: {

					required: "Please enter keyskills."

				},
				email: {

					required: "Please enter your contact email."

				},
				phone: {

					required: "Please enter your contact number."
				},

				'category[]': {

					required: "Please select job category."
				},

				'skills[]': {

					required: "Please select job skills."
				},

				job_type: {

					required: "Please select job type."
				},

			},





		  	//submitHandler: function(form) {

			  	//$('#RECRUITERSIGNUP').html('<img src="images/ajax-loader.gif">');

				//$.post('preview_job.php', $("#post_job").serialize(), function(data){

				//alert(data);

					//if(data==1){

					  //	$('#RECRUITERSIGNUP').html('</br><span style="color:red;">This email id is already register try another</span>');

					//} else if(data==2) {

						//$('#RECRUITERSIGNUP').html('</br><span style="color:red">Please enter correct captcha image</span>');

					//} else {

						//$('#RECRUITERSIGNUP').html('</br><span style="color:green">Verify your email id, link has been sent to your register email id</span>');

						//alert("Verify your email id, link has been sent to your register email id!");

					//}

			//	});

			//}			

		});

	});

	</script>



	<link rel="stylesheet" href="css/fm.selectator.jquery.css"/>

	<script src="js/fm.selectator.jquery.js"></script>

    <script>

		$(function () {

			

			var $activate_selectator5 = $('#activate_selectator5');

			var $activate_selectator6 = $('#activate_selectator6');

			var $activate_selectator7 = $('#activate_selectator7');

			$activate_selectator5.click(function () {

				var $select5 = $('#select5');

				if ($select5.data('selectator') === undefined) {

					$select5.selectator({

						showAllOptionsOnFocus: true

					});

					

				}

			});

			$activate_selectator5.trigger('click');

			

			$activate_selectator6.click(function () {

				var $select6 = $('#select6');

				if ($select6.data('selectator') === undefined) {

					$select6.selectator({

						showAllOptionsOnFocus: true

					});

					

				}

			});

			$activate_selectator6.trigger('click');



			$activate_selectator7.click(function () {

				var $select7 = $('#select7');

				if ($select7.data('selectator') === undefined) {

					$select7.selectator({

						showAllOptionsOnFocus: true

					});

					

				}

			});

			$activate_selectator7.trigger('click');



		});

	</script>

	<script type="text/javascript">

	   $(document).ready(function(e) {

		   $('#removetx').hide();

	   		var session_loc = "<?php echo $_SESSION['location'];?>";

	    	if(session_loc !=""){

		        $('#locatinID').show();

		        $('#cllink').hide();

		    }else{

		    	$('#locatinID').hide();

			   	$('#cllink').show();

		       	$('#cllink').click(function() {

				   $('#locatinID').show();

				   $('#cllink').hide();

				   $('#removetx').show();

			   });

		    }

			

			 	$('#removetx').click(function()

   				{

	  			if(confirm("Are you sure?"))

	  			{

					$('#locatinID').hide();

	   				$('#removetx').hide();

	    			$('#cllink').show();

		  		}

  		 });

      });

    </script>
    
    
            <!-- Check special characters in username start -->
<script language="javascript" type="text/javascript">
function check(e) {
    var keynum
    var keychar
    var numcheck
    // For Internet Explorer
    if (window.event) {
        keynum = e.keyCode;
    }
    // For Netscape/Firefox/Opera
    else if (e.which) {
        keynum = e.which;
    }
    keychar = String.fromCharCode(keynum);
    //List of special characters you want to restrict
    if (keychar == ".") {
        return false;
    } else {
        return true;
    }
}
</script>


<script type="text/javascript">

document.getElementById('txterror').style.display="none";
function alertbox()
{
	
	if(document.getElementById('select5').value=='' && document.getElementById('locatinID').value=='')
	{
		
		document.getElementById('txterror').style.display="inherit";
		document.getElementById('locatinID').focus();
		console.log("your message here");
		return false;
        //document.getElementById('txtalert').style.display="inherit";

		<!--window.location.replace('post_job.php');-->
	} else if(document.getElementById('select5').value!='' && document.getElementById('locatinID').value=='')
	{
		document.getElementById('txterror').style.display="none";
	  return true;	
	}else if(document.getElementById('select5').value=='' && document.getElementById('locatinID').value!='')
	{
	    document.getElementById('txterror').style.display="none";
		return true;
	}else if(document.getElementById('select5').value!='' && document.getElementById('locatinID').value!='')
	{
	    document.getElementById('txterror').style.display="inherit";
		document.getElementById('locatinID').focus();
		return false;
	}
	return true;
}

</script>

