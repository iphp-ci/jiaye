<?php

/**
 * OAuthÒì³£Àà
 * Omweb Website Management System
 *
 * @since		version 2.0.0
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 */

class OAuth2_Exception extends Exception {

	public function __construct($message) {
		parent::__construct($message, 0);
	}
	
	public function __toString() {
		return $this->message;
	}
}