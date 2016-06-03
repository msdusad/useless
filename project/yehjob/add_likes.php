<?php
require_once("include/config.php");
$db = new Database();
if(isset($_POST['type'], $_POST['job_id'])){
    $type = $_POST['type'];
    $job_id = (int)$_POST['job_id'];
    if(isset($_SESSION['recruiter_id'])){
        switch ($type){ 
        case 'likes':
            $db->execute(" INSERT INTO tb_job_like(job_id, recruiter_id)
                    SELECT {$job_id}, {$_SESSION[recruiter_id]} 
                    FROM tb_post_job

                    WHERE EXISTS(
                        SELECT post_job_id FROM tb_post_job WHERE post_job_id ={$job_id} 
                    ) 

                    AND NOT EXISTS(
                        SELECT like_id FROM tb_job_like 
                        WHERE job_id = {$job_id} AND recruiter_id = {$_SESSION[recruiter_id]}
                    )
                LIMIT 1");
            break;
        }  
    }elseif(isset($_SESSION['jobseeker_id'])){
        switch ($type){ 
        case 'likes':
            $db->execute(" INSERT INTO tb_job_like(job_id, jobseeker_id)
                    SELECT {$job_id}, {$_SESSION[jobseeker_id]} 
                    FROM tb_post_job

                    WHERE EXISTS(
                        SELECT post_job_id FROM tb_post_job WHERE post_job_id ={$job_id} 
                    ) 

                    AND NOT EXISTS(
                        SELECT like_id FROM tb_job_like 
                        WHERE job_id = {$job_id} AND jobseeker_id = {$_SESSION[jobseeker_id]}
                    )
                LIMIT 1");
            break;
        }  
    }
    
    $db->execute("SELECT count(like_id) as job_likes FROM tb_job_like WHERE job_id = $job_id");
    $likes = $db->getResults();
    foreach ($likes as $like) {
        echo $like['job_likes'];
    }
}elseif(isset($_POST['job_id'])){
    $job_id = $_POST['job_id'];
    $db->execute("SELECT count(*) AS likes FROM tb_job_like WHERE job_id = {$job_id}");
    $num = $db->getResult();
    echo $num['likes'];
}
?>