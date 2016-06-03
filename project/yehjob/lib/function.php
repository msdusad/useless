<?php

include("include/config.php");

class search
{
	function __construct() {
		$this->db= new Database();
	}

	public function JobseekertProfileData() {
		$this->db->execute("SELECT * FROM  tb_jobseeker_info WHERE jobseeker_id='$_SESSION[jobseeker_id]' limit 1");
		return $this->db->getResults();
	}
		
  	public function jobseekerData() {
		$this->db->execute("SELECT * FROM `tb_jobseeker` WHERE jobseeker_id='$_SESSION[jobseeker_id]' limit 1");
		return $this->db->getResults();
		
	}

	public function recruiterData(){
		$recruiter_data = "SELECT * FROM tb_recruiter WHERE recruiter_id = '$_SESSION[recruiter_id]' limit 1";
		$this->db->execute($recruiter_data);
		return $this->db->getResults();
	}

	public function selectCategorys() {
		$this->db->execute("SELECT * FROM lk_tb_category");
		return $this->db->getResults();
		
	}
	public function selectLocations() {
		$this->db->execute("SELECT locations FROM lk_tb_location");
		return $this->db->getResults();
		
	}
	public function selectSkills() {
		$this->db->execute("SELECT * FROM lk_tb_skills");
		return $this->db->getResults();
	}
	public function selectlkkeywords() {
		$this->db->execute("SELECT * FROM lk_tb_keywords");
		return $this->db->getResults();
	}
	public function selectExperiences() {
		$this->db->execute("SELECT * FROM lk_tb_experience");
		return $this->db->getResults();
	}
	
	public function selectQualifications() {
		$this->db->execute("SELECT * FROM lk_tb_qualification");
		return $this->db->getResults();
	}
	public function selectSalarys() {
		$this->db->execute("SELECT * FROM lk_tb_salary");
		return $this->db->getResults();
	}
	public function selectJobTypes() {
		$this->db->execute("SELECT * FROM lk_tb_job_type");
		return $this->db->getResults();
	}
	public function selectJobType(){
		$this->db->execute("SELECT job_type FROM lk_tb_job_type WHERE job_type_id = '$_SESSION[job_type]'");
		return $this->db->getResults();
	}
	public function selectJobCategory(){
		$this->db->execute("SELECT category_name FROM lk_tb_category WHERE category_id = '$_SESSION[category]'");
		return $this->db->getResults();
	}
	
	/*public function selectPositions(){
		$this->db->execute("SELECT * FROM lk_tb_position");
		return $this->db->getResults();
	}
	
	public function selectPosition(){
		$this->db->execute("SELECT position FROM lk_tb_position WHERE position_id = '$_SESSION[position_id]'");
		return $this->db->getResults();
	}*/
	public function selectPostedJobs(){
		$this->db->execute("SELECT pj. *, re.*, kw.keywords, ca.category_name, jt.job_type, qu.qualifications, sk.skills, lo.location FROM `tb_post_job` pj LEFT JOIN `tb_keywords` kw  ON pj.post_job_id = kw.post_job_id LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id LEFT JOIN tb_skills sk ON pj.post_job_id = sk.post_job_id LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id LEFT JOIN  tb_recruiter re ON pj.recruiter_id = re.recruiter_id LEFT JOIN  lk_tb_category ca ON pj.category_id = ca.category_id LEFT JOIN  lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id ORDER BY pj.post_job_id DESC LIMIT 5");
		return $this->db->getResults();
	}

	public function uniquePostedJobs(){
		$this->db->execute("SELECT DISTINCT pj.post_job_id, pj.company_name, ca.category_name, lo.location, pj.category_id
							FROM `tb_post_job` pj
							LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id
							LEFT JOIN lk_tb_category ca ON pj.category_id = ca.category_id
							LEFT JOIN lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id
							GROUP BY ca.category_name
							ORDER BY pj.post_job_id DESC
							LIMIT 10 ");
		return $this->db->getResults();
	}
	public function uniquePostedJobsNumOfRows(){
		$this->db->execute("SELECT DISTINCT pj.post_job_id, pj.company_name, ca.category_name, lo.location, pj.category_id
							FROM `tb_post_job` pj
							LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id
							LEFT JOIN lk_tb_category ca ON pj.category_id = ca.category_id
							LEFT JOIN lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id
							GROUP BY ca.category_name
							ORDER BY pj.post_job_id DESC
							LIMIT 10 ");
		return $this->db->rowcount();
	}
	public function allPostedcompany(){
		$this->db->execute("SELECT distinct `company_name` from tb_post_job order by `job_post_date` DESC LIMIT 5");
		return $this->db->getResults();
	}

	public function selectPostedJob(){
		//echo $query="SELECT pj. *, re.*, po.position, ca.category_name, jt.job_type, qu.qualifications, sk.skills, lo.location FROM `tb_post_job` pj LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id LEFT JOIN tb_skills sk ON pj.post_job_id = sk.post_job_id LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id LEFT JOIN  tb_recruiter re ON pj.recruiter_id = re.recruiter_id LEFT JOIN lk_tb_position po ON pj.position_id = po.position_id LEFT JOIN  lk_tb_category ca ON pj.category_id = ca.category_id LEFT JOIN  lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id WHERE pj.post_job_id = '$_SESSION[job_id]' ORDER BY pj.post_job_id DESC ";die;
		$this->db->execute("SELECT pj. *, re.*,kw.keywords, ca.category_name, jt.job_type, qu.qualifications, sk.skills, lo.location FROM `tb_post_job` pj LEFT JOIN `tb_keywords` kw  ON pj.post_job_id = kw.post_job_id LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id LEFT JOIN tb_skills sk ON pj.post_job_id = sk.post_job_id LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id LEFT JOIN  tb_recruiter re ON pj.recruiter_id = re.recruiter_id LEFT JOIN  lk_tb_category ca ON pj.category_id = ca.category_id LEFT JOIN  lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id WHERE pj.post_job_id = '$_SESSION[job_id]' ORDER BY pj.post_job_id DESC ");
		return $this->db->getResult();
	}
	public function rowsCountJobs(){
		$this->db->execute("SELECT * FROM `tb_post_job`");
		return $this->db->rowcount();
	}
	public function postJobsTotalViews(){
		$this->db->execute("SELECT post_job_id FROM `tb_post_job` WHERE job_views != 0 ");
		return $this->db->rowcount();
	}
}
?>
