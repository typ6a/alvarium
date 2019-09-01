<?php

require_once('Models/Employee.php');

class Create
{
	public function execute() {
		$model = new Employee();
		$employees = $model->getList();
		include('Views/departmentlist.phtml');
	}
}
