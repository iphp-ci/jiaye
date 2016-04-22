<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Omweb Website Management System
 *
 * @since		version 2.0.0
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 * @filesource	svn://www.omooo.com/v2/news/controllers/category.php
 */

require FCPATH.'omooo/core/D_Category.php';

class Category extends D_Category {

    /**
     * 构造函数
     */
    public function __construct() {
        parent::__construct();
    }
	
}