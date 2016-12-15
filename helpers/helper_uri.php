<?php 
		function load_view(){
			if(isset($_GET['v']) and !empty($_GET['v'])){
				$v = $_GET['v'];
				$controller = CONTROLLERS . 'controller_'.$v.'.php';
				$view = VIEWS . 'view_'.$v.'.php';
				if(file_exists($controller) and file_exists($view)){
					include($controller);
					include($view);
				}else{
					include(CONTROLLERS . 'controller_dashboard.php');
					include(VIEWS . 'view_dashboard.php');
				}
			}else{
				include(CONTROLLERS . 'controller_404.php');
				include(VIEWS . 'view_404.php');
			}
		}
?>