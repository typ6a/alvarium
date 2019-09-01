<?php
require_once('DbConnection.php');

class Employee
{
	protected $connection;
	
	public function __construct() {
		$this->connection = DbConnection::getInstance();
	}

	private $firstname;
    private $lastname;
    private $fathername;
    private $birthday;
    private $position;
    private $department;
    private $type;
    private $rate;

      public function getFirstname(){
        return $this->firstname;
    }
 
    public function setFirstname($firstname){
        $this->firstname = $firstname;
    }

    public function getLastname(){
        return $this->lastname;
    }
 
    public function setLastname($lastname){
        $this->lastname = $lastname;
    }

    public function getFathername(){
        return $this->fathername;
    }
 
    public function setFathername($fathername){
        $this->fathername = $fathername;
    }

    public function getBirthday(){
        return $this->birthday;
    }
 
    public function setBirthday($birthday){
        $this->birthday = $birthday;
    }

    public function getPosition(){
        return $this->position;
    }
 
    public function setPosition($position){
        $this->position = $position;
    }

    public function getDepartment(){
        return $this->department;
    }
 
    public function setDepartment($department){
        $this->department = $department;
    }

    public function getType(){
        return $this->type;
    }
 
    public function setType($type){
        $this->type = $type;
    }

    public function getRate(){
        return $this->rate;
    }
 
    public function setRate($rate){
        $this->rate = $rate;
    }
	
	public function getList($limit = 20) {
        if (isset($_GET['limit'])) {
            $limit = $_GET['limit'];
        }
		// Find out how many items are in the table
	    $total = $this->connection->runQuery('
	        SELECT
	            COUNT(*)
	        FROM
	            employees
	    ')->fetchColumn();

	    // How many pages will there be
	    $pages = ceil($total / $limit);

	    // What page are we currently on?
	    $url = $_SERVER['REQUEST_URI'];
	    $urlParts = explode('/', $url);
	    if (isset($urlParts[2])) {
	    	$page = $urlParts[2];
	    } else $page = 1;

        // Calculate the offset for the query
	    $offset = ($page - 1)  * $limit;

	    // Some information to display to the user
	    $start = $offset + 1;
	    $end = min(($offset + $limit), $total);

	    // The "back" link
	    $prevlink = ($page > 1) ? '<a href="/employees/1/?limit=' . $limit .'" title="First page">&laquo;</a> <a href="/employees/' . ($page - 1) . '/?limit=' . $limit .'" title="Previous page">&lsaquo;</a>' : '<span>&laquo;</span> <span>&lsaquo;</span>';

	    // The "forward" link
	     $nextlink = ($page < $pages) ? '<a href="/employees/' . ($page + 1) . '/?limit=' . $limit .'" title="Next page">&rsaquo;</a> <a href="/employees/' . $pages . '/?limit=' . $limit .'" title="Last page">&raquo;</a>' : '<span>&rsaquo;</span> <span>&raquo;</span>';

	    // Display the paging information
	    echo '<div><h1>', $prevlink, ' Page ', $page, ' of ', $pages, ' pages, displaying ', $start, '-', $end, ' of ', $total, ' results ', $nextlink, ' </h1></div>';

        // paged query
	    $stmt = $this->connection->runQuery('
	        SELECT
	            *
	        FROM
	            employees
	        ORDER BY
	            firstname
	        LIMIT '.
	            $limit.'
	        OFFSET '.
	            $offset.'
	    ');

	    if ($stmt->rowCount() > 0) {
	        $stmt->setFetchMode(PDO::FETCH_ASSOC);
	        $iterator = new IteratorIterator($stmt);
	        foreach ($iterator as $employee) {
        		$result[] = [
					'firstname' => $employee['firstname'],
					'lastname' => $employee['lastname'],
				];
	        }
	    } else {
	        echo '<p>No results could be displayed.</p>';
	    }
		return $result;
	}

    function getXMLData($file){
        $xmldata = simplexml_load_file($file) or die("Failed to load");
        $employees = [];
        foreach ($xmldata->employee as $employee) {
            $employees[] = [
                'firstname' => ucfirst((string)$employee->firstname),
                'lastname' => ucfirst((string)$employee->lastname),
                'fathername' => ucfirst((string)$employee->fathername),
                'birthday' => (string)$employee->birthday,
                'position' => ucfirst((string)$employee->position),
                'department' => ucfirst((string)$employee->department),
                'type' => (string)$employee->type,
                'rate' => (string)$employee->rate,
            ];
        }
        return $employees;
    }

    function saveEmployee($employee){
        $sql = "INSERT INTO employees (
            firstname,
            lastname,
            fathername, 
            birthday, 
            position, 
            department, 
            type, 
            rate
        ) VALUES (
            :firstname,
            :lastname,
            :fathername,
            :birthday,
            :position,
            :department,
            :type,
            :rate
        )";
        $pdo = $this->connection->pdo;
        $stmt = $pdo->prepare($sql)->execute($employee);
        $stmt = null;
    }
}