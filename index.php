<?php
ini_set('display_errors', 0);
ini_set('display_startup_errors', 0);
// error_reporting(E_ALL);
require_once('FrontController.php');

$frontController = new FrontController();
$frontController->dispatch($_SERVER['REQUEST_URI']);