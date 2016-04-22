<?php

/**
 * omooo Website Management System
 *
 * @since		version 2.0.2
 * @author		omooo <@gmail.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, omooo.Com, Inc.
 */

define('IS_ADMIN', TRUE); // 项目标识

define('FCPATH', dirname(dirname(__FILE__)).'/'); // 网站根目录
define('APPPATH', dirname(__FILE__).'/'); // “应用程序”文件夹目录
define('APP_DIR', basename(APPPATH)); // 模块目录名称

require(FCPATH.'index.php'); // 引入主文件