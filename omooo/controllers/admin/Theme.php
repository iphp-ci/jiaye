<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Omweb Website Management System
 *
 * @since		version 2.0.0
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 * @filesource	svn://www.omooo.com/v2/omooo/controllers/admin/theme.php
 */

require FCPATH.'omooo/core/D_File.php';

class Theme extends D_File {

    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();
		$this->path = FCPATH.'omooo/statics/';
		$this->template->assign(array(
			'path' => $this->path,
			'furi' => 'admin/theme/',
			'auth' => 'admin/theme/',
			'menu' => $this->get_menu(array(
				lang('231') => 'admin/theme/index'
			)),
		));
    }
	
}