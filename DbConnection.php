<?php

class DbConnection
{
	private static $instance;
	public $pdo;
	
	private function __construct() {
		$dsn = "mysql:host=localhost;dbname=alvarium";
		$user = "root";
		$passwd = "projects";

		$this->pdo = new PDO($dsn, $user, $passwd);
	}
	
	public static function getInstance() {
		if (!self::$instance) {
			self::$instance = new DbConnection();
		}
		return self::$instance;
	}
	
	public function runQuery($query) {
		$statement = $this->pdo->query($query);
		return $statement;
	}
}









