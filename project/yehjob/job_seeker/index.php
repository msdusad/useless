<?php
include("../include/header_jobseeker.php");
if(empty($_SESSION['jobseeker_id']) AND empty($_SESSION['FBID_JS']) AND empty($_SESSION['user_id'])){
	 die("<script>location.href = 'http://www.yehjob.com'</script>");
}
unset($_SESSION['job_id']);
?>
	<style>
		.sal-cus{
		font-size: 12px;
	    margin-top: 1.5%;
	    padding-left: 0 !important;
		}
	</style>
	<!--header ends from here-->
	<div class="clearfix"></div>
	<!--Job seeker body starts from her-->
	<script type="text/javascript">stLight.options({publisher: "ab986f6c-fe4b-47d2-837f-b0aa95b75d20", doNotHash:true, doNotCopy:true,hashAddressBar:false})</script>
	<section id="seeker_index">
		<div class="container">
			<div class="col-xs-12 col-sm-2 seeker_three">
				<img src="images/fonebell1.jpg" class="img-responsive" alt="">
			</div>
			<div class="col-xs-12 col-sm-8 seeker_three">
				<div class="upload_profile"> 
					<div class="upload_profile_heading">
						<span><i class="fa fa-upload"></i></span>&nbsp;&nbsp;<h3>Update Profile</h3>
					</div>
                   
					<div class="upload_text">
                       	<?php if(!empty($_SESSION['url_string']) && $_SESSION['url_string'] == 'Your profile has been updated successfully!'){ ?>
                       		<div class="alert alert-success"><?php echo $_SESSION['url_string']; unset($_SESSION['url_string']);?></div>
                       	<?php } elseif(!empty($_SESSION['url_string']) && $_SESSION['url_string'] == 'File not uploaded to the server!') { ?>
                       		<div class="alert alert-danger"><?php echo $_SESSION['url_string']; unset($_SESSION['url_string']);?></div>
                        <?php } elseif (!empty($_SESSION['url_string']) && $_SESSION['url_string'] == 'You are not allowed to upload file size more than 200kb!') {?>
                        	<div class="alert alert-danger"><?php echo $_SESSION['url_string']; unset($_SESSION['url_string']);?></div>
                        <?php } ?>
                        <!--Form Started From Here-->
					
                        <form action="process.php" method="post" enctype="multipart/form-data" id="update_profile">
                         
							<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Choose Category:</label>
								<div class="col-xs-12 col-sm-9 job_input">
									<select class="form-control" name="category">
										<option  value="">Please select...</option>
										<?php 
										foreach($categoryData as $seekerdata)
										{
											if(!empty($jobseekerprofile)) {
											foreach($jobseekerprofile as $profile) {
										?>
											<option  value="<?php echo $seekerdata['category_name']; ?>"<?php if($seekerdata['category_name']==$profile['category_name'])echo 'selected="selected"';?>><?php echo $seekerdata['category_name']; ?></option>
                                        <?php }}else{?>
										<option  value="<?php echo $seekerdata['category_name']; ?>"><?php echo $seekerdata['category_name']; ?></option>	
										<?php }} ?>
									</select>
                                 
								</div>
							</div>
							<!--<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Key Skills:</label>
								<div class="col-xs-12 col-sm-9 job_input">
									<select class="form-control" name="key_skills[]" id="select6" multiple>
										<optgroup label="Please select...">
										<?php 
										   	foreach($skillData as $sklata) {
										   		if(!empty($jobseekerprofile)){
												foreach($jobseekerprofile as $profile) {
												$profile_new=explode(",",$profile['skill']);		
										?>
										<option  value="<?php echo $sklata['skill']; ?>" class="option_eight" <?php if (array_intersect($profile_new, $sklata)){echo 'selected="selected"';}?>><?php echo $sklata['skill']; ?></option>
										<?php }}else { ?>
										<option  value="<?php echo $sklata['skill']; ?>" class="option_eight"><?php echo $sklata['skill']; ?></option>
										<?php }} ?>
										</optgroup>
									</select>
                                  <input value="activate selectator" id="activate_selectator6" type="hidden">
								</div>
							</div>-->
							<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Key Skills:</label>
								<div class="col-xs-12 col-sm-9 job_input">
									<?php 
									if(!empty($jobseekerprofile)){
										foreach ($jobseekerprofile as $jobseekerskill) { 
									?>
										<input type="text" name="key_skills" placeholder="Enter multiple keyskills seprated by comma ( for eg. php,mysql,html )" value="<?php echo $jobseekerskill['skill'];?>" class="form-control">
										<?php } } else{ ?>
										<input type="text" name="key_skills" placeholder="Enter multiple keyskills seprated by comma ( for eg. php,mysql,html )" value="" class="form-control">
										<?php }?>
								</div>
							</div>
							<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Experience :</label>
								<div class="col-xs-12 col-sm-4 job_input">
									<select class="form-control " name="min_exp">
										<option value="">Select experience</option>
										<?php 
										foreach ($expdata as $min_exp){
											if(!empty($jobseekerprofile)){
											foreach($jobseekerprofile as $profile)
											{
											$profile_new=explode('.',$profile['experience']);
											$year=$profile_new[0];
											$month=$profile_new[1];
											?>
										<option value="<?php echo $min_exp['experience']; ?>"<?php if($min_exp['experience']==$year)echo 'selected="selected"';?>><?php echo $min_exp['experience']; ?></option>
											<?php }} else {?>
										<option value="<?php echo $min_exp['experience']; ?>"><?php echo $min_exp['experience']; ?></option>
											<?php }}?>
								    </select>
								</div>
								<label class="col-sm-1 sal-cus">Years</label>
								<div class="col-xs-12 col-sm-3 job_input">
									<select class="form-control " name="max_exp">
										<option value="">Select experience...</option>
										<?php
										foreach ($expdata as $maxexp) {
											if(!empty($jobseekerprofile)){
											foreach($jobseekerprofile as $profile)
											{
											$profile_new=explode('.',$profile['experience']);
											$year=$profile_new[0];
											$month=$profile_new[1];
											?>
										<option value="<?php echo $maxexp['experience']; ?>" <?php if($maxexp['experience']==$month)echo 'selected="selected"';?>><?php echo $maxexp['experience']; ?></option>
											<?php }}else {?>
										<option value="<?php echo $maxexp['experience']; ?>"><?php echo $maxexp['experience']; ?></option>
											<?php }}?>
								    </select>
								</div>
								<label class="col-sm-1 sal-cus">Months</label>
							</div>
                            
                            <div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Highest Qualification:</label>
								<div class="col-xs-12 col-sm-9 job_input">
									<select class="form-control" name="qualification">
										<option  value="">Please select...</option>
                                        <?php  
										foreach($QuliData as $qualificationData){
											if(!empty($jobseekerprofile)){
											foreach($jobseekerprofile as $profile){
										?>
										<option value="<?php echo $qualificationData['qualification_name']; ?>"<?php if($qualificationData['qualification_name']==$profile['qualification_name']) echo 'selected="selected"';?>><?php echo $qualificationData['qualification_name']; ?></option>
										<?php }} else { ?>
										<option value="<?php echo $qualificationData['qualification_name']; ?>"><?php echo $qualificationData['qualification_name']; ?></option>
										<?php }} ?>
								  </select>
								</div>
							</div>
                            
					
							<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Prefered Location:</label>
								<div class="col-xs-12 col-sm-9 job_input">
									
                                    <select class="form-control" name="location[]" id="select5" multiple>
										<optgroup label="Please select...">
										<?php 
										   	foreach($locationData as $locdata) {
										   	if(!empty($jobseekerprofile)){
												foreach($jobseekerprofile as $profile){
												$profile_new=explode(",",$profile['location']);			
										?>
                                        <option  value="<?php echo $locdata['locations']; ?>"<?php if(array_intersect($profile_new,$locdata)) echo 'selected="selected"';?> class="option_eight"><?php echo $locdata['locations']; ?></option>
										   <?php }} else {?>
										   <option  value="<?php echo $locdata['locations']; ?>" class="option_eight"><?php echo $locdata['locations']; ?></option>
										   <?php }}?>
										</optgroup>
								  </select>
                                  <input value="activate selectator" id="activate_selectator5" type="hidden">
								</div>
							</div>
							
							<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Whatsapp:</label>
								<div class="col-xs-12 col-sm-9 job_input">
								<input type="text" placeholder="Whatsapp" name="whatsapp" value="<?php if(!empty($profile['whatsapp_link'])) echo $profile['whatsapp_link'];?>" class="form-control">
								</div>
							</div>
							<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Linkedin:</label>
								<div class="col-xs-12 col-sm-9 job_input">
									<input type="text" placeholder="Linkedin" value="<?php if(!empty($profile['linkedin'])) echo $profile['linkedin'];?>" name="linkedin" class="form-control">
								</div>
							</div>
							<div class="form-group job_text_outer">
								<label class="col-xs-12 col-sm-3 job_text">Upload Resume:</label>
								<div class="col-xs-12 col-sm-9 job_input">
								    <input type="file" id="resume" name="jobseeker_resume">
								</div>
							</div>
							<div class="form-group job_text_outer">
								<label class="control-label col-sm-3"></label>
								<div class="col-xs-12 col-sm-9 job_input">
                                    <input type="submit" class="btn-rv new_log" name="upload_profile_btn" value="Update Profile">
								</div>
							</div>
                          
						</form>
						<!--Form Ended Here-->
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-2 seeker_three">
				<img src="images/k9utilities.jpg" class="img-responsive" alt="">
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
    <script src="http://malsup.github.com/jquery.form.js"></script>
	<link rel="stylesheet" href="../css/bootstrap-select.css" type="text/css">
    
   <script type="text/javascript">
	$(document).ready(function(){
		
		$("#update_profile").validate({
			
			rules: {
				category:{ 
					required: true,
				},
				'key_skills[]':{ 
					required: true,
				},
				qualification:{ 
					required: true,
				},
				min_exp:{
					required: true,
				},
				max_exp:{
					required: true,
				},
				'location[]':{
					required: true,
				},
				/*jobseeker_resume:{
					required: true,
					extension: "docx|doc"
				},*/
			},
			messages:{
				category:{
					required: "Please choose a category"
				},
				'key_skills[]':{
					required: "Please choose your key skills"
				},
				qualification: {
					required: "Please choose your highest qualification",
					
				},
				max_exp: {
					required: "Please enter your years of experience",
				},
				min_exp: {
					required: "Please enter your months of experience",
				},
				'location[]': {
					required: "Please select your preferred locations"
				},
				/*jobseeker_resume:{
					required: "Please upload your resume",
					extension: "Only .doc|docx file valid"
				},*/
			},			  		
		});
	});

	</script>
    
    <link rel="stylesheet" href="css/fm.selectator.jquery.css"/>
    
	<script src="js/fm.selectator.jquery.js"></script>
    <script>
		$(function () {
			var $activate_selectator4 = $('#activate_selectator4');
			var $activate_selectator5 = $('#activate_selectator5');
			//var $activate_selectator6 = $('#activate_selectator6');
			$activate_selectator4.click(function () {
				var $select4 = $('#select4');
				if ($select4.data('selectator') === undefined) {
					$select4.selectator({
						showAllOptionsOnFocus: true
					});
					
				}
			});
			$activate_selectator4.trigger('click');
			
			$activate_selectator5.click(function () {
				var $select5 = $('#select5');
				if ($select5.data('selectator') === undefined) {
					$select5.selectator({
						showAllOptionsOnFocus: true
					});
					
				}
			});
			$activate_selectator5.trigger('click');
			
			/*$activate_selectator6.click(function () {
				var $select6 = $('#select6');
				if ($select6.data('selectator') === undefined) {
					$select6.selectator({
						showAllOptionsOnFocus: true
					});
					
				}
			});
			$activate_selectator6.trigger('click');*/

		});
	</script>
  <!--  <script src="js/ajax-upload.js"></script>-->


