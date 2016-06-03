<?php include("../include/header_recruiter.php");
	if(empty($_SESSION['recruiter_id']) && empty($_SESSION['FBID'])){
		die("<script>location.href = 'http://www.yehjob.com'</script>");
	}
	$job_obj = new search();
	$post_jobs = $job_obj->selectPostedJobsRecruiterBy();
	$num_rows1 = $job_obj->rowsCountJobs();
	$jobtotalviews = $job_obj->postJobsTotalViews();
	?>
	<!--header ends from here-->
	<div class="clearfix"></div>
	<script type="text/javascript">stLight.options({publisher: "ab986f6c-fe4b-47d2-837f-b0aa95b75d20", doNotHash:true, doNotCopy:true,hashAddressBar:false})</script>
	<!--Job seeker body starts from her-->
	<section id="seeker_index">
		<div class="container">
			<div class="col-xs-12 col-sm-9 seeker_three">
				<div class="post_job"> 
					<div class="upload_profile_heading">
						<span><i class="fa fa-area-chart"></i></span>&nbsp;&nbsp;<h3>Dashboard</h3>
					</div>
					<div class="dashboard_heading">
						<h3>Welcome <?php if(!empty($_SESSION['FBID'])){echo $_SESSION['FB_fullname'];}else{ echo $_SESSION['recruiter_name'];}?></h3>
						<span class="pull-right"><?php echo MODIFIED_DATE; ?></span>
						<div class="dashboard_inner text-center">
							<h2>Welcome to YehJob, <?php if(!empty($_SESSION['FBID'])){echo $_SESSION['FB_fullname'].' '.'!';}else{ echo $_SESSION['recruiter_name'].' '.'!';}?></h2>
							<p>Ready to get started</p>
							<a href='post_job.php' class="btn-rv new_log">Post Job</a>
						</div>
						<div class="account_activity">
							<div id="job_dash">
								<div id="job_dash_inner">
									<h3>Account activity</h3>
								</div>
								<div class="new_account_outer">
									<ul class="list-inline new_account">
										<li>Total job posting &nbsp;&nbsp;<span><?php echo $num_rows1; ?></span></li>
										<li>Total job View &nbsp;&nbsp;<span><?php $view =""; foreach ($post_jobs as $post_job) { $view +=$post_job['job_views']; } echo $view;?></span></li>
									</ul>
								</div>
							</div>
							<div class="table-responsive"> 
								<?php if(!empty($post_jobs)){ ?>
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Job Title</th>
												<th>Posted on</th>
												<th>Views</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<?php foreach ($post_jobs as $post_job) {?>
										<tbody>
											<tr>
												<td><?php echo $post_job['job_title'];?></td>
												<td><?php $formated_data =date_format(date_create($post_job['job_post_date']), 'd-M-Y H:i:s'); echo $formated_data;?></td>
												<td><?php echo $post_job['job_views'];?></td>
												<td><a href="edit_posted_job.php?post_job_id=<?php echo $post_job['post_job_id'];?>"><i class="fa fa-pencil-square"></i></a></td>
												<td><a href="edit_posted_job.php?post_job_id=<?php echo $post_job['post_job_id'];?>&del=Y" onclick="return confirm('Are you sure you want to delete this item?');"><span class="glyphicon glyphicon-remove"></span></a></td>
											</tr>
							            </tbody>
							            <?php }?>
							        </table>
						        <?php } else { ?>
						        	<span style="font-weight: bold;font-size:13px"><center>There is no job posted by you.</center></span>
						        <?php } ?>
						    </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-3 seeker_three">
				<img src="images/yeh_job_ad_fonebell.jpg" class="img-responsive" alt="">
			</div>
		</div>
	</section>
	<!--Job seeker body starts from her-->
	<div class="clearfix"></div>
	<!--footer starts from here-->
	<?php include("../include/footer.php") ?>
	<!--footer ends from here-->

