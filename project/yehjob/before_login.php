<?php include("include/header.php"); ?>
	<div class="clearfix"></div>

	<!--Job seeker body starts from her-->

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

						</div>

						
					</div>
					<div class="upload_text">

						<div class="below_details">

							<h4>Job Description</h4>

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
										<?php $keywords =explode(',', $job_details['keywords']);
										foreach ($keywords as $keyword) {
										?>
										<li><a href="#"></a><?php echo $keyword;?></li>
										<?php } ?>
									</ul>

								</div>

								<h5 class="small_title">Company Overview:</h5>

								<div class="last_detail">

									<p><?php echo $job_details['company_desc'];?></p>

								</div>

							</div>

						</div>
						<div class="clearfix"></div>
						<div class="login_button_below">
						<?php if($_SESSION['recruiter_id']){?>
						<a href="<?php echo RECRUITERS;?>details/job_id/<?php echo $_SESSION['job_id'];?>/<?php echo $job_details['job_title'];?>" class="btn_search" target="_blank">View contact information</a>
						<?php } else {?>
						<a href="<?php echo JOB_SEEKER;?>details/job_id/<?php echo $_SESSION['job_id'];?>/<?php echo $job_details['job_title'];?>" class="btn_search">View contact information</a>
						<?php } ?>
						</div>
					</div>

				</div>

			</div>

			<div class="col-xs-12 col-sm-3 seeker_three">

				<img src="images/1.jpg" class="img-responsive" alt="">

			</div>

		</div>

	</section>
	<style type="text/css">
	.login_button_below
	{
		margin-top: 30px;

	}
	</style>
	<!--Job seeker body starts from her-->

	<div class="clearfix"></div>

	<!--footer starts from here-->

	<?php include("include/footer.php"); ?>
	
	<!--footer ends from here-->
	