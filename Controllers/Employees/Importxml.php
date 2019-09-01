<?php

require_once('Models/Employee.php');

class Importxml
{
	public function execute() {
		$model = new Employee();
		$employees = $model->getXMLData("Uploads/employees.xml");
		for ($i=0; $i < count($employees); $i++) { 
            $model->saveEmployee($employees[$i]);
        }
	}
}
