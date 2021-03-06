<?php 
include("include/header.php");
include_once("lib/search.php");
//serarch by category 
$db  = new Database();
$db->execute("SELECT DISTINCT c.category_id , c.category_name as cat_name, p.category_id FROM lk_tb_category c RIGHT JOIN tb_post_job p ON c.category_id = p.category_id GROUP BY c.category_id LIMIT 10");
$cat_names = $db->getResults();

$job_obj = new search();
$post_job_details = $job_obj->selectPostedJobs();
//$unique_postedJobs = $job_obj->uniquePostedJobs();

$locations = $job_obj->selectLocations();
$expes = $job_obj->selectExperiences();
$skills = $job_obj->selectSkills();
$lkkeywords = $job_obj->selectlkkeywords();
$salarys = $job_obj->selectSalarys();
$categories = $job_obj->selectCategorys();

?>
<style type="text/css">
	.selectator.multiple.options-hidden
	{
		min-height: 50px!important;
		overflow-y:scroll!important;
	}


</style>
	<!--header ends from here-->
	
	<!--banner starts from here-->
	<div id="">	
		<section id="banner">
			<div class="bg-img">
				
			</div>
			<div id="banner_below_outer">
				<div class="col-xs-12 banner_search">
					<div id="banner_heading">
						<h3>Search Jobs on Yeh Job </h3>
					</div>
					<form id="job_search" class="form_main" method="get" role="form" action="<?php echo WEB_ROOT ;?>search_job.php">
						<div class="col-xs-12">
							<div class="box_text_inner">	
								<div class="form-group job_text_outer new_text_one">
									<div class="job_input">
										<select style="overflow-y: scroll !important;height:50px!important;max-height:50px!important;" class="form-control select_new" name="skills[]"  id="select5" multiple>
											<optgroup hidden label="Please choose keywords...">
											<?php 
											foreach ($lkkeywords as $keyword) { 
											?>
												<option hidden  value="<?php echo $keyword['keywords'];?>"><?php echo $keyword['keywords'];?></option>
									  		<?php } ?>
									  		</optgroup>
									  	</select>
									  	<span id="select_skills"></span>
									  	<input value="activate selectator" id="activate_selectator5" type="hidden">
									</div>
								</div>
								<div class="select-style">
									<select name="location" class="form-control location_textbox">
										<option value="">Location...</option>
										<?php foreach ($locations as $location) {?>
											<option value="<?php echo $location['locations'];?>"><?php echo $location['locations']; ?></option>
										<?php }?>
									</select>
								</div>
								<div class="select-style">
									<select name="experience" class="form-control experience_textbox">
										<option value="">Experience</option>
										<?php foreach ($expes as $expe) {?>
										<option value="<?php echo $expe['experience'];?>"><?php if($expe['experience']==0){ echo $expe['experience'].' '.'Year';} else { echo $expe['experience'];} ?></option>
										<?php } ?>
									</select>
								</div>
								<div class="clearfix"></div>
								<div>
									<ul class="list-inline check_list">
										<li><input id="Option" type="checkbox" value="full time" name="full_time"><label class="checkbox" for="Option">&nbsp;&nbsp;Full Time Job</label></li>
										<li><input id="option2" type="checkbox" value="part time" name="part_time"><label class="checkbox" for="option2">&nbsp;&nbsp;Part Time Job</label></li>
									</ul>
								</div>
							</div>
							<div class="box_text_button">
								<input type="submit" name="search" value="Search job" class="btn_search">
								<a href="#myModal" class="modal_btn" data-toggle="modal">Advance Search</a>
							</div>
					</form>
					<!--Advance search starts from here-->
					<div class="bs-example">
						<div id="myModal" class="modal fade">
							<div class="modal-dialog">
							   	<div class="modal-content">
							        <div class="modal-header">
							           	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							            <h4 class="modal-title"><i class="fa fa-search"></i>&nbsp;&nbsp;Advance Search</h4>
							        </div>
							    	<form class="popup_form" id="advance_search_form" method="get" role="form" action="<?php echo WEB_ROOT ;?>search_job.php">
								       	<div class="modal-body modal_outer">
									        <div class="form-group job_text_outer new_text">
									           	<label class="col-xs-12 col-sm-3 adv_text">Keyskills :</label>
												<div class="col-xs-9  job_input">
													<select class="form-control" name="skills[]" id="select6" multiple>
											<optgroup hidden label="Please choose keywords...">
											<?php 
											foreach ($lkkeywords as $keyword) { 
											?>
												<option hidden  value="<?php echo $keyword['keywords'];?>"><?php echo $keyword['keywords'];?></option>
									  		<?php } ?>
									  		</optgroup>
										  			</select>
										  			<input value="activate selectator" id="activate_selectator6" type="hidden">
												</div>
											</div>
									        <div class="form-group adv_outer">
									            <label class="col-xs-12 col-sm-3 adv_text">Location :</label>
									            <div class="adv_input_new advance-select">
									                <select id="select_location" class="form-control" name="location">
									                    <option value="">Select your Location...</option>
									                    <?php foreach ($locations as $location) {?>
									                    <option value="<?php echo $location['locations'];?>"><?php echo $location['locations']; ?></option>
									                    <?php } ?>
									                </select>
									            </div>
									        </div>
									        <div class="form-group adv_outer">
									            <label class="col-xs-12 col-sm-3 adv_text">Work experience :</label>
									            <div class="adv_input_new small-select">
									                <select class="form-control">
									                    <option value="">Select Min Exp</option>
									                    <?php foreach ($expes as $expe) {?>
									                    <option value="<?php echo $expe['experience'];?>"><?php echo $expe['experience'];?> Years</option>
									                    <?php } ?>
									                </select>
									            </div>
									            <div class="col-xs-12 col-sm-1">-To-</div>
									            <div class="adv_input_new small-select">
									                <select class="form-control">
									                    <option value="">Select Max Exp</option>
									                    <?php foreach ($expes as $expe) {?>
									                    <option value="<?php echo $expe['experience'];?>"><?php echo $expe['experience'];?> Years</option>
									                    <?php } ?>
									                </select>
									            </div>
									        </div>
									        <div class="form-group adv_outer">
									            <label class="col-xs-12 col-sm-3 adv_text">Salary :</label>
									            <div class="adv_input_new small-select">
									                <select class="form-control">
									                   	<option value="">Min Salary</option>
									                    <?php foreach ($salarys as $salary) {?>
									                    <option value="<?php echo $salary['salary'];?>"><?php echo $salary['salary']; ?> Lakhs</option>
									                    <?php } ?>
									                </select>
									            </div>
									            <div class="col-xs-12 col-sm-1">-To-</div>
									            <div class="adv_input_new small-select">
									                <select class="form-control">
									                    <option value="">Max Salary</option>
									                    <?php foreach ($salarys as $salary) {?>
									                    <option value="<?php echo $salary['salary'];?>"><?php echo $salary['salary']; ?> Lakhs</option>
									                    <?php } ?>
									                </select>
									            </div>
									        </div>
									        <div class="form-group adv_outer">
									            <label class="col-xs-12 col-sm-3 adv_text">Industry :</label>
									            <div class="adv_input_new advance-select">
									                <select class="form-control" name="category">
									                    <option value="">--Select indutry type--</option>
									                    <?php foreach ($categories as $category) { ?>
									                    <option value="<?php echo $category['category_id'];?>"><?php echo $category['category_name'];?></option>
									                    <?php } ?>
									                </select>
									            </div>
									        </div>
									        <div class="form-group adv_outer">
									            <label class="col-xs-12 col-sm-3 adv_text">Job Role :</label>
									            <div class="adv_input_new advance-select">
									                <select id="jobrole" class="form-control"  name="position" >
									                    <option value="">--Select job role--</option>
									                    <?php foreach ($skills as $jobrole) { ?>
									                    <option value="<?php echo $jobrole['skill'];?>"><?php echo $jobrole['skill'];?></option>
									                    <?php } ?>
									                </select>
									            </div>
									        </div>
								    	</div>
								    	<div class="modal-footer">
								            <div class="form-group adv_outer">
								               	<label class="col-xs-12 col-sm-3 adv_text"></label>
								               	<div class="col-xs-12 col-sm-9 adv_input">
								                    <input type="submit" name="advance_search" value="Search" class="btn_search">
								                </div>
								            </div>
								        </div>
							    	</form>
							    </div>
							</div>
						</div>
					</div>
				</div>     
							<!--Advance search ends from here-->
			</div>
		</div>
		</section>
		<div class="clearfix"></div>
		<section id="below_banner">
			<div class="container">
				<div class="col-xs-12 col-sm-2 below_banner_inner">
					<a href=""><img src="<?php echo IMAGES_ROOT;?>backuprunner1.jpg" class="img-responsive" alt=""></a>
				</div>
				<div class="col-xs-12 col-sm-7 below_banner_inner">
					<div class="middle_heading">
						<h3></h3>
					</div>
					<div class="product_link_outer">
					<!--<p class="alert alert-info" style="font-weight: 900;text-align: center;">Showing results for php developers..</p>-->
						<?php 
						$last_id = 0;
						foreach ($post_job_details as $post_job) { 
						$_SESSION['psot_job_id'] = $post_job['post_job_id'];
						$last_id = $post_job['post_job_id'];
						?>
						<div class="product_link">
							<div class="col-xs-12 col-sm-3 product_link_img">
								<?php if(!empty($post_job['company_logo'])) { ?>
								<img src="<?php echo REC_IMAGES_ROOT;?><?php echo $post_job['company_logo']; ?>" class="img-responsive" alt="">
								<?php } else {?>
								<img src="<?php echo REC_IMAGES_ROOT;?>default_logo.jpg" class="img-responsive" alt="">
								<?php } ?>
							</div>
							<div class="col-xs-12 col-sm-9 product_link_text">
								<?php 
								/*
								if(!empty($_SESSION['recruiter_id'])) { ?>
								<a href="<?php echo RECRUITERS;?>details.php?job_id=<?php echo $post_job['post_job_id'];?>/<?php echo $post_job['job_title'];?>"><h3><?php echo $post_job['job_title'];?></h3></a>
								<?php } else { ?>
								<a href="<?php echo JOB_SEEKER;?>details/job_id/<?php echo $post_job['post_job_id'];?>/<?php echo $post_job['job_title'];?>"><h3><?php echo $post_job['job_title'];?></h3></a>
								<?php } */?>
								<a href="<?php echo WEB_ROOT;?>before_login/job_id/<?php echo $post_job['post_job_id']; ?>/<?php echo $post_job['job_title'];?>"><h3><?php echo $post_job['job_title'];?></h3></a>
								<p id="product_title"><?php echo $post_job['company_name'];?></p>
								<p id="product_title_second">Thorough knowledge in <?php echo $post_job['keywords'];?></p>
								
								<?php /*?><?php if(!empty($_SESSION['recruiter_id'])) { ?>
								<p id="product_details"><span><a href="<?php echo RECRUITERS;?>details.php?job_id=<?php echo $post_job['post_job_id'];?>/<?php echo $post_job['job_title'];?>"><i class="fa fa-arrow-right"></i>&nbsp;&nbsp; Details</a></span></p>
								<?php } else { ?>
								<p id="product_details"><span><a href="<?php echo JOB_SEEKER;?>details/job_id/<?php echo $post_job['post_job_id'];?>/<?php echo $post_job['job_title'];?>"><i class="fa fa-arrow-right"></i>&nbsp;&nbsp; Details</a></span></p>
								<?php } ?><?php */?>
								<p id="product_details"><span><a href="<?php echo WEB_ROOT;?>before_login/job_id/<?php echo $post_job['post_job_id'];?>/<?php echo $post_job['job_title'];?>"><i class="fa fa-arrow-right"></i>&nbsp;&nbsp; Details</a></span></p>
								<div class="pull-right three_list">
									<ul class="list-inline">
										<li>
											<a href="#"><i class="fa fa-clock-o"></i>&nbsp;&nbsp;
												<?php 
													$d1 = date_format(date_create($post_job['job_post_date']), "Y/m/d H:i:s");
													$d2 = date_format(date_create(CURR_DATE), "Y/m/d H:i:s");
													$days= round(abs(strtotime($d1)-strtotime($d2))/86400);
													$seconds=abs(strtotime($d1)-strtotime($d2));
													$hours = round($seconds/3600);
													if($days==0)
													{	
													echo $hours.' '."Hours ago"; 
													}
													else
													{
														echo $days.' '."Days ago";
													}
													
												?>
											</a>
										</li>
										<li><a href="#"><i class="fa fa-eye"></i>&nbsp;&nbsp; <?php echo $post_job['job_views'];?></a></li>
										<?php 
										$db->execute("SELECT count(like_id) as job_likes FROM tb_job_like WHERE job_id = $post_job[post_job_id]");
										$likes = $db->getResults();
										foreach ($likes as $like) {
										?>
										<li><a href="##" id="<?php echo $post_job['post_job_id'];?>" class='like_link'><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp; <span id="like_count"><?php echo $like['job_likes'];?></span></a></li>
										<?php } ?>
									</ul>
								</div>
							</div>
						</div>
						<?php } ?>

						<div id="items"></div>
						<script type="text/javascript">var last_id = <?php echo $last_id; ?>;</script>
						<p style="float: left;margin-top: 20px !important; width: 100%;" align="center" id="loader"><img src="images/ajax-loader.gif" alt=""></p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-3 below_banner_inner">
					<div class="add_cat">
						<div class="add_cat_inner">
							<h3>Ads Category</h3>
						</div>
						<div class="add_list">
							<ul class="list-inline">
								<?php  foreach ($cat_names as $cat_name) {?>
								<li><a href="<?php echo WEB_ROOT ;?>search_job/id/<?php echo $cat_name['category_id']; ?>/<?php echo $cat_name['cat_name']; ?>"><?php echo $cat_name['cat_name']; ?></a></li>
								<?php } ?>
							</ul>
						</div>
					</div>
					<div>
						<a href="#"><img src="<?php echo IMAGES_ROOT;?>yeh_job_ad_fonebell.jpg" class="img-responsive" alt=""></a>
					</div>
				</div>

			</div>
		</section>
		<div class="clearfix"></div>
	</div>
	<!--banner ends from here-->
	<div class="clearfix"></div>

	<!--footer starts from here-->
	<?php include("include/footer.php") ?>
	<script type="text/javascript" src="js/jquery-validation.js"></script>
	<script type="text/javascript" src="js/additional-methods.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap-select.css" type="text/css">
	<script type="text/javascript" src="js/script.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('.like_link').click(function(event) {
			event.preventDefault();
			var jobseeker_id = "<?php echo $_SESSION['jobseeker_id']?>";
			var recruiter_id = "<?php echo $_SESSION['recruiter_id']?>";
			if(jobseeker_id == "" && recruiter_id==""){
				window.location.replace("<?php echo WEB_ROOT ;?>jobseeker_login.php");
			}
			id = $(this).attr('id');
			container = $(this).closest('.like_link').attr('id');
			$.ajax({
				type: 'POST',
				url:  'add_likes.php',
				data:{
					job_id: id,
					type: 'likes'
				},
				async : false,
				success : function(data) {
					$('#' + container).find('#like_count').html(data);
					//$('a.like_link').css('color', '#0910A4');
				}
			});
		});
	});
	</script>
	<script>
		$(function () {
			var $activate_selectator5 = $('#activate_selectator5');
			var $activate_selectator6 = $('#activate_selectator6');
			
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
		});

	</script>
	<script type="text/javascript">
	  $(document).ready(function(){
		$('#selectator_select5').click(function(){
		$('#autogenerated').hide();
		$('#selectator_select5').css("border", "");
		})  
	  });
	  $('#job_search').on('submit', function(e) {
		var keySkill = $('#select5');
		// Check if there is an entered value
		if(!keySkill.val()) {
		  // Add errors highlight
		  $('#selectator_select5').css("border", "2px solid red");
		  $('#autogenerated').remove();
		  $( "<p id=autogenerated style=color:red;>Please Choose Keywords!</p>" ).insertAfter( "#selectator_select5" );
		// Stop submission of the form
		 e.preventDefault();
		}
		if(keySkill.val()) {
		$('#selectator_select5').css("border", "");
		// Stop submission of the form
		
		}

		});	

	</script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$('#selectator_select6,#select_location,#jobrole').click(function(){
			$('#selectator_select6').css("border", "");
			$('#select_location').css("border", "");
			//$('#jobrole').css("border", "");
		})
	});
	  $('#advance_search_form').on('submit', function(e) {
		var keySkills = $('#select6');
		var location = $('#select_location');
		//var role = $('#jobrole');
		// Check if there is an entered value
		if(!keySkills.val()) {
		  // Add errors highlight
		  $('#selectator_select6').css("border", "2px solid red");
		// Stop submission of the form
		 e.preventDefault();
		}
		
		if(!location.val()) {
		  // Add errors highlight
		  $('#select_location').css("border", "2px solid red");
		// Stop submission of the form
		  e.preventDefault();
		}
		//if(!role.val()) {
		  // Add errors highlight
		  //$('#jobrole').css("border", "2px solid red");
		// Stop submission of the form
		 // e.preventDefault();
		//}
		if(keySkills.val()) {
		$('#selectator_select6').css("border", "");
		}
		
		if(location.val()) {
		$('#select_location').css("border", "");
		}
		
		if(role.val()) {
		$('#jobrole').css("border", "");
		}
		
	  });
	</script>
	
	<script type="text/javascript" language="javascript">
	   $(document).ready(function(e) {
       
		var last_valid_selection = null;
		
		
		$('#select5').change(function(event)
		{
		   $("#select5 option[value='Choose your Skill....']").remove();  
			if($(this).val().length>3)
			{
				$(this).val(last_valid_selection);
				
			} else {
			  last_valid_selection=$(this).val();
			 
			}
		});
		
    });
    </script>
    

	<div class='clearfix'></div>