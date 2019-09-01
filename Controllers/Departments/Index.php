<?php

require_once('Models/Department.php');

class Index
{
	public function execute() {
		$model = new Department();
		$departments = $model->getList();
		include('Views/departmentlist.phtml');
	}
}
