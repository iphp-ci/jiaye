<?php

/**
 * Omweb Website Management System
 *
 * @since		version 2.0.0
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 * @filesource	svn://www.omooo.com/v2/omooo/libraries/OAuth2.php
 */

/**
 * OAuth2登录
 */
 
include('OAuth2/Exception.php');
include('OAuth2/Token.php'); 
include('OAuth2/Provider.php');

class OAuth2 {

	/**
	 * 创建一个新的供应商
	 *
	 * @param   string $name    provider name
	 * @param   array  $options provider options
	 * @return  OAuth2_Provider
	 */
	public static function provider($name, array $options = NULL) {
		$name = ucfirst(strtolower($name));
		$class = 'OAuth2_Provider_'.$name;
		include_once 'OAuth2/Provider/'.$name.'.php';
		return new $class($options);
	}
}