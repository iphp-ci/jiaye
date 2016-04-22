<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * omooo Website Management System
 *
 * @since		version 2.0.0
 * @author		omooo <omooo@gmail.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, omooo.Com, Inc.
 * @filesource	svn://www.omooo.net/v2/member/controllers/admin/tpl.php
 */

require FCPATH.'omooo/core/D_File.php';

class Tpl extends D_File {

    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();
		$this->path = FCPATH.APP_DIR.'/templates/';
		$this->template->assign(array(
			'path' => $this->path,
			'furi' => APP_DIR.'/tpl/',
			'auth' => APP_DIR.'/admin/tpl/',
			'menu' => $this->get_menu(array(
				lang('230') => APP_DIR.'/admin/tpl/index',
				lang('233') => APP_DIR.'/admin/tpl/tag',
			)),
		));
    }
	
}