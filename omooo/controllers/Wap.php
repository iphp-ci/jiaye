<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

 /**
 * omooo Website Management System
 *
 * @since		version 2.0.1
 * @author		omooo <omooo@gmail.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, omooo.Com, Inc.
 */
 
class Wap extends M_Controller {

    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();
		$this->output->enable_profiler(FALSE);
    }
	
    /**
     * 移动端展示部分
     */
    public function index() {


	}
}