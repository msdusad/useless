<?php
require('http.php');
require('oauth_client.php');
require('../include/config.php');
$db = new Database();
if ($_GET["oauth_problem"] <> "") {
  // in case if user cancel the login. redirect back to home page.
  $_SESSION["e_msg"] = $_GET["oauth_problem"];
  die("<script>location.href = 'index.php';</script>");
}
$client = new oauth_client_class;
$client->debug = false;
$client->debug_http = true;
$client->redirect_uri = REDIRECT_REC_URL;
$client->client_id = API_KEY;
$application_line = __LINE__;
$client->client_secret = SECRET_KEY;
if (strlen($client->client_id) == 0 || strlen($client->client_secret) == 0){
  die('Please go to LinkedIn Apps page https://www.linkedin.com/secure/developer?newapp= , '.
			'create an application, and in the line '.$application_line.
			' set the client_id to Consumer key and client_secret with Consumer secret. '.
			'The Callback URL must be '.$client->redirect_uri).' Make sure you enable the '.
			'necessary permissions to execute the API calls your application needs.';
}
/* API permissions
 */
$client->scope = SCOPE;
if (($success = $client->Initialize())) {
  if (($success = $client->Process())) {
    if (strlen($client->authorization_error)) {
      $client->error = $client->authorization_error;
      $success = false;
    } elseif (strlen($client->access_token)) {
      $success = $client->CallAPI(
					'http://api.linkedin.com/v1/people/~:(id,email-address,first-name,last-name,picture-url,public-profile-url,formatted-name)', 
					'GET', array(
						'format'=>'json'
					), array('FailOnAccessError'=>true), $user);
    }
  }
  $success = $client->Finalize($success);
}
if ($client->exit) exit;
if ($success) {
  // Now check if user exist with same email ID
  try {
    $sql = "SELECT * FROM tb_recruiter WHERE recuriter_email = '$user->emailAddress' LIMIT 1";
    $seeker_res=$db->execute($sql);
    $num = $db->rowcount($seeker_res);
    if ($num > 0) {
      // User Exist
      $result = $db->getResult($seeker_res);
      $_SESSION['name'] = $user->formattedName;
      $_SESSION['email'] = $user->emailAddress;
      $_SESSION['picture'] = $user->pictureUrl;
      $_SESSION['recruiter_id'] = $result['recruiter_id'];
      $_SESSION['new_user'] = "no";
    } else {
      // New user, Insert in database
      $sql1 = "INSERT INTO `tb_recruiter`(`linkedin_id`,`recruiter_name`,`recuriter_email`,`recruiter_reg_date`,`social_type`) VALUES ('$user->id','$user->formattedName','$user->emailAddress',Now(),'Linkedin')";
      $db->execute($sql1);
      $result1 = $db->LastId();
      if ($result1 > 0) {
        $sql2 = "SELECT * FROM tb_recruiter WHERE recuriter_email = '$user->emailAddress' LIMIT 1";
        $seeker_res1 = $db->execute($sql2);
        $result1 = $db->getResult($seeker_res1);
        $_SESSION['name'] = $user->formattedName;
        $_SESSION['email'] = $user->emailAddress;
        $_SESSION['picture'] = $user->pictureUrl;
        $_SESSION['recruiter_id'] = $result1['recruiter_id'];
        $_SESSION['new_user'] = "yes";
        $_SESSION['e_msg'] = "";
      }
    }
  } catch (Exception $ex) {
    $_SESSION["e_msg"] = $ex->getMessage();
  }
  $_SESSION["user_id"] = $user->id;
} else {
  $_SESSION["e_msg"] = $client->error;
}
die("<script>location.href = 'http://yehjob.com/recruiters/';</script>");
//header("Location:".JOB_SEEKER);
?>