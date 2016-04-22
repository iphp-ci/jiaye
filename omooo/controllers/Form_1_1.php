<?php

require FCPATH.'omooo/core/D_Form.php';

class Form_1_1 extends D_Form {

	public function __construct() {
		parent::__construct();
	}

	public function index() {
		$this->_post();
	}

}