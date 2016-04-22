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

require FCPATH.'omooo/core/D_Admin_Extend_Verify.php';
 
class Verify extends D_Admin_Extend_Verify {
	
    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();
	}

}