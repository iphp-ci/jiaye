<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 主表结构（由开发者定义）
 *
 * sql: 初始化SQL语句，用{tablename}表示表名称
 * filed：初始化的自定义字段，可以用来由用户修改的字段
 */

return array(

	'sql' => '
	CREATE TABLE IF NOT EXISTS `{tablename}` (
	  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	  `catid` smallint(5) unsigned NOT NULL COMMENT "栏目id",
	  `title` varchar(255) DEFAULT NULL COMMENT "招聘职位",
	  `jobtype` varchar(255) DEFAULT NULL COMMENT "职位类型",
	  `workexper` varchar(255) DEFAULT NULL COMMENT "工作经验",
	  `jobadd` varchar(255) DEFAULT NULL COMMENT "工作地点",
	  `academic` varchar(255) DEFAULT NULL COMMENT "学历要求",
	  `jobnum` varchar(255) DEFAULT NULL COMMENT "招聘人数",
	  `person` varchar(255) DEFAULT NULL COMMENT "联 系 人",
	  `jobtel` varchar(255) DEFAULT NULL COMMENT "联系电话",
	  `jobemail` varchar(255) DEFAULT NULL COMMENT "电子邮件",
	  `thumb` varchar(255) DEFAULT NULL COMMENT "缩略图",
	  `keywords` varchar(255) DEFAULT NULL COMMENT "SEO关键字",
	  `description` text DEFAULT NULL COMMENT "SEO描述",
	  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT "浏览数",
	  `uid` mediumint(8) unsigned NOT NULL COMMENT "作者id",
	  `author` varchar(50) NOT NULL COMMENT "作者名称",
	  `status` tinyint(1) unsigned NOT NULL COMMENT "审核状态",
	  `url` varchar(255) DEFAULT NULL COMMENT "地址",
	  `tableid` smallint(5) unsigned NOT NULL COMMENT "副表id",
	  `inputip` varchar(15) DEFAULT NULL COMMENT "录入者ip",
	  `inputtime` int(10) unsigned NOT NULL COMMENT "录入时间",
	  `updatetime` int(10) unsigned NOT NULL COMMENT "更新时间",
	  `displayorder` tinyint(3) NOT NULL DEFAULT "0",
	  PRIMARY KEY (`id`),
	  KEY `uid` (`uid`),
	  KEY `catid` (`catid`,`updatetime`),
	  KEY `status` (`status`),
	  KEY `hits` (`hits`),
	  KEY `displayorder` (`displayorder`,`updatetime`)
	) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT="主表";
	',
	
	'field' => array(
		array(
			'textname' => '招聘职位',	// 字段显示名称
			'fieldname' => 'title',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					'formattr' => 'onblur="check_title();get_keywords(\'keywords\');"', // 表单附件参数
				)
			)
		),
		array(
			'textname' => '职位类型',	// 字段显示名称
			'fieldname' => 'jobtype',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					
				)
			)
		),
		array(
			'textname' => '工作经验',	// 字段显示名称
			'fieldname' => 'workexper',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					
				)
			)
		),
		array(
			'textname' => '工作地点',	// 字段显示名称
			'fieldname' => 'jobadd',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					
				)
			)
		),
		array(
			'textname' => '学历要求',	// 字段显示名称
			'fieldname' => 'academic',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					
				)
			)
		),
		array(
			'textname' => '招聘人数',	// 字段显示名称
			'fieldname' => 'jobnum',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					
				)
			)
		),
		array(
			'textname' => '联 系 人',	// 字段显示名称
			'fieldname' => 'person',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					
				)
			)
		),
		array(
			'textname' => '联系电话',	// 字段显示名称
			'fieldname' => 'jobtel',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					
				)
			)
		),
		array(
			'textname' => '电子邮件',	// 字段显示名称
			'fieldname' => 'jobemail',	// 字段名称
			'fieldtype'	=> 'Text',	// 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'required' => 1, // 表示必填
					
				)
			)
		),
		array(
			'textname' => '缩略图', // 字段显示名称
			'fieldname' => 'thumb',	// 字段名称
			'fieldtype'	=> 'File', // 字段类别
			'setting' => array(
				'option' => array(
					'ext' => 'jpg,gif,png',
					'size' => 10, 
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255', // 字段长度
				)
			)
		),
		array(
			'textname' => 'SEO关键字', // 字段显示名称
			'fieldname' => 'keywords', // 字段名称
			'fieldtype'	=> 'Text', // 字段类别
			'setting' => array(
				'option' => array(
					'width' => 400, // 表单宽度
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'tips' => '多个关键字以小写分号“,”分隔', // 提示信息
				),
			)
		),
		array(
			'textname' => 'SEO描述', // 字段显示名称
			'fieldname' => 'description', // 字段名称
			'fieldtype'	=> 'Textarea', // 字段类别
			'setting' => array(
				'option' => array(
					'width' => 500, // 表单宽度
					'height' => 60,
					'fieldtype' => 'VARCHAR', // 字段类型
					'fieldlength' => '255' // 字段长度
				),
				'validate' => array(
					'xss' => 1, // xss过滤
					'filter' => 'dr_clearhtml', // 过滤html 
				),
			)
		)
	)

);