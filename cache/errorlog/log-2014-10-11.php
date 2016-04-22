<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2014-10-11 08:01:12 --> Could not find the language line "060"
ERROR - 2014-10-11 08:01:12 --> Could not find the language line "add"
ERROR - 2014-10-11 08:01:12 --> Could not find the language line "061"
ERROR - 2014-10-11 09:05:06 --> Could not find the language line "128"
ERROR - 2014-10-11 09:05:06 --> Could not find the language line "html-010"
ERROR - 2014-10-11 09:05:06 --> Could not find the language line "124"
ERROR - 2014-10-11 09:05:06 --> Could not find the language line "add"
ERROR - 2014-10-11 18:33:47 --> 钩子调用文件（F:\wwwroot\WWW\simi/omooo/hooks/module_hooks.php）的不存在
ERROR - 2014-10-11 18:34:10 --> 钩子调用文件（F:\wwwroot\WWW\simi/omooo/hooks/module_hooks.php）的不存在
ERROR - 2014-10-11 18:34:26 --> 钩子调用文件（F:\wwwroot\WWW\simi/omooo/hooks/module_hooks.php）的不存在
ERROR - 2014-10-11 18:41:33 --> 钩子调用文件（F:\wwwroot\WWW\simi/omooo/hooks/module_hooks.php）的不存在
ERROR - 2014-10-11 18:42:24 --> 钩子调用文件（F:\wwwroot\WWW\simi/omooo/hooks/module_hooks.php）的不存在
ERROR - 2014-10-11 18:45:43 --> 钩子调用文件（F:\wwwroot\WWW\simi/omooo/hooks/module_hooks.php）的不存在
ERROR - 2014-10-11 19:20:18 --> Query error: Duplicate column name 'jobnum' - Invalid query: CREATE TABLE IF NOT EXISTS `om_1_job` (
	  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	  `catid` smallint(5) unsigned NOT NULL COMMENT "栏目id",
	  `title` varchar(255) DEFAULT NULL COMMENT "职位名称",
	  `thumb` varchar(255) DEFAULT NULL COMMENT "缩略图",
	  `keywords` varchar(255) DEFAULT NULL COMMENT "关键字",
	  `description` text DEFAULT NULL COMMENT "描述",
	  `jobtype` varchar(255) DEFAULT NULL COMMENT "职位类型",
	  `workexper` varchar(255) DEFAULT NULL COMMENT "工作经验",
	  `academic` varchar(255) DEFAULT NULL COMMENT "学历要求",
	  `jobnum` varchar(255) DEFAULT NULL COMMENT "招聘人数",
	  `jobnum` varchar(255) DEFAULT NULL COMMENT "联 系 人",
	  `jobtel` varchar(255) DEFAULT NULL COMMENT "联系电话",
	  `jobemail` varchar(255) DEFAULT NULL COMMENT "电子邮件",
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
ERROR - 2014-10-11 19:21:29 --> Query error: Duplicate column name 'jobnum' - Invalid query: CREATE TABLE IF NOT EXISTS `om_1_job` (
	  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	  `catid` smallint(5) unsigned NOT NULL COMMENT "栏目id",
	  `title` varchar(255) DEFAULT NULL COMMENT "职位名称",
	  `thumb` varchar(255) DEFAULT NULL COMMENT "缩略图",
	  `keywords` varchar(255) DEFAULT NULL COMMENT "关键字",
	  `description` text DEFAULT NULL COMMENT "描述",
	  `jobtype` varchar(255) DEFAULT NULL COMMENT "职位类型",
	  `workexper` varchar(255) DEFAULT NULL COMMENT "工作经验",
	  `academic` varchar(255) DEFAULT NULL COMMENT "学历要求",
	  `jobnum` varchar(255) DEFAULT NULL COMMENT "招聘人数",
	  `jobnum` varchar(255) DEFAULT NULL COMMENT "联 系 人",
	  `jobtel` varchar(255) DEFAULT NULL COMMENT "联系电话",
	  `jobemail` varchar(255) DEFAULT NULL COMMENT "电子邮件",
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
