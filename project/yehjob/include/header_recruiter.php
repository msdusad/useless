<?php
include_once("../lib/function_recruiter.php");
if (!empty($_GET['job_id'])) {
	$job_id = $_GET['job_id'];
	$_SESSION['job_id'] = $job_id;
}
	$obj=new search();
	$results=$obj->recruiterData();
	//Update table and include 
	//$job_views = $obj->updatePostJobsViews();
	$job_details = $obj->selectPostedJob();
	$title=urlencode($job_details['position']);
	$description=urldecode($job_details['job_description']);
	//for footer 
	$unique_postedJobs = $obj->uniquePostedJobs();
	$num_rows = $obj->uniquePostedJobsNumOfRows();	
	$allpostedcompany= $obj->allPostedcompany();
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" type="image/png" href="<?php echo IMAGES_ROOT;?>yeh_job_favicon.png"/>
	<title>YehJob - Search Job in India, Recruitment, Job Vacancies and career opportunities</title>
	<meta name="description" content="YehJob- Job Search in India got better, so search job Vacancies for Fresher & Experienced candidates, recruitment got better with YehJob employment opportunities." />
	<meta name="keywords" content="Job Search India, Job Vacancies, Recruitment, Job Search, Career Jobs, Fresher Jobs & Vacancies, Experience Jobs & Vacancies, Employment, search job Vacancies" />
	<meta name="author" content="Hege Refsnes" />
	<meta property="og:url" 			content="http://www.yehjob.com/job_seeker/details.php" />
	<meta property="fb:app_id"          content="446775625511517" /> 
	<meta property="og:image" 			content="http://www.yehjob.com/images/yehjob_facebook.png" />
	<meta property="og:title" 			content="<?= $title;?>" />
	<meta property="og:description" 	content="<?= strip_tags($description);?>" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_ROOT ;?>bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_ROOT ;?>bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_ROOT ;?>font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_ROOT ;?>font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_ROOT ;?>reset.css">
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_ROOT ;?>job_seeker.css">
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_ROOT ;?>recruiters.css">
	<link rel="stylesheet" type="text/css" href="<?php echo CSS_ROOT ;?>style.css">
	<!--Share Script -->
	<script type="text/javascript">var switchTo5x=true;</script>
	<script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
	<script type="text/javascript">stLight.options({publisher: "ee7bfc8d-e8b9-42d2-8638-b05e699055c6", doNotHash: false, doNotCopy: false, hashAddressBar: true});</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-71856743-1', 'auto');
  ga('send', 'pageview');

</script>
</head>
<body>
	<!--header starts from here-->
	<section id="wrapper">
		<!--big header starts from here-->
		<header id="big_header">
			<div>
				<nav role="navigation" class="navbar navbar-default navbar-fixed-top">
					<div class="container">
					    <div class="navbar-header">
					        <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
					            <span class="sr-only">Toggle navigation</span>
				                <span class="icon-bar"></span>
				                <span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
			                <a href="<?php echo WEB_ROOT;?>" class="navbar-brand" id="navbar_cus"><img src="<?php echo IMAGES_ROOT;?>yehjob_logo.png" id="header_logo"></a>
			            </div>
			            <div id="navbarCollapse" class="collapse navbar-collapse">
			                <?php if($_SESSION['FBID']!=""){?>
								<ul class="nav navbar-nav pull-right nav_right_cus_small">
									<li class="dropdown" id="login_user_img">
										<a data-toggle="dropdown" class="dropdown-toggle" href="#">
										<img src="https://graph.facebook.com/<?php echo $_SESSION['FBID'];?>/picture" class="img-responsive">&nbsp;&nbsp; <b class="caret"></b></a>
											<ul role="menu" class="dropdown-menu" id="dropdown_cus">
												<li><a href="<?php echo RECRUITERS;?>">View Profile</a></li>
												<li><a href="<?php echo RECRUITERS;?>edit_profile.php">Edit Profile</a></li>
												<li><a href="<?php echo RECRUITERS;?>recruiter_logout.php">Logout</a></li>
											</ul>
									</li>
								</ul>
								<?php }
								else { ?>
							
									<ul class="nav navbar-nav pull-right nav_right_cus_small">
									<li class="dropdown" id="login_user_img">
										<?php 
										foreach ($results as $result) 
											{
											if($result['recruiter_profile_img']!=""){ ?>
											<a data-toggle="dropdown" class="dropdown-toggle" href="#"><img src="<?php echo REC_PROFILE_ROOT;?><?php echo $result['recruiter_profile_img']; ?>" class="img-responsive">&nbsp;&nbsp; <b class="caret"></b></a>
											<?php }elseif(!empty($_SESSION["picture"])){ ?>
											<a data-toggle="dropdown" class="dropdown-toggle" href="#"><img src="<?php echo $_SESSION["picture"];?>" class="img-responsive">&nbsp;&nbsp; <b class="caret"></b></a>
											<?php } else {?>
											<a data-toggle="dropdown" class="dropdown-toggle" href="#"><img src="<?php echo REC_PROFILE_ROOT;?>no_photo.png" class="img-responsive">&nbsp;&nbsp; <b class="caret"></b></a>
											<?php }} ?>
											<ul role="menu" class="dropdown-menu" id="dropdown_cus">
												<li><a href="<?php echo RECRUITERS;?>">View Profile</a></li>
												<li><a href="<?php echo RECRUITERS;?>edit_profile.php">Edit Profile</a></li>
												<li><a href="<?php echo RECRUITERS;?>recruiter_logout.php">Logout</a></li>
											</ul>
										</li>
								   
									</ul>
								<?php } ?>
						</div>
					</div>
			    </nav>
			</div>
		</header>
