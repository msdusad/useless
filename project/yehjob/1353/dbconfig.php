<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'k9u_forum');    // DB username
define('DB_PASSWORD', 'Wl@73yGZ=G4P');    // DB password
define('DB_DATABASE', 'k9u_forum');      // DB name
$connection = mysql_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD) or die( "Unable to connect");
$database = mysql_select_db(DB_DATABASE) or die( "Unable to select database");
?>