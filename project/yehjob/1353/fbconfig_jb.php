<?php
include '../include/config.php';
$db=new Database(); 
require_once 'autoload.php';
use Facebook\FacebookSession;
use Facebook\FacebookRedirectLoginHelper;
use Facebook\FacebookRequest;
use Facebook\FacebookResponse;
use Facebook\FacebookSDKException;
use Facebook\FacebookRequestException;
use Facebook\FacebookAuthorizationException;
use Facebook\GraphObject;
use Facebook\Entities\AccessToken;
use Facebook\HttpClients\FacebookCurlHttpClient;
use Facebook\HttpClients\FacebookHttpable;
// init app with app id and secret
FacebookSession::setDefaultApplication('446775625511517','6448adf6861b1f2c9654346af3c03299');
// login helper with redirect_uri
    $helper = new FacebookRedirectLoginHelper('http://www.yehjob.com/1353/fbconfig_jb.php');
try 
{
  $session = $helper->getSessionFromRedirect();
} 
catch( FacebookRequestException $ex ) 
{
  // When Facebook returns an error
}
catch( Exception $ex ) 
{
  // When validation fails or other local issues
}
// see if we have a session
if ( isset( $session ) ) 
{
  // graph api request for user data
  $request = new FacebookRequest($session, 'GET', '/me' );
  $response = $request->execute();
  // get response
  $graphObject = $response->getGraphObject();
  $fbid = $graphObject->getProperty('id');              // To Get Facebook ID
  $fbfullname = $graphObject->getProperty('name'); // To Get Facebook full name
  $femail = $graphObject->getProperty('email');    // To Get Facebook email ID
  /* ---- Session Variables -----*/
	$_SESSION['FBID_JS'] = $fbid;            
	$_SESSION['FB_fullname_JS'] = $fbfullname;
	$explode_name=explode(" ",$fbfullname);
	$_SESSION['FB_fname']=$explode_name['0'];
	$_SESSION['FB_lname']=$explode_name['1'];
	$_SESSION['FB_username_JS'] =$fbfullname;
	$_SESSION['FB_email_JS'] =  $femail;
	
	$social_type ='Facebook';
	$query="SELECT * from tb_jobseeker WHERE social_id='$_SESSION[FBID_JS]'";
	$db->execute($query);
	$numrows=$db->rowcount();
	if($numrows==0)
	{
	$insert="INSERT INTO tb_jobseeker(social_id,fname,lname,register_date,social_type) VALUES('$_SESSION[FBID_JS]','$_SESSION[FB_fname]','$_SESSION[FB_lname]',now(),'$social_type')";
	$db_execute=$db->execute($insert);
	}
	$fbquery="SELECT jobseeker_id FROM tb_jobseeker WHERE social_id='$_SESSION[FBID_JS]' LIMIT 1";
	$db->execute($fbquery);
	$result_fb=$db->getResult();
	$_SESSION['jobseeker_id']=$result_fb['jobseeker_id'];
	
	if(!empty($_SESSION['job_id']))
	{
		die("<script>location.href='http://www.yehjob.com/job_seeker/details.php'</script>");
	}
	else
	{
		die("<script>location.href='http://www.yehjob.com/job_seeker/index.php'</script>");
	} 
}
else 
{
 $loginUrl = $helper->getLoginUrl();
 header("Location: ".$loginUrl);
}
/*<img src="https://graph.facebook.com/<?php echo $_SESSION['FBID']; ?>/picture">*/

?>