<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Omweb Website Management System
 *
 * @since		version 2.0.2
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 */

class Extend extends M_Controller {

    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();
    }
	
	/**
     * 内容
     */
    public function index() {
        return $this->_extend((int)$this->input->get('id'));
    }
}