<?php
require_once('DbConnection.php');

class Department
{
	protected $connection;
	
	public function __construct() {
		$this->connection = DbConnection::getInstance();
	}

	private $title;

    public function getTitle(){
        return $this->title;
    }
 
    public function setTitle($title){
        $this->title = $title;
    }

    public function getList() {
	    $stmt = $this->connection->runQuery('
	        SELECT * FROM departments ORDER BY title
	    ');
	    if ($stmt->rowCount() > 0) {
	        $stmt->setFetchMode(PDO::FETCH_ASSOC);
	        $iterator = new IteratorIterator($stmt);
	        foreach ($iterator as $department) {
        		$result[] = [
					'title' => $department['title'],
				];
	        }

	    } else {
	        echo '<p>No results could be displayed.</p>';
	    }
	  	
		return $result;
	}

	function getXMLData($file){
        $xmldata = simplexml_load_file($file) or die("Failed to load");
        $departments = [];
        foreach ($xmldata->department as $department) {
            $departments[] = [
                'title' => ucfirst((string)$department->title),
            ];
        }
        return $departments;
    }

    function saveDepartment($department){
        $sql = "INSERT INTO departments (
            title
        ) VALUES (
            :title
        )";
        $pdo = $this->connection->pdo;
        $stmt = $pdo->prepare($sql)->execute($department);
        $stmt = null;
    }
}