<?php 
include_once("../include/config.php");
//$value = $_GET['value'];
class PostJob{
	function __construct() {
		$this->db = new Database();
	}
	public function postJob(){
		if($_SESSION['company1']){
			$recruiter_id = $_SESSION['recruiter_id'];
			$company = $_SESSION['company1'];
			$job_title = $_SESSION['job_title'];
			$position = $_SESSION['position'];
			$desc = $_SESSION['desc'];
			$keywords = $_SESSION['keywords'];
			if(isset($_SESSION['other_location'])){
				$locations = $_SESSION['location'].','.$_SESSION['other_location'];
			}else{
				$locations = $_SESSION['location'];
			}
			$other_location = $_SESSION['other_location'];
			$email = $_SESSION['email'];
			$phone = $_SESSION['phone'];
			$category_id = $_SESSION['category'];
			$strskills = $_SESSION['skills'];
			$strquali = $_SESSION['qualifications'];
			$job_type_id = $_SESSION['job_type'];
			$min_salary = $_SESSION['min_salary'];
			$max_salary = $_SESSION['max_salary'];
			$min_exp = $_SESSION['min_exp'];
			$max_exp = $_SESSION['max_exp'];
			$company_overview = $_SESSION['company_overview'];
			$whatsapp_id = $_SESSION['whatsapp_id'];
			$linkedin = $_SESSION['linkedin'];
			
				$salary = $min_salary.'-'.$max_salary;
				$experience = $min_exp.'-'.$max_exp;
				$date = date('Y-m-d H:i:s');
				$job_query = "INSERT INTO tb_post_job(`recruiter_id`,`company_name`,`job_title`,`position`,`job_description`,`recuriter_email`,`phone`,`category_id`,`job_type_id`,`salary`,`experience`, `company_desc`, `whatsapp_id`, `linkedin_profile`, `job_post_date`) 
								VALUES('$recruiter_id','$company','$job_title','$position','$desc','$email','$phone','$category_id','$job_type_id','$salary','$experience','$company_overview','$whatsapp_id','$linkedin', '$date')";
				$insert_job_dtls = $this->db->execute($job_query);
				$last_id = $this->db->LastId();
				if(!empty($keywords)){
					$keywords_query = $this->db->execute("INSERT INTO tb_keywords(post_job_id, keywords) VALUES('$last_id','$keywords')");
					$keywords_value = explode(',', $keywords);
					foreach ($keywords_value as $keyword_one) {
						$keywords_v = trim($keyword_one);
						$query_unique = $this->db->execute("SELECT * FROM lk_tb_keywords WHERE keywords='$keywords_v'");
						$num_rows = $this->db->rowcount($query_unique);
						if($num_rows == 0 || $num_rows == ""){
							$this->db->execute("INSERT INTO lk_tb_keywords(keywords) VALUES('$keywords_v')");
						}
					}
				}
				if(!empty($locations)){
					$loc_query = $this->db->execute("INSERT INTO tb_location(post_job_id, location) VALUES('$last_id','$locations')");
				}
				if(!empty($other_location)){
					$other_locations = explode(',', $other_location);
					foreach ($other_locations as $other_loc) {
						$other_loca = trim($other_loc);
						$query_unique = $this->db->execute("SELECT * FROM lk_tb_location WHERE locations='$other_loca'");
						$num_rows = $this->db->rowcount($query_unique);
						if($num_rows == 0 || $num_rows == ""){
							$this->db->execute("INSERT INTO lk_tb_location(locations) VALUES('$other_loca')");
						}
					}
				}
				if(!empty($strskills)){
					$skills_query = $this->db->execute("INSERT INTO tb_skills(post_job_id, skills) VALUES('$last_id','$strskills')");
				}
				if(!empty($strquali)){
					$qali_query = $this->db->execute("INSERT INTO tb_qualifications(post_job_id, qualifications) VALUES('$last_id','$strquali')");
				}
				unset($_SESSION['company1']);

				//unset($_SESSION['name']);
				//unset($_SESSION['file_type']);
				//unset($_SESSION['tmp_name']);

				unset($_SESSION['job_title']);
				unset($_SESSION['position']);
				unset($_SESSION['desc']);
				unset($_SESSION['keywords']);
				unset($_SESSION['location']);
				unset($_SESSION['other_location']);
				unset($_SESSION['email']);
				unset($_SESSION['phone']);
				unset($_SESSION['category']);
				unset($_SESSION['skills']);
				unset($_SESSION['qualifications']);
				unset($_SESSION['job_type']);
				unset($_SESSION['min_salary']);
				unset($_SESSION['max_salary']);
				unset($_SESSION['min_exp']);
				unset($_SESSION['max_exp']);
				unset($_SESSION['company_overview']);
				unset($_SESSION['whatsapp_id']);
				unset($_SESSION['linkedin']);
				return "Your job Successfully posted!";
		}
		return "Something wrong! Please try again later.";
	
	}

