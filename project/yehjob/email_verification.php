	<?php 
	error_reporting(0);
	include("include/header.php"); 
	require_once("include/config.php");
	$db = new Database();
	?>
	
	<style type="text/css">
	.email_verification
	{
		min-height: 200px!important;
		
	}
	</style>
	
	<!--header ends from  here-->
	<div class="clearfix"></div>

	<!--body starts from here-->
	<section id="recruiter_outer">
		<div class="back_color">	
			<div class="container">
				<div class="jobseeker_inner">	
					<div class="login_heading">
						<span><i class="fa fa-lock"></i>&nbsp;&nbsp;</span><h3>Email Verification</h3>
					</div>
					<div class="below_formheading">
						<div style="padding:50px 5px 0px 5px;" class="email_verification">
							<?php if(!empty($_GET['msg'])){ ?>
							<div style="font-family: icon; font-size: 22px;" align="center" class="alert alert-info">
							 <strong><?php echo $_GET['msg'];?></strong>
							</div>
							<?php } elseif(!empty($_GET['id'])){
								$recruiter_id = base64_decode($_GET['id']);
								$sql = "UPDATE tb_recruiter SET recruiter_status = '1' WHERE recruiter_id = '$recruiter_id'";
								$db->execute($sql);
							?>
							<div style="font-family: icon; font-size: 20px;" class="alert alert-success">
								<p>Your Email verification successfully completed! <b>Click Here to </b><a href='<?php echo WEB_ROOT;?>recruiter_login.php'>Login</a></p>
							</div>
							<?php } elseif (!empty($_GET['job_seek_id'])) {
								$job_seek_id = base64_decode($_GET['job_seek_id']);
								$sql = "UPDATE tb_jobseeker SET jobseeker_status = '1' WHERE jobseeker_id = '$job_seek_id'";
								$db->execute($sql);
							?>
							<div style="font-family: icon; font-size: 20px;" class="alert alert-success">
								<p>Your Email verification successfully completed! <b>Click Here to </b><a href='<?php echo WEB_ROOT;?>jobseeker_login.php'>Login</a></p>
							</div>
							<?php } ?>
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
	<div class="clearfix"></div>