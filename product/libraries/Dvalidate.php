<?php

/**
 * Omweb Website Management System
 *
 * @since		version 2.0.0
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 * @filesource	svn://www.omooo.com/v2/omooo/libraries/Dvalidate.php
 */

/**
 * 表单数据校验
 */

class Dvalidate {
	
	private $ci;

	/**
     * 构造函数
     */
    public function __construct() {
		$this->ci = &get_instance();
    }

	/**
	 * 举例测试
	 *
	 * @param   $value	当前字段提交的值
	 * @param   自定义字段参数1
	 * @param   自定义字段参数2
	 * @param   自定义字段参数3 ...
	 * @return  true不通过 , false通过
	 */
	public function __test($value,  $p1) {
		return TRUE;
	}
	
	/**
	 * 验证会员名称是否存在
	 *
	 * @param   $value	当前字段提交的值
	 * @param   自定义字段参数1
	 * @param   自定义字段参数2
	 * @param   自定义字段参数3 ...
	 * @return  true不通过 , false通过
	 */
	public function check_member($value) {
		if (!$value) return TRUE;
		return $this->ci->db->where('username', $value)->count_all_results($this->ci->db->dbprefix('member')) ? FALSE : TRUE;
	}
}