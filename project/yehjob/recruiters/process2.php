<?php 
$conn=mysql_connect("localhost","root","") or die("connection error");
mysql_select_db("yehjob",$conn) or die("database error");



if(!empty($_POST["category_id"])) {
		$query="SELECT * FROM lk_tb_skills WHERE  category_id = '" . $_POST["category_id"] . "'";
		$results =mysql_query($query);
	?>
		
	<?php
		while($skills=mysql_fetch_array($results)) {
	?>
		<option value="<?php echo $skills["skill"]; ?>"><?php echo $skills["skill"]; ?></option>
	<?php
	}
}
?>
