<?php include("../include/header_recruiter.php");
if(empty($_SESSION['recruiter_id']) && empty($_SESSION['FBID']) ){ die("<script>Location.href='http://www.yehjob.com'</script>"); }
	///Updatation code here
	$lk_object = new search();
	if($_REQUEST['post_job_preview']){
		$company = $_SESSION['company1'] = mysql_real_escape_string($_POST['company']);
		$job_title = $_SESSION['job_title'] = mysql_real_escape_string($_POST['job_title']);
		$position = $_SESSION['position'] =$_POST['position'];
			
		$desc = $_SESSION['desc'] = htmlspecialchars_decode($_POST['desc'],ENT_NOQUOTES);
		$keywords = $_SESSION['keywords'] =$_POST['keywords'];
		if(is_array($_POST['location'])){
			$location = $_POST['location'];
			$locations = $_SESSION['location'] = implode(",", $location);
			$location_t = trim($locations,"other,");
		}
		$other_location=$_SESSION['other_location']= mysql_real_escape_string($_POST['other_location']);
		$email = $_SESSION['email'] = mysql_real_escape_string($_POST['email']);
		$phone = $_SESSION['phone'] = mysql_real_escape_string($_POST['phone']);

		$category = $_SESSION['category'] = mysql_real_escape_string($_POST['category']);
		$categorys = $lk_object->selectJobCategory();

		if(is_array($_POST['skills'])){
			$skills =  $_POST['skills'];
			$strskills = $_SESSION['skills'] = implode(",", $skills);
		}

		if(!empty($_POST['qualifications'])){
			$qualifications = $_POST['qualifications'];
			$strquali = $_SESSION['qualifications'] = implode(",", $qualifications);
		}
		$job_id = $_SESSION['job_type'] = mysql_real_escape_string($_POST['job_type']);
		$job_type = $lk_object->selectJobType();
		
		$min_salary = $_SESSION['min_salary'] = mysql_real_escape_string($_POST['min_salary']);
		$max_salary = $_SESSION['max_salary'] = mysql_real_escape_string($_POST['max_salary']);
		$min_exp = $_SESSION['min_exp'] = mysql_real_escape_string($_POST['min_exp']);
		$max_exp = $_SESSION['max_exp'] = mysql_real_escape_string($_POST['max_exp']);
		$company_overview = $_SESSION['company_overview'] = htmlspecialchars_decode($_POST['company_overview'],ENT_NOQUOTES);
		$whatsapp_id = $_SESSION['whatsapp_id'] = mysql_real_escape_string($_POST['whatsapp_id']);
		$linkedin = $_SESSION['linkedin'] = mysql_real_escape_string($_POST['linkedin']);
	}

	?>
	<!--header ends from here-->
	<div class="clearfix"></div>
	<!--Job seeker body starts from her-->
	<section id="seeker_index">
		<div class="container">
			<div class="col-xs-12 col-sm-9 seeker_three">
				<div class="upload_profile"> 
					<div class="upload_profile_heading">
						<span><i class="fa fa-pencil-square-o"></i></span>&nbsp;&nbsp;<h3>Preview Job</h3>
					</div>
					<div class="upload_text">
						<div class="preview_inner">
							<h3><?php echo $job_title; ?></h3>

							<h5><span>Company</span> : <?php echo $company; ?></h5>
							<h5><span>Locations</span> : <?php if(!empty($other_location)){echo $location_t.','.$other_location;}else{echo $location_t;}?></h5>
							<span class="img-preview"></span>
							<h5><span>Position</span> : <?php echo $position; ?></h5>
							<h5>
								<span>Experience</span> : <?php echo $min_exp.'-'.$max_exp; ?> years
							</h5>
							<h5>
								<span>Salary</span> : <i class="fa fa-inr"></i>&nbsp;&nbsp; <?php echo $min_salary.'-'.$max_salary; ?> lakh per annum
							</h5>
							<?php if(!empty($strquali)){ ?>
								<h5>
									<span>Qualifications</span> : <?php echo $strquali; ?>
								</h5>
							<?php } ?>
							
							<h5>
								<span>Key Skills</span> : <?php echo $keywords; ?>
							</h5>
							<?php foreach ($categorys as $cat_name) {?>
								<h5><span>Job Category</span> : <?php echo $cat_name['category_name']; ?></h5>
							<?php }?>
							<?php foreach ($job_type as $type) {?>
								<h5><span>Job Type</span> : <?php echo $type['job_type']; ?></h5>
							<?php }?>
							<p><?php echo $job_title; ?> Job Duties : </p>
							<p>
								<?php echo $desc; ?>
							</p>
							<h4><u>About Company : </u></h4>
							<p><?php echo $company_overview; ?></p>
							<h5>   
								<span>Contact Number</span> : <?php echo $phone; ?>
							</h5>
							<h5>
								<span>Email ID</span> : <?php echo $email; ?>
							</h5>
							<h5>
								<span>Whatsapp id</span> : <?php echo $whatsapp_id; ?>
							</h5>
							<h5>
								<span>Linkedin id</span> : <?php echo $linkedin; ?>
							</h5>
							<div class="preview_btn">
								<input type="submit" id="confirm" name="confirm" onClick="Javascript:window.location.href = 'process.php';" class="btn-rv" value="Confirm">
								<a href="post_job.php" class="btn-rv">Edit Job</a>
								<p>By creating an account you have read and agree to the Privacy Policy and Terms of Service. </p>
							</div>
						
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-3 seeker_three">
				<img src="images/fonebell.jpg" class="img-responsive" alt="">
			</div>
		</div>
	</section>
	<!--Job seeker body starts from her-->
	<div class="clearfix"></div>
	<!--footer starts from here-->
	<?php include("../include/footer.php") ?>
	<!--footer ends from here-->