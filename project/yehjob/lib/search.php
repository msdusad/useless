<?php
//error_reporting(0);
include_once('include/config.php');
class JobSearch
{
	private $company_name;
	private $category_id;
	private $location;
   	public $db;
	function __construct()
	{
		$this->db = new Database;
	}

	function jobSerach() {
		$keywords = $_SESSION['skills']=$_GET['skills'];
	   	if(!empty($_GET['location'])){$Location = $_SESSION['location'] = $_GET['location'];}
	   	if(!empty($_GET['experience'])){$experience = $_SESSION['experience'] = $_GET['experience'];}
	   	if(!empty($_GET['full_time'])){$full_time = $_SESSION['full_time'] = $_GET['full_time'];}
	   	if(!empty($_GET['part_time'])){$part_time = $_SESSION['part_time'] = $_GET['part_time'];}

	   	$qry1 = "SELECT pj.*, re.*, ca.category_name, jt.job_type, qu.qualifications, kw.keywords, lo.location
				FROM `tb_post_job` pj
				LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id
				LEFT JOIN tb_keywords kw ON pj.post_job_id = kw.post_job_id
				LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id
				LEFT JOIN tb_recruiter re ON pj.recruiter_id = re.recruiter_id
				LEFT JOIN lk_tb_category ca ON pj.category_id = ca.category_id
				LEFT JOIN lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id WHERE ";
		foreach ($keywords as $keyword) {	
			$qry1 .= "kw.keywords LIKE '%$keyword%' OR ";
		} 
		$qry2 = "";
		$qry2 .= rtrim($qry1,'OR ');
		if (!empty($Location)) {
		    $qry2 .= " AND lo.location LIKE '%$Location%'";
		}
		if(!empty($experience)){
			$qry2 .= " AND pj.experience <= $experience";
		} 
		if(!empty($full_time)){
			$qry2 .= " AND jt.job_type = '$full_time'";
		} 
		if (!empty($part_time)) {
			$qry2 .= " AND jt.job_type = '$part_time'";
		}
		    
		$qry2 .= ' group by pj.post_job_id ORDER BY pj.post_job_id DESC';
		$this->db->execute($qry2);
		$this->record_data = $this->db->getResults();
		return $this->record_data;
	}
		
	function advanceSearch() {
		$keywords =$_SESSION['skills']= $_GET['skills'];
		$Location = $_GET['location'];
		if(!empty($_GET['experience'])){$experience = $_GET['experience'];}
	   	if(!empty($_GET['salary'])){$salary = $_GET['salary'];}
		$category = $_GET['category'];
		$position = $_GET['position'];

		$qry3 = "SELECT pj.* , re.* , ca.category_name, jt.job_type, qu.qualifications, kw.keywords, lo.location
			FROM `tb_post_job` pj
			LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id
			LEFT JOIN tb_keywords kw ON pj.post_job_id = kw.post_job_id
			LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id
			LEFT JOIN tb_recruiter re ON pj.recruiter_id = re.recruiter_id
			LEFT JOIN lk_tb_category ca ON pj.category_id = ca.category_id
			LEFT JOIN lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id WHERE ";
	
		foreach ($keywords as $keyword) {	
			$qry3 .= "kw.keywords LIKE '%$keyword%' OR ";
		}
		$qry4 = "";
		$qry4 .= rtrim($qry3,'OR ');
		if ($Location!= '') {
		    $qry4 .= " AND lo.location LIKE '%$Location%'";
		}

		if (!empty($experience)) {
		    $qry4 .= " AND pj.experience <= $experience";
		}

		if (!empty($salary)) {
		    $qry4 .= " AND pj.salary <= $salary";
		}

		if ($category != 0) {
		    $qry4 .= " AND ca.category_id = $category";
		}
		$qry4 .= ' group by pj.post_job_id ORDER BY pj.post_job_id DESC';
		$this->db->execute($qry4);
		$this->record_data = $this->db->getResults();
		return $this->record_data;
	}

	//Job Search by category 
	function jobSerachByCategory($category_id) {
		$this->category_id = $category_id;
	   	$query = "SELECT pj.* , re.*, ca.category_name, jt.job_type, qu.qualifications, kw.keywords, lo.location
				FROM `tb_post_job` pj
				LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id
				LEFT JOIN tb_keywords kw ON pj.post_job_id = kw.post_job_id
				LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id
				LEFT JOIN tb_recruiter re ON pj.recruiter_id = re.recruiter_id
				LEFT JOIN lk_tb_category ca ON pj.category_id = ca.category_id
				LEFT JOIN lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id WHERE pj.category_id = '$category_id' ORDER BY pj.post_job_id DESC";

		$this->db->execute($query);
		$this->record_data = $this->db->getResults();
		return $this->record_data;
	}

	public function jobSerachByCompnay($company_name){
		$this->company_name = $company_name;
		$query = "SELECT pj.* , re.* , ca.category_name, jt.job_type, qu.qualifications, kw.keywords, lo.location
				FROM `tb_post_job` pj
				LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id
				LEFT JOIN tb_keywords kw ON pj.post_job_id = kw.post_job_id
				LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id
				LEFT JOIN tb_recruiter re ON pj.recruiter_id = re.recruiter_id
				LEFT JOIN lk_tb_category ca ON pj.category_id = ca.category_id
				LEFT JOIN lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id WHERE pj.company_name = '$company_name' ORDER BY pj.post_job_id DESC";
		
		
		$this->db->execute($query);
		$this->record_data = $this->db->getResults();
		return $this->record_data;

	}

	public function jobSerachByLocation($location){
		$this->location = $location;
		$query = "SELECT pj.* , re.* , ca.category_name, jt.job_type, qu.qualifications, kw.keywords, lo.location
				FROM `tb_post_job` pj
				LEFT JOIN tb_qualifications qu ON pj.post_job_id = qu.post_job_id
				LEFT JOIN tb_keywords kw ON pj.post_job_id = kw.post_job_id
				LEFT JOIN tb_location lo ON pj.post_job_id = lo.post_job_id
				LEFT JOIN tb_recruiter re ON pj.recruiter_id = re.recruiter_id
				LEFT JOIN lk_tb_category ca ON pj.category_id = ca.category_id
				LEFT JOIN lk_tb_job_type jt ON pj.job_type_id = jt.job_type_id WHERE lo.location LIKE '%$location%' ORDER BY pj.post_job_id DESC";
		$this->db->execute($query);
		$this->record_data = $this->db->getResults();
		return $this->record_data;

	}

}

?>