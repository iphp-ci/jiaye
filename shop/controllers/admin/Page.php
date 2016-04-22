<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * omooo Website Management System
 *
 * @since		version 2.0.0
 * @author		omooo <omooo@gmail.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, omooo.Com, Inc.
 * @filesource	svn://www.omooo.net/v2/omooo/controllers/admin/page.php
 */

require FCPATH.'omooo/core/D_Page.php';

class Page extends D_Page {

    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();
    }
	
	/**
     * 首页
     */
    public function index() {
		$this->admin_index();
	}
	
	/**
     * 添加
     */
    public function add() {
		$this->admin_add();
	}
	
	
	/**
     * 修改
     */
    public function edit() {
		$this->admin_edit();
	}
	
	/**
     * 缓存
     */
    public function cache() {
		$this->admin_cache();
	}
	
}