	//Edit Posted Job //
	public function editPostedJob(){
		if($_SESSION['company']){
			$post_job_id = $_SESSION['post_job_id'];
			$recruiter_id = $_SESSION['recruiter_id'];
			$company = $_SESSION['company'];

			$job_title = $_SESSION['job_title'];
			$position = $_SESSION['position'];
			$desc = $_SESSION['desc'];
			$keywords = $_SESSION['keywords'];
			if(isset($_SESSION['other_location'])){
				$locations = $_SESSION['location'].','.$_SESSION['other_location'];
			}else{
				$locations = $_SESSION['location'];
			}
			$other_location = $_SESSION['other_location'];
			$email = $_SESSION['email'];
			$phone = $_SESSION['phone'];
			$category_id = $_SESSION['category'];
			$strskills = $_SESSION['skills'];
			$strquali = $_SESSION['qualifications'];
			$job_type_id = $_SESSION['job_type'];
			$min_salary = $_SESSION['min_salary'];
			$max_salary = $_SESSION['max_salary'];
			$min_exp = $_SESSION['min_exp'];
			$max_exp = $_SESSION['max_exp'];
			$company_overview = $_SESSION['company_overview'];
			$whatsapp_id = $_SESSION['whatsapp_id'];
			$linkedin = $_SESSION['linkedin'];
			$salary = $min_salary.'-'.$max_salary;
			$experience = $min_exp.'-'.$max_exp;
			if(!empty($company) && !empty($job_title) && !empty($strskills) && !empty($strquali)){
				$job_query = "UPDATE tb_post_job SET `recruiter_id` = '$recruiter_id', `company_name`='$company',`job_title`='$job_title', `position`='$position',`job_description`='$desc', `recuriter_email`='$email', `phone`='$phone', `category_id` = '$category_id', `job_type_id`='$job_type_id',
					`salary`='$salary', `experience`='$experience', `company_desc`='$company_overview', `whatsapp_id`='$whatsapp_id', `linkedin_profile`='$linkedin' WHERE post_job_id='$post_job_id'";
				$insert_job_dtls = $this->db->execute($job_query);
				
				if(!empty($keywords)){
					$keywords_query = $this->db->execute("UPDATE tb_keywords SET keywords = '$keywords' WHERE post_job_id='$post_job_id'");
					$keywords_value = explode(',', $keywords);
					foreach ($keywords_value as $keyword_one) {
						$keywords_v = trim($keyword_one);
						$query_unique = $this->db->execute("SELECT * FROM lk_tb_keywords WHERE keywords='$keywords_v'");
						$num_rows = $this->db->rowcount($query_unique);
						if($num_rows <= 0){
							$this->db->execute("INSERT INTO lk_tb_keywords(keywords) VALUES('$keywords_v')");
						}
					}
				}
				if(!empty($locations)){
					$loc_query = $this->db->execute("UPDATE tb_location SET location = '$locations' WHERE post_job_id = '$post_job_id'");
				}
				if(!empty($other_location)){
					$other_locations = explode(',', $other_location);
					foreach ($other_locations as $other_loc) {
						$other_loca = trim($other_loc);
						$query_unique = $this->db->execute("SELECT * FROM lk_tb_location WHERE locations='$other_loca'");
						$num_rows = $this->db->rowcount($query_unique);
						if($num_rows == 0 || $num_rows == ""){
							$this->db->execute("INSERT INTO lk_tb_location(locations) VALUES('$other_loca')");
						}
					}
				}
				if(!empty($strskills)){
					$skills_query = $this->db->execute("UPDATE tb_skills SET skills = '$strskills' WHERE post_job_id = '$post_job_id' ");
				}
				if(!empty($strquali)){
					$qali_query = $this->db->execute("UPDATE tb_qualifications SET qualifications = '$strquali' WHERE post_job_id = '$post_job_id'");
				}
				
				unset($_SESSION['company']);
				unset($_SESSION['job_title']);
				unset($_SESSION['position']);
				unset($_SESSION['desc']);
				unset($_SESSION['keywords']);
				unset($_SESSION['location']);
				unset($_SESSION['other_location']);
				unset($_SESSION['email']);
				unset($_SESSION['phone']);
				unset($_SESSION['category']);
				unset($_SESSION['skills']);
				unset($_SESSION['qualifications']);
				unset($_SESSION['job_type']);
				unset($_SESSION['min_salary']);
				unset($_SESSION['max_salary']);
				unset($_SESSION['min_exp']);
				unset($_SESSION['max_exp']);
				unset($_SESSION['company_overview']);
				unset($_SESSION['whatsapp_id']);
				unset($_SESSION['linkedin']);
				return "Your job Successfully updated!";
			}
			return "You cant insert null value!";
		}
		return "Something wrong! Please try again later.";
	}
}
?>