<?php

require_once('Models/Department.php');

class Importxml
{
	public function execute() {
		$model = new Department();
		$departments = $model->getXMLData("Uploads/departments.xml");
		for ($i=0; $i < count($departments); $i++) { 
            $model->saveDepartment($departments[$i]);
        }
	}
}
