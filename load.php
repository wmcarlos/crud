<?php 
	#define path
    define('BASEPATH',dirname(__FILE__));
    define('CONFIG', BASEPATH . '/config/');

    include(CONFIG . 'config.php');
    $baseuri = 'http://'.$site['config']['url'] .'/'. $site['config']['folder'].'/';
    
    define('BASEURI', $baseuri);
	define('HELPER',BASEPATH . '/helpers/');
	define('MODELS',BASEPATH . '/models/');
	define('CONTROLLERS', BASEPATH. '/controllers/');
	define('VIEWS', BASEPATH. '/views/');
	define('LOCALS',BASEURI . 'views/');

	#include helpers
	include(HELPER . '/helper_uri.php');
	include(HELPER . '/helper_form.php');
?>