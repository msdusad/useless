	<?php
	error_reporting(0);
	include("../include/header_jobseeker.php");

	if(!empty($_SESSION['job_id']) && empty($_SESSION['jobseeker_id'])) 
	{
		die("<script>location.href = 'http://www.yehjob.com/jobseeker_login.php'</script>");
	} elseif (empty($_SESSION['jobseeker_id'])) {
		die("<script>location.href = 'http://www.yehjob.com'</script>");
	}
	?>
	
	<div class="clearfix"></div>

	<!--Job seeker body starts from her-->
	<script type="text/javascript">stLight.options({publisher: "ab986f6c-fe4b-47d2-837f-b0aa95b75d20", doNotHash:true, doNotCopy:true,hashAddressBar:false})</script>
	<section id="seeker_index">

		<div class="container">

			<div class="col-xs-12 col-sm-9 seeker_three">

				<div class="upload_profile"> 

					<div class="upload_profile_heading">

						<span><i class="fa fa-pencil-square-o"></i></span>&nbsp;&nbsp;<h3>Job Details</h3>

					</div>
					<div>
						<div class="details_heading">

							<h3><?php echo $job_details['position'];?></h3><span>Location - <?php echo $job_details['location'];?></span><br/></br>

							<p><a href="#"><?php echo strtoupper($job_details['company_name']); ?></a></p>

							<ul class="list-inline list_new_rv">

								<?php

									$date = date_format(date_create($job_details['job_post_date']), "d-M-Y");

								?>

								<li><i class="fa fa-calendar"></i>&nbsp;&nbsp;<?php echo $date; ?></li>

								<?php $locations = explode(", ",$job_details['location']); ?>

								<li><i class="fa fa-map-marker"></i>&nbsp;&nbsp;<?php echo $locations[0];?></li>

								<li><i class="fa fa-envelope"></i>&nbsp;&nbsp;<?php echo $job_details['recuriter_email']?></li>

								<li><i class="fa fa-mobile"></i>&nbsp;&nbsp;<?php echo $job_details['phone']?></li>

							</ul>

						</div>
					</div>
					<div class="upload_text">

						

						<div class="below_details">

							<h4>Job Description</h4>

							<ul class="list-inline pull-right detail_social">
								<span class='st_sharethis_large' displayText='ShareThis'></span>
								<script type="text/javascript">stLight.options({publisher: "ab986f6c-fe4b-47d2-837f-b0aa95b75d20", doNotHash:true, doNotCopy:true,hashAddressBar:false})</script>
							</ul>

							<div class="below_detail_inner">

								<p><?php echo $job_details['job_description'];?></p>

								

							</div>

							<div id="key_skill_details">

								<ul class="key_skill_list">

									<?php if($job_details['salary']!= '0-0'){?>

									<li><span>Salary:</span><?php echo $job_details['salary']; ?> lakh per annum </li>

									<?php } else {?>

									<li><span>Salary:</span>Not Disclosed by Recruiter </li>

									<?php } ?>

									<?php if($job_details['experience']!= '0-0'){?>

									<li><span>Experience:</span><?php echo $job_details['experience']; ?> years </li>

									<?php } else {?>

									<li><span>Experience:</span>Fresher</li>

									<?php } ?>

									<li><span>Job Location:</span> <?php echo $job_details['location'];?></li>

									<li><span>Functional Area:</span> <?php echo $job_details['skills'];?></li>
									<li><span>Role Category:</span> <?php echo $job_details['category_name'];?></li>

									<li><span>Position:</span><?php echo $job_details['position'];?></li>

								</ul>

								<h6>Keyskills</h6>

								<div id="ksTags">

									<ul>
										<?php $skills =explode(',', $job_details['skills']);
										foreach ($skills as $skill) {
										?>
										<li><a href="#"></a><?php echo $skill;?></li>
										<?php } ?>
									</ul>

								</div>

								<h5 class="small_title">Company Overview:</h5>

								<div class="last_detail">

									<p><?php echo $job_details['company_desc'];?></p>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<div class="col-xs-12 col-sm-3 seeker_three">

				<img src="images/1.jpg" class="img-responsive"  alt="">

			</div>

		</div>

	</section>

	<!--Job seeker body starts from her-->

	<div class="clearfix"></div>

	<!--footer starts from here-->

	<?php include("../include/footer.php"); ?>
	
	<!--footer ends from here-->
	