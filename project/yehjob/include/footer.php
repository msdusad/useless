<?php session_start();?>
</section>	
	<!--footer starts from here-->

	<footer id="footer_outer">

		<div class="container">

			<div class="col-xs-12 col-sm-3 four_one">

				<div class="footer_logo">

					<a href="<?php echo WEB_ROOT;?>"><img src="<?php echo WEB_ROOT;?>images/yehjob_logo.png" class="img-responsive"></a>

				</div>

				<div class="footer_social">

					<ul class="list-inline">

						<li id="facebook"><a href="https://www.facebook.com/Yehjob-560106420819860/" target="_blank"><i class="fa fa-facebook"></i></a></li>

						<li id="twitter"><a href="https://twitter.com/YehJob_" target="_blank"><i class="fa fa-twitter"></i></a></li>

						<li id="linkedin"><a href="https://plus.google.com/b/107026356570308602804/107026356570308602804" target="_blank"><i class="fa fa-google-plus"></i></a></li>

					</ul>

				</div>

			</div>

			<div class="col-xs-12 col-sm-3 four_one">

				<h3>Jobs  by Functional area </h3>

				<ul>
					<?php foreach ($unique_postedJobs as $unique_postedJob) {?>
					<li><a href="<?php echo WEB_ROOT;?>search_job/id/<?php echo $unique_postedJob['category_id']?>/<?php echo $unique_postedJob['category_name']; ?>"><?php echo $unique_postedJob['category_name']; ?></a></li>
					<?php } ?>
				</ul>

			</div>

			<div class="col-xs-12 col-sm-3 four_one">

				<h3>Jobs  by Company </h3>
				<ul>
				<?php foreach ($allpostedcompany as $unique_postedJob) { ?>
					<li><a href="<?php echo WEB_ROOT;?>search_job/cname/<?php echo $unique_postedJob['company_name'];?>"><?php echo $unique_postedJob['company_name']; ?></a></li>
					<?php } ?>
				</ul>

			</div>

			<div class="col-xs-12 col-sm-3 four_one"> 

				<h3>Jobs  by Location</h3>
				<ul>
					<?php
					for($i=0; $i<$num_rows; $i++){
						$locations_array .= $unique_postedJobs[$i]['location'].',';
						$locations11 = rtrim($locations_array,',');
					}
					$locations_explod = explode(',', $locations11);
					$location_uni = array_unique($locations_explod);
					$location_slice = array_slice($location_uni, 0, 10, true);
					foreach ($location_slice as $location11) {
					?>
					<li><a href="<?php echo WEB_ROOT;?>search_job/location/<?php echo $location11;?>"><?php echo $location11; ?></a></li>
					<?php  } ?>

					
				</ul>

			</div>
			<div class="col-xs-12 below_footer">
				<div>
					<ul class="inline-list below_footer_list">
						<li><a href="<?php echo WEB_ROOT;?>index.php">Home</a></li>
						<li><a href="<?php echo WEB_ROOT;?>about_us.php">About Us</a></li>
						<li><a href="<?php echo WEB_ROOT;?>pp.php">Privay policies</a></li>
						<li><a href="<?php echo WEB_ROOT;?>tc.php">Terms & conditions</a></li>
						<li><a href="<?php echo WEB_ROOT;?>contact_us.php">Contact Us</a></li>
						<li><a href="http://blog.yehjob.com/" target="_blank">Blog</a></li>
					</ul>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="<?php echo SCRIPT_ROOT ;?>jquery.js"></script>

		<script type="text/javascript" src="<?php echo SCRIPT_ROOT ;?>bootstrap.js"></script>
		<script type="text/javascript" src="<?php echo SCRIPT_ROOT ;?>fm.selectator.jquery.js"></script>
		<script type="text/javascript" src="<?php echo SCRIPT_ROOT ;?>main.js"></script>
		<script type="text/javascript" src="<?php echo SCRIPT_ROOT ;?>nicEdit.js"></script>
		<script type="text/javascript">bkLib.onDomLoaded(nicEditors.allTextAreas);</script>
		<script src="bootstrap.min.js"></script>

	</footer>	

	<!--footer ends from here-->



</body>

</html>