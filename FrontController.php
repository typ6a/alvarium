<?php 

class FrontController 
{
	public function dispatch($url) {
		$folder = 'Index';
		$controller = 'Index';
		$path = explode('/', $url);
		if (!empty($path[1])){	
			$folder = ucfirst($path[1]);
		}
		if (!empty($path[2]) && !is_numeric($path[2])){
			$controller = ucfirst($path[2]);
		}
		$filepath = 'Controllers/' . $folder . '/' . $controller . '.php';
		if (file_exists($filepath)) {
			require_once($filepath);
			$controllerInstance = new $controller();
			$controllerInstance->execute();
		} else {
			echo 'Redirecting to 404';
		}
	}
}