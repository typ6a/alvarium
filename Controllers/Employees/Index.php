<?php

require_once('Models/Employee.php');

class Index
{
	public function execute() {
		$model = new Employee();
		$employees = $model->getList();
		include('Views/employeelist.phtml');
	}
}
