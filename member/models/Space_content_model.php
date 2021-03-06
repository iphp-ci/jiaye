<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Omweb Website Management System
 *
 * @since		version 2.2.2
 * @author		Omooo <kefu@omooo.com>
 * @license     http://www.omooo.com/license
 * @copyright   Copyright (c) 2011 - 9999, Omooo.Com, Inc.
 */
	
class Space_content_model extends CI_Model{

	public $tablename;

	/*
	 * 构造函数
	 */
    public function __construct() {
        parent::__construct();
    }
	
	/*
	 * 条件查询
	 *
	 * @param	object	$select	查询对象
	 * @param	array	$param	条件参数
	 * @return	array	
	 */
	private function _where(&$select, $param) {
	
		$_param = array();
		$this->cache_file = md5($this->duri->uri(1).$this->uid.SITE_ID.$this->input->ip_address().$this->input->user_agent()); // 缓存文件名称
		
		// 存在POST提交时，重新生成缓存文件
		if (IS_POST) {
			$data = $this->input->post('data');
            foreach ($data as $i => $t) {
                if (!$t) {
                    unset($data[$i]);
                }
            }
			$this->cache->file->save($this->cache_file, $data, 3600);
			$param['search'] = 1;
			unset($_GET['page']);
		}
		
		// 存在search参数时，读取缓存文件
		if ($param['search'] == 1) {
			$data = $this->cache->file->get($this->cache_file);
			$_param['search'] = 1;
			if (isset($data['keyword']) && $data['keyword']) {
				$select->like('title', urldecode($data['keyword']));
			}
            // 时间搜索
            if (isset($data['start']) && $data['start']) {
                $data['end'] = strtotime(date('Y-m-d 23:59:59', $data['end'] ? $data['end'] : SYS_TIME));
                $data['start'] = strtotime(date('Y-m-d 00:00:00', $data['start']));
                $select->where('updatetime BETWEEN ' . $data['start'] . ' AND ' . $data['end']);
            } elseif (isset($data['end']) && $data['end']) {
                $data['end'] = strtotime(date('Y-m-d 23:59:59', $data['end']));
                $data['start'] = 0;
                $select->where('updatetime BETWEEN ' . $data['start'] . ' AND ' . $data['end']);
            }
			if (isset($data['status'])) {
				$select->where('status', (int)$data['status']);
			}
		}
		
		
		return $_param;
	}
	
	/*
	 * 数据分页显示
	 *
	 * @param	array	$param	条件参数
	 * @param	intval	$page	页数
	 * @param	intval	$total	总数据
	 * @return	array	
	 */
	public function limit_page($param, $page, $total) {
	
		if (!$total) {
			$select	= $this->db->select('count(*) as total');
			$_param = $this->_where($select, $param);
			if ($_param) $select->order_by('id');
			$data = $select->get($this->tablename)->row_array();
			unset($select);
			$total = (int)$data['total'];
			if (!$total) {
                return array(array(), array('total' => 0));
            }
		}
		
		$select	= $this->db->limit(SITE_ADMIN_PAGESIZE, SITE_ADMIN_PAGESIZE * ($page - 1));
		$_param	= $this->_where($select, $param);

        $order = isset($_GET['order']) && strpos($_GET['order'], "undefined") !== 0 ? $this->input->get('order') : 'updatetime desc';
		$data = $select->order_by($order)
					   ->get($this->tablename)
					   ->result_array();

		$_param['total'] = $total;
		$_param['order'] = $order;

		return array($data, $_param);
	}
	
	// get
	public function get($uid, $id) {
		
		if (!$id || !$uid) {
            return NULL;
        }
		
		return $this->db
					->where('id', (int)$id)
					->where('uid', (int)$uid)
					->limit(1)
					->get($this->tablename)
					->row_array();
	}
	
	/**
	 * 发布
	 *
	 * @param	array	$data
	 * @return	array	
	 */
	public function add($data) {

		if (!$data) {
            return FALSE;
        }
		
		$this->db->replace($this->tablename, $data);
		
		return $this->db->insert_id();
	}
	
	// 修改
	public function edit($id, $uid, $data) {
	
		// 参数判断
		if (!$data || !$id || !$uid) {
            return FALSE;
        }
		
		$this->db
			 ->where('id', (int)$id)
			 ->where('uid', (int)$uid)
			 ->update($this->tablename, $data);
		
		$this->ci->clear_cache($this->tablename.'-space-show-'.$id);
		$this->ci->clear_cache($this->tablename.'-space-hits-'.$id);
		
		return $id;
	}
}