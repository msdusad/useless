<?php
include('include/config.php');
$db = new Database();
$last_id = $_POST['last_id'];
$limit = 5; // default value
if (isset($_POST['limit'])) 
{
	$limit = intval($_POST['limit']);
}

$sql="SELECT pj. *, re.*, ca.category_name, jt.job_type, qu.qualifications, sk.skills, lo.location FROM `tb_post_job` pj LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id LEFT JOIN tb_skills sk ON pj.post_job_id = sk.post_job_id LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id LEFT JOIN  tb_recruiter re ON pj.recruiter_id = re.recruiter_id LEFT JOIN  lk_tb_category ca ON pj.category_id = ca.category_id LEFT JOIN  lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id 
WHERE pj.post_job_id < $last_id ORDER BY pj.post_job_id DESC LIMIT 0, $limit";
$db->execute($sql);

$result=$db->getResults();

//$last_id = 0;//last job id was still 25

foreach ($result as $post_job1) 
{ 
$last_id = $post_job1['post_job_id']; ?>
	<div class="product_link">
		<div class="col-xs-12 col-sm-3 product_link_img">
			<?php if(!empty($post_job1['company_logo'])) { ?>
				<img src="<?php echo REC_IMAGES_ROOT;?><?php echo $post_job1['company_logo']; ?>" class="img-responsive" alt="">
			<?php } else {?>
				<img src="<?php echo REC_IMAGES_ROOT;?>default_logo.jpg" class="img-responsive" alt="">
			<?php } ?>
				</div>
				<div class="col-xs-12 col-sm-9 product_link_text">
					<a href="<?php echo WEB_ROOT;?>before_login/job_id/<?php echo $post_job1['post_job_id']; ?>/<?php echo $post_job1['job_title'];?>"><h3><?php echo $post_job1['job_title'];?></h3></a>
					<p id="product_title"><?php echo $post_job1['company_name'];?></p>
					<p id="product_title_second">Thorough knowledge in <?php echo $post_job1['keywords'];?></p>
					<p id="product_details"><span><a href="<?php echo WEB_ROOT;?>before_login/job_id/<?php echo $post_job1['post_job_id'];?>/<?php echo $post_job1['job_title'];?>"><i class="fa fa-arrow-right"></i>&nbsp;&nbsp; Details</a></span></p>
					<div class="pull-right three_list">
						<ul class="list-inline">
							<li>
								<a href="#"><i class="fa fa-clock-o"></i>&nbsp;&nbsp;
									<?php 
										$d1 = date_format(date_create($post_job1['job_post_date']), "Y/m/d H:i:s");
										$d2 = date_format(date_create(CURR_DATE), "Y/m/d H:i:s");
										$days= round(abs(strtotime($d1)-strtotime($d2))/86400);
										$seconds=abs(strtotime($d1)-strtotime($d2));
										$hours = round($seconds/3600);
										if($days==0) {	
											echo $hours.' '."Hours ago"; 
										} else {
											echo $days.' '."Days ago";
										}
													
									?>
									</a>
								</li>
								<li><a href="#"><i class="fa fa-eye"></i>&nbsp;&nbsp; <?php echo $post_job1['job_views'];?></a></li>
								<?php 
									$db->execute("SELECT count(like_id) as job_likes FROM tb_job_like WHERE job_id = '$last_id'");
									$likes = $db->getResults();
									foreach ($likes as $like) {
								?>
									<li><a href="##" id="<?php echo $post_job1['post_job_id'];?>" class='like_link'><i class="fa fa-thumbs-o-up"></i>&nbsp;&nbsp; <span id="like_count"><?php echo $like['job_likes'];?></span></a></li>
								<?php } ?>
							</ul>
						</div>
					</div>
				</div>
							
<?php } if ($last_id != 0) 
{
	echo '<script type="text/javascript">var last_id = '.$last_id.';</script>';
}
// sleep for 1 second to see loader, it must be deleted in prodection
//sleep(1);
?>
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


