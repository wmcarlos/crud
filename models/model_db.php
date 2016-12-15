<?php 
	session_start();
	error_reporting(E_ERROR | E_WARNING | E_PARSE);
	
	require_once("../config/db.php");

	$data = $db['database'];

	if(isset($data['conector']) and !empty($data['conector'])){
		switch ($data["contector"]) {
			case 'mysql':
				$file = "../conectors/mysql.php";
				if(file_exists($file)){
					require_once($file);
				}else{
					print "This file from Conector not Exists";
				}
			break;
			case 'postgres':
				$file = "../conectors/postgres.php";
				if(file_exists($file)){
					require_once($file);
				}else{
					print "This file from Conector not Exists";
				}
			break;
			default:
				print "<h1>Not Exists Support from This Conector</h1>";
			break;
		}
	}else{
		print "<h1>Error to Search the Conector file, see the config db</h1>";
	}
?>