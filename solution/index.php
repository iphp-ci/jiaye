<?php

/**
 * Omweb Website Management System
 *
 * @since		version 2.0.2
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 */

define('FCPATH', dirname(dirname(__FILE__)).'/'); // 网站根目录
define('APPPATH', dirname(__FILE__).'/'); // “应用程序”文件夹目录
define('APP_DIR', basename(APPPATH)); // 模块目录名称
require(FCPATH.'index.php'); // 引入主文件