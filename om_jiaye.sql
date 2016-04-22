/*
Navicat MySQL Data Transfer

Source Server         : phpst
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : om_jiaye

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2014-10-28 17:09:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for om_1_block
-- ----------------------------
DROP TABLE IF EXISTS `om_1_block`;
CREATE TABLE `om_1_block` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '文本块名称',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='文本块表';

-- ----------------------------
-- Records of om_1_block
-- ----------------------------
INSERT INTO `om_1_block` VALUES ('1', 'Sales邮箱', 'a@zan3.com');
INSERT INTO `om_1_block` VALUES ('2', 'Support邮箱', 'a@zan3.com');
INSERT INTO `om_1_block` VALUES ('3', '论坛地址', '#');
INSERT INTO `om_1_block` VALUES ('4', '400电话', '4008 650 900');
INSERT INTO `om_1_block` VALUES ('5', '底部版权信息', 'copyright©2013-2010 mywebsite.com All Right Reserved 版权所有 上海国际传媒产业园文化装备管理有限公司 沪ICP备07024853');
INSERT INTO `om_1_block` VALUES ('6', '英文网址', '#');
INSERT INTO `om_1_block` VALUES ('7', 'QQ在线客服号码', '11360517');

-- ----------------------------
-- Table structure for om_1_chip
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip`;
CREATE TABLE `om_1_chip` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `downpdf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_chip
-- ----------------------------
INSERT INTO `om_1_chip` VALUES ('1', '2', 'TMS320F28027', '', '', 'Piccolo Microcontroller', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/chip/index.php?c=show&id=1', '0', '127.0.0.1', '1413457837', '1413457937', '0', '5');
INSERT INTO `om_1_chip` VALUES ('2', '2', '2014最好用的网站开发工具 web前端工程师必备tools', '', '网站开发,工程师,最好', 'Ink Mobility — 促进不同的应用在移动端相互通信的工具Bootstraptor — 为 web 开发者提供的 Twitter Bootstrap 模板Macaw — 可编写 语音 HTML 及简洁 CSS 的 web 设计工具XingCloud — “一键点击”即可完成网站...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/chip/index.php?c=show&id=2', '0', '127.0.0.1', '1413534395', '1413534395', '0', '');
INSERT INTO `om_1_chip` VALUES ('3', '2', '乌云网掌门人：阻力主要来自BAT三巨头 赞生的目标啊', 'http://zan.jiaye.in/member/uploadfile/ueditor/201410/e7bed82bec.jpg', '掌门人', '乌云网的创始人方小顿正如白魔法和黑魔法一样，在黑客领域也要分“白帽子”和“黑帽子”。作为“信息警察”，方小顿在过去8年间都在扮演黑客领域中的“甘道夫”，专门和“伏地魔”对打。近期曝出的携程网“漏洞门”...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/chip/index.php?c=show&id=3', '0', '127.0.0.1', '1413534433', '1413534433', '0', '');
INSERT INTO `om_1_chip` VALUES ('4', '2', '2014最好用的网站开发工具 web前端工程师必备tools', '52', '网站开发,工程师,最好', 'Ink Mobility — 促进不同的应用在移动端相互通信的工具Bootstraptor — 为 web 开发者提供的 Twitter Bootstrap 模板Macaw — 可编写 语音 HTML 及简洁 CSS 的 web 设计工具XingCloud — “一键点击”即可完成网站...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/chip/index.php?c=show&id=4', '0', '127.0.0.1', '1413534395', '1413534395', '0', '');
INSERT INTO `om_1_chip` VALUES ('5', '2', 'mmntr是日本开发者Motoshi Goto面向Web设计中的', '33', '开发者,日本', '0大前端开发工具Ink Mobility — 促进不同的应用在移动端相互通信的工具Bootstraptor — 为 web 开发者提供的 Twitter Bootstrap 模板Macaw — 可编写 语音 HTML 及简洁 CSS 的 web 设计工具XingCloud — “一键点击...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/chip/index.php?c=show&id=5', '0', '127.0.0.1', '1413534113', '1413534113', '0', '');
INSERT INTO `om_1_chip` VALUES ('6', '2', '2014最好用的网站开发工具 web前端工程师必备tools', '30', '网站开发,工程师,最好', '0大前端开发工具Ink Mobility — 促进不同的应用在移动端相互通信的工具Bootstraptor — 为 web 开发者提供的 Twitter Bootstrap 模板Macaw — 可编写 语音 HTML 及简洁 CSS 的 web 设计工具XingCloud — “一键点击...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/chip/index.php?c=show&id=6', '0', '127.0.0.1', '1413534004', '1413534004', '0', '');

-- ----------------------------
-- Table structure for om_1_chip_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_0`;
CREATE TABLE `om_1_chip_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_1`;
CREATE TABLE `om_1_chip_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_2`;
CREATE TABLE `om_1_chip_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_3`;
CREATE TABLE `om_1_chip_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_4`;
CREATE TABLE `om_1_chip_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_5`;
CREATE TABLE `om_1_chip_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_6`;
CREATE TABLE `om_1_chip_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_7`;
CREATE TABLE `om_1_chip_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_8`;
CREATE TABLE `om_1_chip_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_buy_9`;
CREATE TABLE `om_1_chip_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_chip_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_category`;
CREATE TABLE `om_1_chip_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_chip_category
-- ----------------------------
INSERT INTO `om_1_chip_category` VALUES ('1', '0', '0', 'MCU', 'm', 'mcu', '', '1', '1,2,3', '21', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:0:{}s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('2', '1', '0,1', 'C2000', 'c', 'c2000', 'mcu/', '0', '2', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('3', '1', '0,1', 'GP32', 'g', 'gp32', 'mcu/', '0', '3', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('4', '0', '0', 'ARM', 'a', 'arm', '', '1', '4,5,6', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('5', '4', '0,4', 'ARM9', 'a', 'arm9', 'arm/', '0', '5', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('6', '4', '0,4', 'CORTEX-A8', 'c', 'cortexa8', 'arm/', '0', '6', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('7', '0', '0', 'DSP', 'd', 'dsp', '', '1', '7,8', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('8', '7', '0,7', 'C66', 'c', 'c66', 'dsp/', '0', '8', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('9', '0', '0', 'HPA', 'h', 'hpa', '', '1', '9,10', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_chip_category` VALUES ('10', '9', '0,9', 'PMU', 'p', 'pmu', 'hpa/', '0', '10', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_chip_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_category_data`;
CREATE TABLE `om_1_chip_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_chip_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_category_data_0`;
CREATE TABLE `om_1_chip_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_chip_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_data_0`;
CREATE TABLE `om_1_chip_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_chip_data_0
-- ----------------------------
INSERT INTO `om_1_chip_data_0` VALUES ('1', '1', '2', '<p><span style=\"font-size:14px;font-family: &#39;Arial&#39;,&#39;sans-serif&#39;\">Piccolo Microcontroller</span></p>');
INSERT INTO `om_1_chip_data_0` VALUES ('2', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Ink Mobility&nbsp;— 促进不同的应用在移动端相互通信的工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Bootstraptor — 为 web 开发者提供的 Twitter Bootstrap 模板</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Macaw&nbsp;— 可编写 语音 HTML 及简洁 CSS 的 web 设计工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">XingCloud — “一键点击”即可完成网站本地化</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">FlauntResponsive&nbsp;— 响应式设计转换工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">StatusPage.io&nbsp;— 简单的停机时间通信工具（刚刚在 Y Combinantor 推出）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">GrowthGiant&nbsp;— 连续 A/B 测试工具（尚未发布 beta 私测）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Web用户体验师Jake Rocheleau撰写了一篇文章分享他在Web开发中经常使用的网站和Web App，其中包含各类字体库、代码库、插件库、配色方案和测试工具。他同时指出，Web开发环境将慢慢转向云端。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"></p><p><br/></p>');
INSERT INTO `om_1_chip_data_0` VALUES ('3', '1', '2', '<p><a href=\"http://zanblog.b0.upaiyun.com/2014/05/614485.jpg\" data-original-title=\"\" title=\"\" class=\"cboxElement\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\"><img class=\"size-full wp-image-1081 colorbox-1080\" alt=\"乌云网的创始人方小顿\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/e7bed82bec.jpg\" width=\"400\" height=\"279\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\" id=\"OmWeb_img_43\"/></a></p><p class=\"wp-caption-text\" style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px;\">乌云网的创始人方小顿</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">正如白魔法和黑魔法一样，在黑客领域也要分“白帽子”和“黑帽子”。作为“信息警察”，方小顿在过去8年间都在扮演黑客领域中的“甘道夫”，专门和“伏地魔”对打。近期曝出的携程网“漏洞门”事件，让方小顿以及其创建的网络漏洞报告平台——乌云网再次走到台前。今年刚满27岁的方小顿称他如今已经集结了5000名分散在各个领域的白帽黑客，排查国内各大网站的安全漏洞。方小顿说，“乌云”就是云时代罩在信息小偷和互联网企业头上的一道警示咒，希望每一次拨云见雾都是网络安全的一次进步。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">　　□人物故事</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">　　自学成才的黑客达人</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">2002年，15岁的湖北小伙子方小顿考上了哈尔滨理工大学化学专业。“小时候一直对计算机很感兴趣，大学课余时间多，我就自己研究互联网技术。”在方小顿眼中，技术其实没什么，靠自学就能成专家。“当时网上有很多互联网技术教程和讨论社区，只要肯学，每个人都能成为技术高手，安全技术绝不是学校里能教出来的。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">大学四年，方小顿几乎全都在研究黑客技术。要知道，网络安全从来都是攻防一体，黑客的段位都是通过实战练出来的。所以，方小顿黑过学校的网站，自己做网络技术类的社区网站，当时研究网络技术的小团体之间经常上演技术“火拼”，而方小顿都是主力。“那时候大家互相黑来黑去地比技术，2004年前后，整个互联网还不像现在这样深入每个人的生活，网络安全还只是纯技术性的存在。后来没的黑了，我们就找一些常用的软件漏洞，发现之后告诉开发人员就觉得很有成就感。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">起初因为好玩才做的事，却为方小顿提供了第一份工作，也让他误打误撞成为了真正意义上的网络安全工程师。2006年，即将毕业的方小顿发现了一家软件公司的产品漏洞，当时这家公司服务几十万客户，通过这些客户可以辐射到上亿用户。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">“发现漏洞后我就通过互联网社区联系到公司的人，他们听了之后很好奇，邀请我到北京和他们老总聊聊。”方小顿说，“我们相谈甚欢，毕业之后我就进入这家公司，专门负责软件的安全防护工作。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">　　百度挖角变身安全专家</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">从某种意义上说，方小顿也是“黑客”，但并不是搅局者。2008年，方小顿在网络安全领域早已如鱼得水，不断有互联网公司前来挖角，而最让方小顿心动的，是百度。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">互联网公司的“码农”和“技术猿”们有一个习惯，就是“混社区”。这些大大小小的网上技术社区是中国互联网高手和黑客的集散地，这种组织极其松散，大家都以网名相称，但就是这样的网络论坛却严格地论资排辈。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">“在我们的安全社区里，只要你足够优秀，有很多人会推荐你，百度就是通过这个社区找到我的。”方小顿说，当时考虑的是，虽然在软件公司工作了两年，但还没有尝试过面对一个大公司的大平台。“因此我打算换个环境，看看自己在大平台中能不能做好安全技术。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">从2008年进入百度到2011年离开，方小顿在百度一步步做到了高级安全工程师，主要责任是抵御黑客入侵，而百度的安全团队也由最初的五六人发展成为30余人的“黑客防护墙”。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">谈到离开百度的原因，方小顿说，主要还是因为理想，想利用自己的技术为更多的互联网公司解决安全问题。“一名白帽子黑客除了要在技术方面感兴趣之外，另一点就是必须拥有一个正能量的理想。”事实上，百度的主体业务是搜索引擎，因而在整个互联网领域具有局限性，对于当时的方小顿来说，百度留给他施展的空间已极为有限。“在百度永远只能做百度的事，整个互联网除了百度还有很大的空间，于是我就想，能不能在更大的空间里做点事。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">掌门乌云一时名声大噪</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">其实，早在2010年7月，方小顿就联合新浪、360的两个白帽子工程师，一起创立了乌云网，当时创立的目的是为了解决百度以及和百度类似企业的问题。谈到“乌云”名字的来历，方小顿表示，当时云技术发展势头强劲，很多企业都在谈云的便捷、低成本，但其实以前出一个问题只影响一两个用户，使用云技术之后可能影响上千万的人。“乌云就是想告诉大家，云技术是有风险的，乌云就是一个预警。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">鉴于自己做的是得罪人的事，乌云从成立的第一天起就定位为介于白帽子和企业之间的非营利组织。2011年，刚成立一年的乌云网连续披露京东(滚动资讯)、支付宝、网易等著名互联网企业存在高危漏洞。此后，乌云更是指出支付宝2500万用户资料泄露、如家酒店开房信息泄露、腾讯7000万QQ群用户数据泄露等一系列安全问题，几乎战战告捷，一时间乌云名声大噪。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">“我们是从一个小的技术圈子里发展起来的，所以最开始只关注大的互联网公司，后来很多白帽子会提交政府部门、大型央企网站的漏洞报告，但作为第三方机构，我们很难和这些机构协调，让他们提供改进信息。”正在方小顿苦于如何解决这一问题的当口，2011年底，工信部下属“国家信息安全漏洞共享平台”的负责人主动找上门来寻求合作，希望乌云能够共享数据信息，由该平台出面推动政府、央企改进系统。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">“目前乌云的赞助方有两个：国家信息安全漏洞共享平台和广东省信息安全测评中心，他们会每年定期提供资金，基本能够覆盖我们的成本。”方小顿说，“而借助这两大平台，乌云就成为涵盖互联网公司、金融、大中型企业、政府机构网站的全行业漏洞入口。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">自称工程师不愿做商人</strong></p><p><br/></p>');
INSERT INTO `om_1_chip_data_0` VALUES ('4', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Ink Mobility&nbsp;— 促进不同的应用在移动端相互通信的工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Bootstraptor — 为 web 开发者提供的 Twitter Bootstrap 模板</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Macaw&nbsp;— 可编写 语音 HTML 及简洁 CSS 的 web 设计工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">XingCloud — “一键点击”即可完成网站本地化</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">FlauntResponsive&nbsp;— 响应式设计转换工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">StatusPage.io&nbsp;— 简单的停机时间通信工具（刚刚在 Y Combinantor 推出）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">GrowthGiant&nbsp;— 连续 A/B 测试工具（尚未发布 beta 私测）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Web用户体验师Jake Rocheleau撰写了一篇文章分享他在Web开发中经常使用的网站和Web App，其中包含各类字体库、代码库、插件库、配色方案和测试工具。他同时指出，Web开发环境将慢慢转向云端。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"a16\"  id=\"OmWeb_img_52\" src=\"http://zan.jiaye.in/member/uploadfile/201410/0bdb8d2440.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p><br/></p>');
INSERT INTO `om_1_chip_data_0` VALUES ('5', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">0大前端<a href=\"http://www.zan3.com/\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">开发工具</a></strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Ink Mobility&nbsp;— 促进不同的应用在移动端相互通信的工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Bootstraptor — 为 web 开发者提供的 Twitter Bootstrap 模板</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Macaw&nbsp;— 可编写 语音 HTML 及简洁 CSS 的 web 设计工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">XingCloud — “一键点击”即可完成网站本地化</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">FlauntResponsive&nbsp;— 响应式设计转换工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">StatusPage.io&nbsp;— 简单的停机时间通信工具（刚刚在 Y Combinantor 推出）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">GrowthGiant&nbsp;— 连续 A/B 测试工具（尚未发布 beta 私测）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Web用户体验师Jake Rocheleau撰写了一篇文章分享他在Web开发中经常使用的网站和Web App，其中包含各类字体库、代码库、插件库、配色方案和测试工具。他同时指出，Web开发环境将慢慢转向云端。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"a16\"  id=\"OmWeb_img_33\" src=\"http://zan.jiaye.in/member/uploadfile/201410/e08233e841.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">CodeVisually是一个开源项目。在它的分类目录下有各种插件、 模板、 主题和脚本程序，你可以找到很多有用的 JS 库，也为WordPress开发人员提供了框架和模板。如果你是一个jQuery框架或JavaScript 爱好者，那么你一定要经常去CodeVisually上看看，你会发现有许多新的插件能够为你的网站增添一些令人振奋的功能。同时，通过用缩略图形式显示插件也帮助你能比在Github 或其它代码库中更好的整理它们。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"a22\"  id=\"OmWeb_img_38\" src=\"http://zan.jiaye.in/member/uploadfile/201410/bee3120237.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Cmmntr是日本开发者Motoshi Goto面向Web设计中的新闻和热点问题所搭建的网站。网站中的资源主要是一些教程和插件，也包含一些很棒的Demo演示和开源项目。Jake Rocheleau说，他最喜欢Cmmntr的一点是——它将相似的资源都整合在一起，并列出了详尽的比较，例如CSS DB框架。总体来说，Cmmntr有着很高的文章和丰富的开发资源</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"3\"  id=\"OmWeb_img_41\" src=\"http://zan.jiaye.in/member/uploadfile/201410/c8999ca718.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">这项Google的网站字体资源是免费的并且兼容各个浏览器，因为只是从 Google 引入了一个字体库的 link 样式，无需担心像各个浏览器对 CSS 解析不同导致各种bug。同时，无需引入 JS，那么即使用户 PC禁止加载 JS，也不会影响 Google 字体库的使用。另外，WordPress博客可以使用WP Google Fonts插件方便的更改字体。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"4\"  id=\"OmWeb_img_50\" src=\"http://zan.jiaye.in/member/uploadfile/201410/db8a0ea211.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Jake Rocheleau认为Stack Overflow是 能够帮助网站开发者解决困难的最好的问答网站。除了用户回复意愿很强烈外，这些答案也很少会被删除，利于开发者归档和搜索。Jake Rocheleau说，通过在Google里搜索问题并加上stackoverflow.com作为关键字，可以找到许多靠谱的解决方案，他在编码中 90%的疑问都可以通过这种方式得到解答。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"5\"  id=\"OmWeb_img_55\" src=\"http://zan.jiaye.in/member/uploadfile/201410/6f16451341.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Web App——CodePen是一个云 端的Web集成开发环境。它提供了非常多的效果，也有开发者不断开放自己的demo和代码给他人使用。开发者只需选择不同的效果就可以轻松搭配出想要的网 站页面，也可以在这些Demo的基础上自己开发。它的另一个好处是——你可以将自己做的demo都以书签的形式存于CodePen中，当你像他人展示时可 以方便调用，而无需再将代码上传到服务器中。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"6\"  id=\"OmWeb_img_58\" src=\"http://zan.jiaye.in/member/uploadfile/201410/df765d7671.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">如今，越来越多的用户开始通过平板电脑和手机来查看网页，针对移动产品的网页效果测试就成了一个非常重要的领域。在iPad Peek中，你只需选择你想测试的设备（包括iPhone 4、iPhone 5和iPad的横竖两种屏幕模式），就可以在PC上查看他们在不同移动设备上的呈现效果。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"屏幕快照-2013-04-09-下午12.09.09-1024x462\"  id=\"OmWeb_img_66\" src=\"http://zan.jiaye.in/member/uploadfile/201410/1e41a94115.png\" width=\"600\" height=\"270\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Web设计师Chris Coyier的博客中有单独的一个页面——CSS snippets专门搜集那些可以被经常使用的CSS代码段，利用像Coda这样的网页编辑应用，你就可以将这些代码段归档整理。这帮助Web开发者可以节省大量的开发时间，另一个相似的工具还有Eric Meyer建立的CSS Resets，它更适合保存网页局部效果的代码。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"7\"  id=\"OmWeb_img_67\" src=\"http://zan.jiaye.in/member/uploadfile/201410/a03a1d2686.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Pictaculous是 一个思路非常<a href=\"http://www.zan3.com/\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">新颖的网站</a>，当你上传一张图片到Pictaculous时，它会帮助你选择最合适的配色方案。所以，当你设计一个新的网站，尤其是要根据一些 限定的Logo的搭建时，将它们上传到Pictaculous，会得到不错的配色参考，也方便进行各种配色方案的测试。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Spinnakr&nbsp;— A/B 测试内容工具，可向不同用户展现不同消息</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Dakwak&nbsp;— 为不同的访客提供网站的本地化版本</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Nitrous.IO&nbsp;— 快速开发环境管理即协作编程</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">这是一个专注挖掘、报道TMT领域创新性公司的科技博客，它的作者们遍布太平洋两岸，以钓者的姿态，为读者快速地寻觅下一条大鱼。　　我们不是姜太公，我们年轻、有速度;我们关注鲤鱼公司，但也不鲸鱼公司，我们大小通吃</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">转载请注明：<a href=\"http://www.zan3.com/\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">赞生博客 高端订制web开发工作组</a>&nbsp;»&nbsp;<a href=\"http://www.zan3.com/zan163.html\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">2014最好用的网站开发工具 web前端工程师必备tools</a></p><p><br/></p>');
INSERT INTO `om_1_chip_data_0` VALUES ('6', '1', '2', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">0大前端<a href=\"http://www.zan3.com/\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">开发工具</a></strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Ink Mobility&nbsp;— 促进不同的应用在移动端相互通信的工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Bootstraptor — 为 web 开发者提供的 Twitter Bootstrap 模板</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Macaw&nbsp;— 可编写 语音 HTML 及简洁 CSS 的 web 设计工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">XingCloud — “一键点击”即可完成网站本地化</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">FlauntResponsive&nbsp;— 响应式设计转换工具</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">StatusPage.io&nbsp;— 简单的停机时间通信工具（刚刚在 Y Combinantor 推出）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">GrowthGiant&nbsp;— 连续 A/B 测试工具（尚未发布 beta 私测）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Web用户体验师Jake Rocheleau撰写了一篇文章分享他在Web开发中经常使用的网站和Web App，其中包含各类字体库、代码库、插件库、配色方案和测试工具。他同时指出，Web开发环境将慢慢转向云端。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"a16\"  id=\"OmWeb_img_30\" src=\"http://zan.jiaye.in/member/uploadfile/201410/5ea4342530.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">CodeVisually是一个开源项目。在它的分类目录下有各种插件、 模板、 主题和脚本程序，你可以找到很多有用的 JS 库，也为WordPress开发人员提供了框架和模板。如果你是一个jQuery框架或JavaScript 爱好者，那么你一定要经常去CodeVisually上看看，你会发现有许多新的插件能够为你的网站增添一些令人振奋的功能。同时，通过用缩略图形式显示插件也帮助你能比在Github 或其它代码库中更好的整理它们。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"a22\"  id=\"OmWeb_img_35\" src=\"http://zan.jiaye.in/member/uploadfile/201410/b5ab1fb435.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Cmmntr是日本开发者Motoshi Goto面向Web设计中的新闻和热点问题所搭建的网站。网站中的资源主要是一些教程和插件，也包含一些很棒的Demo演示和开源项目。Jake Rocheleau说，他最喜欢Cmmntr的一点是——它将相似的资源都整合在一起，并列出了详尽的比较，例如CSS DB框架。总体来说，Cmmntr有着很高的文章和丰富的开发资源</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"3\"  id=\"OmWeb_img_45\" src=\"http://zan.jiaye.in/member/uploadfile/201410/a26853b134.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">这项Google的网站字体资源是免费的并且兼容各个浏览器，因为只是从 Google 引入了一个字体库的 link 样式，无需担心像各个浏览器对 CSS 解析不同导致各种bug。同时，无需引入 JS，那么即使用户 PC禁止加载 JS，也不会影响 Google 字体库的使用。另外，WordPress博客可以使用WP Google Fonts插件方便的更改字体。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"4\"  id=\"OmWeb_img_49\" src=\"http://zan.jiaye.in/member/uploadfile/201410/6a0427f411.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Jake Rocheleau认为Stack Overflow是 能够帮助网站开发者解决困难的最好的问答网站。除了用户回复意愿很强烈外，这些答案也很少会被删除，利于开发者归档和搜索。Jake Rocheleau说，通过在Google里搜索问题并加上stackoverflow.com作为关键字，可以找到许多靠谱的解决方案，他在编码中 90%的疑问都可以通过这种方式得到解答。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"5\"  id=\"OmWeb_img_59\" src=\"http://zan.jiaye.in/member/uploadfile/201410/1adcaa2849.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Web App——CodePen是一个云 端的Web集成开发环境。它提供了非常多的效果，也有开发者不断开放自己的demo和代码给他人使用。开发者只需选择不同的效果就可以轻松搭配出想要的网 站页面，也可以在这些Demo的基础上自己开发。它的另一个好处是——你可以将自己做的demo都以书签的形式存于CodePen中，当你像他人展示时可 以方便调用，而无需再将代码上传到服务器中。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"6\"  id=\"OmWeb_img_68\" src=\"http://zan.jiaye.in/member/uploadfile/201410/1e41a94155.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">如今，越来越多的用户开始通过平板电脑和手机来查看网页，针对移动产品的网页效果测试就成了一个非常重要的领域。在iPad Peek中，你只需选择你想测试的设备（包括iPhone 4、iPhone 5和iPad的横竖两种屏幕模式），就可以在PC上查看他们在不同移动设备上的呈现效果。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"屏幕快照-2013-04-09-下午12.09.09-1024x462\"  id=\"OmWeb_img_69\" src=\"http://zan.jiaye.in/member/uploadfile/201410/c634956941.png\" width=\"600\" height=\"270\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Web设计师Chris Coyier的博客中有单独的一个页面——CSS snippets专门搜集那些可以被经常使用的CSS代码段，利用像Coda这样的网页编辑应用，你就可以将这些代码段归档整理。这帮助Web开发者可以节省大量的开发时间，另一个相似的工具还有Eric Meyer建立的CSS Resets，它更适合保存网页局部效果的代码。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-163\" alt=\"7\"  id=\"OmWeb_img_70\" src=\"http://zan.jiaye.in/member/uploadfile/201410/672ea87650.png\" width=\"600\" height=\"350\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Pictaculous是 一个思路非常<a href=\"http://www.zan3.com/\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">新颖的网站</a>，当你上传一张图片到Pictaculous时，它会帮助你选择最合适的配色方案。所以，当你设计一个新的网站，尤其是要根据一些 限定的Logo的搭建时，将它们上传到Pictaculous，会得到不错的配色参考，也方便进行各种配色方案的测试。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Spinnakr&nbsp;— A/B 测试内容工具，可向不同用户展现不同消息</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Dakwak&nbsp;— 为不同的访客提供网站的本地化版本</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Nitrous.IO&nbsp;— 快速开发环境管理即协作编程</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">这是一个专注挖掘、报道TMT领域创新性公司的科技博客，它的作者们遍布太平洋两岸，以钓者的姿态，为读者快速地寻觅下一条大鱼。　　我们不是姜太公，我们年轻、有速度;我们关注鲤鱼公司，但也不鲸鱼公司，我们大小通吃</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">转载请注明：<a href=\"http://www.zan3.com/\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">赞生博客 高端订制web开发工作组</a>&nbsp;»&nbsp;<a href=\"http://www.zan3.com/zan163.html\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">2014最好用的网站开发工具 web前端工程师必备tools</a></p><p><br/></p>');

-- ----------------------------
-- Table structure for om_1_chip_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_extend_index`;
CREATE TABLE `om_1_chip_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_chip_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_extend_verify`;
CREATE TABLE `om_1_chip_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_chip_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_0`;
CREATE TABLE `om_1_chip_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_1`;
CREATE TABLE `om_1_chip_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_2`;
CREATE TABLE `om_1_chip_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_3`;
CREATE TABLE `om_1_chip_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_4`;
CREATE TABLE `om_1_chip_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_5`;
CREATE TABLE `om_1_chip_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_6`;
CREATE TABLE `om_1_chip_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_7`;
CREATE TABLE `om_1_chip_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_8`;
CREATE TABLE `om_1_chip_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_favorite_9`;
CREATE TABLE `om_1_chip_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_chip_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_flag`;
CREATE TABLE `om_1_chip_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_chip_flag
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_form`;
CREATE TABLE `om_1_chip_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_chip_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_html`;
CREATE TABLE `om_1_chip_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_chip_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_chip_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_index`;
CREATE TABLE `om_1_chip_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_chip_index
-- ----------------------------
INSERT INTO `om_1_chip_index` VALUES ('1', '1', '2', '9', '1413457837');
INSERT INTO `om_1_chip_index` VALUES ('2', '1', '2', '9', '1413534395');
INSERT INTO `om_1_chip_index` VALUES ('3', '1', '2', '9', '1413534433');
INSERT INTO `om_1_chip_index` VALUES ('4', '1', '2', '9', '1413534395');
INSERT INTO `om_1_chip_index` VALUES ('5', '1', '2', '9', '1413534113');
INSERT INTO `om_1_chip_index` VALUES ('6', '1', '2', '9', '1413534004');

-- ----------------------------
-- Table structure for om_1_chip_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_search`;
CREATE TABLE `om_1_chip_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_chip_search
-- ----------------------------
INSERT INTO `om_1_chip_search` VALUES ('fe9c64401c9eebb94b7d5697ee6a2fda', '0', 'a:2:{s:7:\\\"keyword\\\";s:0:\\\"\\\";s:6:\\\"module\\\";s:4:\\\"chip\\\";}', '', '3,2,4,5,6,1', '1414400456');

-- ----------------------------
-- Table structure for om_1_chip_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_tag`;
CREATE TABLE `om_1_chip_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_chip_tag
-- ----------------------------
INSERT INTO `om_1_chip_tag` VALUES ('1', '网站开发', 'wangzhankaifa', '0');
INSERT INTO `om_1_chip_tag` VALUES ('2', '工程师', 'gongchengshi', '0');
INSERT INTO `om_1_chip_tag` VALUES ('3', '最好', 'zuihao', '0');
INSERT INTO `om_1_chip_tag` VALUES ('4', '掌门人', 'zhangmenren', '0');
INSERT INTO `om_1_chip_tag` VALUES ('5', '开发者', 'kaifazhe', '0');
INSERT INTO `om_1_chip_tag` VALUES ('6', '日本', 'riben', '0');

-- ----------------------------
-- Table structure for om_1_chip_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_chip_verify`;
CREATE TABLE `om_1_chip_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_chip_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development`;
CREATE TABLE `om_1_development` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_development
-- ----------------------------
INSERT INTO `om_1_development` VALUES ('1', '1', '如何逐步成为前端工程师？', '', '工程师,如何', '一、关于前端工程师那些事Web前端开发工程师是一个很新的职业，在国内乃至国际上真正开始受到重视的时间不超过7年。Web前端开发是从网页制作演变而来的，名称上有很明显的时代特征。在互联网的演化进程中，网页制作...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/development/index.php?c=show&id=1', '0', '127.0.0.1', '1413523545', '1413523545', '0');
INSERT INTO `om_1_development` VALUES ('2', '1', '为什么越简单的技术对于开发人员越难', 'http://zan.jiaye.in/member/uploadfile/ueditor/201410/15b451b4fe.jpg', '技术,开发', '简单 != 容易从Amazon Web服务到 AngularJS之类的web框架，便利性 驱动 着世界上最好的技术。但是，更加快速地、变得有效率的“便利性”，经常伴随着一个隐藏的价格标签：为了变得真正有效率，你将不得不花些功夫。...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/development/index.php?c=show&id=2', '0', '127.0.0.1', '1413523635', '1413523635', '0');
INSERT INTO `om_1_development` VALUES ('3', '1', '来自星星的你 one zan', 'http://zan.jiaye.in/member/uploadfile/ueditor/201410/73b434e566.png', '', '人生在世可不是这样的，只要帮上一次，就会有两次，三次，继续求人帮忙，这才是人生在世，还有，有机会报答的日子，是不会有的。人生可没有足够让人类懂事的 那么漫长的时间。...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/development/index.php?c=show&id=3', '0', '127.0.0.1', '1413523713', '1413523734', '0');

-- ----------------------------
-- Table structure for om_1_development_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_0`;
CREATE TABLE `om_1_development_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_1`;
CREATE TABLE `om_1_development_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_2`;
CREATE TABLE `om_1_development_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_3`;
CREATE TABLE `om_1_development_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_4`;
CREATE TABLE `om_1_development_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_5`;
CREATE TABLE `om_1_development_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_6`;
CREATE TABLE `om_1_development_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_7`;
CREATE TABLE `om_1_development_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_8`;
CREATE TABLE `om_1_development_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_buy_9`;
CREATE TABLE `om_1_development_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_development_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_category`;
CREATE TABLE `om_1_development_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_development_category
-- ----------------------------
INSERT INTO `om_1_development_category` VALUES ('1', '0', '0', '栏目一', 'l', 'lanmuyi', '', '0', '1', '22', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:0:{}s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_development_category` VALUES ('2', '0', '0', '栏目二', 'l', 'lanmuer', '', '0', '2', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_development_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_category_data`;
CREATE TABLE `om_1_development_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_development_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_category_data_0`;
CREATE TABLE `om_1_development_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_development_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_data_0`;
CREATE TABLE `om_1_development_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '概述',
  `hardware` mediumtext COMMENT '硬件参数',
  `software` mediumtext COMMENT '软件资源',
  `industry` mediumtext COMMENT '行业应用',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_development_data_0
-- ----------------------------
INSERT INTO `om_1_development_data_0` VALUES ('1', '1', '1', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑;\"><span style=\"margin: 0px; padding: 0px; font-size: large;\">一、关于前端工程师那些事</span></span></strong><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">Web前端开发工程师是一个很新的职业，在国内乃至国际上真正开始受到重视的时间不超过7年。Web前端开发是从网页制作演变而来的，名称上有很明显的时代特征。在互联网的演化进程中，网页制作是Web 1.0时代的产物，那时网站的主要内容都是静态的，用户使用网站的行为也以浏览为主。</span><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">2005年以后，互联网进入Web 2.0时代，各种类似桌面软件的Web应用大量涌现，网页不再只是承载单一的文字和图片，各种丰富媒体让网页的内容更加生动，网页上软件化的交互形式为用户提供了更好的使用体验。</span><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">Web前端开发技术包括三个要素：HTML、CSS和JavaScript，但随着RIA的流行和普及，Flash/Flex、Silverlight、XML和服务器端语言也是前端开发工程师应该掌握的。Web前端开发工程师既要与上游的交互设计师、视觉设计师和产品经理沟通，又要与下游的服务器端工程师沟通，需要掌握的技能非常多。这就从知识的广度上对Web前端开发工程师提出了要求。</span><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">前端开发的入门门槛其实非常低，与服务器端语言先慢后快的学习曲线相比，前端开发的学习曲线是先快后慢。所以，对于 从事IT工作的人来说，前端开发是个不错的切入点。也正因为如此，前端开发领域有很多自学成“才”的同行，但大多数人都停留在会用的阶段，因为后面的学习 曲线越来越陡峭，每前进一步都很难。[1]</span></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑;\"><span style=\"margin: 0px; padding: 0px; font-size: large;\">二、前端工程师知识结构</span></span></strong><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">目前针对前端工程师知识结构，没有统一的答案。这也是许多从事前端工作的人头疼的事。现在多数前端工程师基本自学出身，因此具体学习路线，需要根据个人能力与实际需要决定。对前端工程师，有一定了解有必要。下图是张克军老师作的一张知识结构图，目前任职豆瓣前端工程师。</span><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><img id=\"OmWeb_img_10\" class=\"zoom colorbox-2129\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/1ef21fa4ff.gif\" alt=\"\" width=\"909\" height=\"557\" border=\"0\" data-bd-imgshare-binded=\"1\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">[2]</span><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">&lt;!- -好庞大知识系统，瞬间给跪了有木有！–!&gt;</span></p>', '<p><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">这么丰富的知识结构，我们初学者从哪二下手。相信大家不会傻得把这些一起学了个遍，再跑去找工作。入行，你暂时需要掌握一些就行，之后就是：实践+学习+总结，最后水到渠成。下图展示了知乎上知友提的问题，是第一个也是赞同最多的回答。问题是：“合格的前端工程师知识结构？”。</span><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><img id=\"OmWeb_img_11\" class=\"zoom colorbox-2129\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/2b17bb5303.png\" alt=\"\" width=\"708\" height=\"588\" border=\"0\" data-bd-imgshare-binded=\"1\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"margin: 0px; padding: 0px; font-family: 微软雅黑;\"><span style=\"margin: 0px; padding: 0px; font-size: large;\">三、书籍选择</span></span></strong><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">HTML、CSS：《深入浅出HTML、XHTML、CSS》《CSS禅意花园》；</span><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">Javascript：《javascript语言精粹》（英文：javascript：the good parts)、《javascript高级程序设计》作者Nicholas C. Zakas ；</span></p>');
INSERT INTO `om_1_development_data_0` VALUES ('2', '1', '1', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-1665\" alt=\"\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/15b451b4fe.jpg\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\" id=\"OmWeb_img_12\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">简单 != 容易</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">从Amazon Web服务到&nbsp;<a href=\"http://readwrite.com/2014/02/06/angular-backbone-ember-best-javascript-framework-for-you\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">AngularJS之类的web框架</a>，便利性&nbsp;<a href=\"http://readwrite.com/2012/12/20/cloud-convenience-checkmates-concerns\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">驱动</a>&nbsp;着世界上最好的技术。但是，更加快速地、变得有效率的“便利性”，经常伴随着一个隐藏的价格标签：为了变得真正有效率，你将不得不花些功夫。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">伟大的技术经常貌似简单，新手们直觉上不需要太多努力就可以“学习”。当人们认为他们已经掌握了这门技术、而他们真正做的所有工作相当于是一个“hello world”程序的等价物时，问题就出现了。在你归咎于这个工具之前，你往往需要投入时间以正确地使用它。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">关于AngularJS的“复杂感受”</strong></p><p><br/></p>', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">让我们用AngularJS做例子。AngularJS是一个&nbsp;<a href=\"http://en.wikipedia.org/wiki/Web_application_framework\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">web应用程序框架</a>——JavaScript代码类库、模板和其它软件的集合，目的是让开发人员更加容易地开发动态网页或web app。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">正如&nbsp;<a href=\"http://anandmanisankar.com/posts/angularjs-best-parts/\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">Anand Mani Sankar建议</a>&nbsp;的，问题在于AngularJS入门容易，简单掩盖了框架的力量：</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">[AngularJS]通过抽象了很多内部的复杂度，而只暴露程序开发人员关心的东东，大大简化了应用程序的开发过程。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">听起来这是一项伟大的工作，它也让新手们在完成第一个“hello world”应用程序后，就觉得掌握了这套系统：</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">AngularJS旅程会产生复杂的感受。学习曲线与其它JS框架有着很大的不同。进入的门槛非常低。但是，当你开始深入的时候，学习曲线突然变得陡升了。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Sankar然后引用了&nbsp;<a href=\"http://www.bennadel.com/blog/2439-my-experience-with-angularjs-the-super-heroic-javascript-mvw-framework.htm\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">Ben Nadel关于AngularJS旅程的幽默描述</a>：</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><img class=\"colorbox-1665\" title=\"为什么越简单的技术对于开发人员越难 - 第2张  | IT江湖\" alt=\"为什么越简单的技术对于开发人员越难 - 第2张  | IT江湖\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/2b2f662809.png\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\" id=\"OmWeb_img_13\"/></p><p><br/></p>', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">ularJS实际上相当难，没有给出太多专门的例子来解释为什么是这样子，至少超过了“因为我更喜欢jQuery。”</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">太容易失败了</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">很多最好的技术都是这样。它刚开始时简单，不过如果你想真正掌握它，你将不得不投入大量时间。一些人开始势头很好，发现了复杂，然后抱怨这门技术没有永远地保持出乎意料的好。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">对不起，真正的技术不是那样运转的。它总是需要努力，如果不能以正确的方式运行，就会失败。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><a href=\"http://readwrite.com/2013/03/25/when-nosql-databases-are-good-for-you\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">看看NoSQL数据库</a>，我在这个世界花了太多的时间。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">NoSQL对于新手而言，无论是MongoDB、HBase还是Cassandra，喜欢&nbsp;<a href=\"http://stackoverflow.com/questions/3856222/whats-the-attraction-of-schemaless-database-systems\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">兜售它的无模式特性（schema-less）</a>。关系型数据库的旧世界需要僵硬的模式而且狂热！在NoSQL的新世界，定义数据结构的模式消失了，DBA们消失了，规则消失了！真简单！！</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">当然，这完全是胡扯。正如我的同事<a href=\"http://www.kamsky.org/stupid-tricks-with-mongodb/nosql-nodba\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">&nbsp;Asya Kamsky喜欢说的</a>，“NoSQL != NoDBA.”（NoSQL与“没有数据库管理员”不是一回事儿。）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">NoSQL 不代表“没有DBA”。如果有人试图这样说服你，他们很可能要向你推销什么。这不意味着你有一个具有“DBA”头衔的团队或人员——然而，如果你有一个数 据库，无论它是关系型，还是非关系型，那么一定有人担任“DBA”角色——如果他们不知道他们做的事情，那么在问题出现之前，一大堆工作将不会完成或被考 虑到。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">浏览关于NoSQL数据库、AngularJS或大部分你喜欢的技术方面的文章，我保证，如果不是大部分，也有很多是由那些感觉受欺骗的人写的，技术没有按照这种用户想要的方式运行，因为他们没有真正的投入。的确，有时候是技术失败了。多数情况则是令人触目惊心的。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">但是，当技术没有神奇地减掉我们需要的工作时，我们常常在抱怨。</p><p><br/></p>', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">杠杆越少，幸福越多？</strong></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">从这两者得到好处的一种方式就是通过可管理的服务，比如Amazon web服务的&nbsp;<a href=\"http://docs.aws.amazon.com/redshift/latest/mgmt/welcome.html\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">Redshift</a>。Redshift是一个运行在云端的、完全管理的数据仓库。“完全管理”意味着它更容易使用，但是它也意味着用户失去了他们可能在Teradata或另一种企业数据仓库中的一些把手和杠杆（the knobs and levers）。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">然而，这恰恰就是问题的关键。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">正如AWS数据科学的总经理Matt Wood最近告诉我的，Redshift和其它AWS服务致力于通过移除复杂让用户易于使用。给用户更少的“杠杆”意味着AWS也给他们更少的失败方式。当然，技巧是在产品简单与用户控制之间找到平衡。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">例如，Airbnb对Redshift刚开始是如何容易感到&nbsp;<a href=\"http://nerds.airbnb.com/redshift-performance-cost/\" target=\"_blank\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">洋洋得意</a>，但是随后就需要一些折衷（和投入）：</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">我 们面临的第一个挑战就是模式迁移。即使Redshift是基于Postgres 8.0的，“微妙的”不同仍然足够大，强迫你用Redshift的方式工作。我们尽量自动化模式迁移，但是问题比我们最初期望的更大，我们认为它超出了试 验的范围。在Redshift里，索引，时间戳类型，数组，不被支持，这样你需要在你的模式里排除它们，或找到变通方案。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">无论如何，Airbnb投入了努力，看到了至少五倍的性能提升和巨大的成本节约。起步容易，但是也值得继续投入。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">也有很多伟大的软件，它们看起来使用简单。为了走出对于任何伟大技术的新手状态，你将不得不有目的地使用，你将不得不投入时间和努力来掌握它。</p><p><br/></p>');
INSERT INTO `om_1_development_data_0` VALUES ('3', '1', '1', '<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>人生在世可不是这样的，只要帮上一次，就会有两次，三次，继续求人帮忙，这才是人生在世，还有，有机会报答的日子，是不会有的。人生可没有足够让人类懂事的 那么漫长的时间。</p></li></ul><p><img class=\"attachment- wp-post-image colorbox-2118\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/73b434e566.png\" alt=\"float:left配合position: relative\" width=\"620\" height=\"285\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\" id=\"OmWeb_img_14\"/></p>', '<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>人生在世可不是这样的，只要帮上一次，就会有两次，三次，继续求人帮忙，这才是人生在世，还有，有机会报答的日子，是不会有的。人生可没有足够让人类懂事的 那么漫长的时间。</p></li></ul><p><br/></p>', '<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>人生在世可不是这样的，只要帮上一次，就会有两次，三次，继续求人帮忙，这才是人生在世，还有，有机会报答的日子，是不会有的。人生可没有足够让人类懂事的 那么漫长的时间。</p></li></ul><p><br/></p>', '<p><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">嫉妒是人类感情当中属于最低等的，笨拙幼稚的感情，因为这是对方的爱意，有可能会向着他人的恐怖而产生的感情，与愤怒差不多性质的这种感情，会从幼儿期开始萌芽，看到妈妈抱着别人的孩子高兴的模样，就会耍脾气，吐出吃完的食物，吸允手指的行为，流水列子了！我们通常称之为退化，就撒un长大成人，自尊感弱的人爱上别人，就会经历这种退化的过程，怕对方被某人夺走，做出笨拙的行为，和言辞，以此表达嫉妒的感情！嫉妒是最低级最幼稚的感情！只有缺乏自信而且自卑的人才会有！所以我从来没有那种感觉</span></p>');

-- ----------------------------
-- Table structure for om_1_development_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_extend_index`;
CREATE TABLE `om_1_development_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_development_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_extend_verify`;
CREATE TABLE `om_1_development_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_development_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_0`;
CREATE TABLE `om_1_development_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_1`;
CREATE TABLE `om_1_development_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_2`;
CREATE TABLE `om_1_development_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_3`;
CREATE TABLE `om_1_development_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_4`;
CREATE TABLE `om_1_development_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_5`;
CREATE TABLE `om_1_development_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_6`;
CREATE TABLE `om_1_development_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_7`;
CREATE TABLE `om_1_development_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_8`;
CREATE TABLE `om_1_development_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_favorite_9`;
CREATE TABLE `om_1_development_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_development_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_flag`;
CREATE TABLE `om_1_development_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_development_flag
-- ----------------------------
INSERT INTO `om_1_development_flag` VALUES ('1', '2', '1', '1');

-- ----------------------------
-- Table structure for om_1_development_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_form`;
CREATE TABLE `om_1_development_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_development_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_html`;
CREATE TABLE `om_1_development_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_development_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_development_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_index`;
CREATE TABLE `om_1_development_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_development_index
-- ----------------------------
INSERT INTO `om_1_development_index` VALUES ('1', '1', '1', '9', '1413523545');
INSERT INTO `om_1_development_index` VALUES ('2', '1', '1', '9', '1413523635');
INSERT INTO `om_1_development_index` VALUES ('3', '1', '1', '9', '1413523713');

-- ----------------------------
-- Table structure for om_1_development_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_search`;
CREATE TABLE `om_1_development_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_development_search
-- ----------------------------
INSERT INTO `om_1_development_search` VALUES ('fe9c64401c9eebb94b7d5697ee6a2fda', '0', 'a:2:{s:7:\\\"keyword\\\";s:0:\\\"\\\";s:6:\\\"module\\\";s:4:\\\"chip\\\";}', '', '3,2,1', '1414400456');

-- ----------------------------
-- Table structure for om_1_development_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_tag`;
CREATE TABLE `om_1_development_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_development_tag
-- ----------------------------
INSERT INTO `om_1_development_tag` VALUES ('1', '工程师', 'gongchengshi', '0');
INSERT INTO `om_1_development_tag` VALUES ('2', '如何', 'ruhe', '0');
INSERT INTO `om_1_development_tag` VALUES ('3', '技术', 'jishu', '0');
INSERT INTO `om_1_development_tag` VALUES ('4', '开发', 'kaifa', '0');

-- ----------------------------
-- Table structure for om_1_development_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_development_verify`;
CREATE TABLE `om_1_development_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_development_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_form`;
CREATE TABLE `om_1_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `table` varchar(50) NOT NULL COMMENT '表名',
  `setting` text COMMENT '配置信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='表单模型表';

-- ----------------------------
-- Records of om_1_form
-- ----------------------------
INSERT INTO `om_1_form` VALUES ('1', '在线下单', 'onorder', 'a:4:{s:4:\\\"post\\\";s:1:\\\"1\\\";s:4:\\\"code\\\";s:1:\\\"1\\\";s:4:\\\"send\\\";s:13:\\\"root@zan3.com\\\";s:8:\\\"template\\\";s:18:\\\"nihaoasdasd{title}\\\";}');

-- ----------------------------
-- Table structure for om_1_form_onorder
-- ----------------------------
DROP TABLE IF EXISTS `om_1_form_onorder`;
CREATE TABLE `om_1_form_onorder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `inputip` varchar(30) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `num` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inputtime` (`inputtime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='在线下单表单表';

-- ----------------------------
-- Records of om_1_form_onorder
-- ----------------------------
INSERT INTO `om_1_form_onorder` VALUES ('1', 'dc', '127.0.0.1', '1413510778', '0', '2', 'moen', '15000003444', 'qq@qq.com', '上海摩恩', null);
INSERT INTO `om_1_form_onorder` VALUES ('2', 'ss', '127.0.0.1', '1413879976', '0', '1', 'as', '15000003499', 'Q@qq.com', '摩恩', null);
INSERT INTO `om_1_form_onorder` VALUES ('3', 'asdas', '127.0.0.1', '1414404032', '0', '1', 'asdas', '15000003499', '2@11.com', 'qwqe', 'qweqw');
INSERT INTO `om_1_form_onorder` VALUES ('4', 'fsdf', '127.0.0.1', '1414404102', '0', '1', 'dfdf', '15000003499', 'sdf@13.com', 'asda', 'asdffas');
INSERT INTO `om_1_form_onorder` VALUES ('5', '豆腐干地方', '127.0.0.1', '1414405638', '0', '多个', '212', '15000003498', 'asd@163.com', '啊实打实', '阿斯顿');
INSERT INTO `om_1_form_onorder` VALUES ('6', 'asda是', '127.0.0.1', '1414406241', '0', '112', '啊沙发上', '1500003499', 'asd@163.com', 'asda是', '啊实打实');
INSERT INTO `om_1_form_onorder` VALUES ('7', 'asda是', '127.0.0.1', '1414407207', '0', '1', '1515', '15000003488', 'asdfas@163.com', 'asda是', '阿斯顿');
INSERT INTO `om_1_form_onorder` VALUES ('8', 'asda是', '127.0.0.1', '1414407667', '0', '1', '1515', '15000003488', 'asdfas@163.com', 'asda是', '阿斯顿');
INSERT INTO `om_1_form_onorder` VALUES ('9', 'asda是', '127.0.0.1', '1414407686', '0', '1', '1515', '15000003488', 'asdfas@163.com', 'asda是', '阿斯顿');
INSERT INTO `om_1_form_onorder` VALUES ('10', 'asda是', '127.0.0.1', '1414407740', '0', '1', '1515', '15000003488', 'asdfas@163.com', 'asda是', '阿斯顿');
INSERT INTO `om_1_form_onorder` VALUES ('11', 'asda是', '127.0.0.1', '1414407799', '0', '1', '1515', '15000003488', 'asdfas@163.com', 'asda是', '阿斯顿');
INSERT INTO `om_1_form_onorder` VALUES ('12', 'asda是', '127.0.0.1', '1414407869', '0', '112', '啊沙发上', '1500003499', 'asd@163.com', 'asda是', '啊实打实');
INSERT INTO `om_1_form_onorder` VALUES ('13', 'asda是', '127.0.0.1', '1414407959', '0', '112', '啊沙发上', '1500003499', 'asd@163.com', 'asda是', '啊实打实');
INSERT INTO `om_1_form_onorder` VALUES ('14', 'asda是', '127.0.0.1', '1414408527', '0', '1', '1515', '15000003488', 'asdfas@163.com', 'asda是', '阿斯顿');
INSERT INTO `om_1_form_onorder` VALUES ('15', 'asdas', '127.0.0.1', '1414478864', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('16', 'asdas', '127.0.0.1', '1414479015', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('17', 'asdas', '127.0.0.1', '1414479039', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('18', 'asdas', '127.0.0.1', '1414479111', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('19', 'asdas', '127.0.0.1', '1414479126', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('20', 'asdas', '127.0.0.1', '1414479158', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('21', 'asdas', '127.0.0.1', '1414479176', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('22', 'asdas', '127.0.0.1', '1414479452', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('23', 'asdas', '127.0.0.1', '1414479488', '0', '15', '1515', '151000003499', 'asd@163.com', 'asdas', 'asdas');
INSERT INTO `om_1_form_onorder` VALUES ('24', 'adsd', '127.0.0.1', '1414480367', '0', 'asd', 'as', '1500003488', 'sdas@163.com', 'sadas', 'asdas');

-- ----------------------------
-- Table structure for om_1_midea
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea`;
CREATE TABLE `om_1_midea` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_midea
-- ----------------------------
INSERT INTO `om_1_midea` VALUES ('1', '1', '视频名称1', '4', '', '视频名称1地址1', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/midea/index.php?c=show&id=1', '0', '127.0.0.1', '1413456738', '1413535701', '0');
INSERT INTO `om_1_midea` VALUES ('2', '1', '5K视网膜屏iMac官方介绍视频中文字幕', '71', '中文字幕,视网膜', '5K视网膜屏iMac官方介绍视频中文字幕', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/midea/index.php?c=show&id=2', '0', '127.0.0.1', '1413535750', '1413535786', '0');
INSERT INTO `om_1_midea` VALUES ('3', '1', '苹果现场： iMac （Retina）发布（中文版）', '72', '中文版,苹果', '', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/midea/index.php?c=show&id=3', '0', '127.0.0.1', '1413536059', '1413536059', '0');
INSERT INTO `om_1_midea` VALUES ('4', '1', '2014 苹果秋季新品发布会总结视频', '73', '秋季新品,发布会,苹果', '', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/midea/index.php?c=show&id=4', '0', '127.0.0.1', '1413536185', '1413536185', '0');
INSERT INTO `om_1_midea` VALUES ('5', '1', 'Retina 革命来袭，5K iMac 登场', '', '', '', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/midea/index.php?c=show&id=5', '0', '127.0.0.1', '1413536260', '1413536260', '0');

-- ----------------------------
-- Table structure for om_1_midea_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_0`;
CREATE TABLE `om_1_midea_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_1`;
CREATE TABLE `om_1_midea_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_2`;
CREATE TABLE `om_1_midea_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_3`;
CREATE TABLE `om_1_midea_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_4`;
CREATE TABLE `om_1_midea_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_5`;
CREATE TABLE `om_1_midea_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_6`;
CREATE TABLE `om_1_midea_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_7`;
CREATE TABLE `om_1_midea_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_8`;
CREATE TABLE `om_1_midea_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_buy_9`;
CREATE TABLE `om_1_midea_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_midea_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_category`;
CREATE TABLE `om_1_midea_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_midea_category
-- ----------------------------
INSERT INTO `om_1_midea_category` VALUES ('1', '0', '0', '视频中心', 's', 'shipinzhongxin', '', '0', '1', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_midea_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_category_data`;
CREATE TABLE `om_1_midea_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_midea_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_category_data_0`;
CREATE TABLE `om_1_midea_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_midea_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_data_0`;
CREATE TABLE `om_1_midea_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_midea_data_0
-- ----------------------------
INSERT INTO `om_1_midea_data_0` VALUES ('1', '1', '1', '<p>视频名称1地址1</p><p><br/></p><p><embed v type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://www.tudou.com/l/QNHNEE2DRM0/&iid=211225271&resourceId=0_04_05_99/v.swf\" width=\"100%\" height=\"280\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p><p><br/></p>');
INSERT INTO `om_1_midea_data_0` VALUES ('2', '1', '1', '<p><embed v type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://www.tudou.com/l/QNHNEE2DRM0/&iid=211224107&resourceId=0_04_05_99/v.swf\" width=\"100%\" height=\"280\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p><h1 class=\"kw\" id=\"videoKw\" title=\"5K视网膜屏iMac官方介绍视频中文字幕\" style=\"margin: 20px 0px 5px; padding: 0px; font-size: 20px; font-weight: 400; max-width: 80%; line-height: 27px; color: rgb(64, 64, 64); overflow: hidden; text-overflow: ellipsis; font-family: 微软雅黑, helvetica, arial, sans-serif; background-color: rgb(246, 247, 251);\">5K视网膜屏iMac官方介绍视频中文字幕</h1><p><br/></p>');
INSERT INTO `om_1_midea_data_0` VALUES ('3', '1', '1', '<p><embed v type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://www.tudou.com/l/QNHNEE2DRM0/&iid=211245976&resourceId=0_04_05_99/v.swf\" width=\"420\" height=\"280\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p>');
INSERT INTO `om_1_midea_data_0` VALUES ('4', '1', '1', '<p><embed v type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://www.tudou.com/l/QNHNEE2DRM0/&iid=211226927&resourceId=0_04_05_99/v.swf\" width=\"420\" height=\"280\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p>');
INSERT INTO `om_1_midea_data_0` VALUES ('5', '1', '1', '<p><embed v type=\"application/x-shockwave-flash\" class=\"edui-faked-video\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" src=\"http://www.tudou.com/l/QNHNEE2DRM0/&iid=211219272&resourceId=0_04_05_99/v.swf\" width=\"420\" height=\"280\" wmode=\"transparent\" play=\"true\" loop=\"false\" menu=\"false\" allowscriptaccess=\"never\" allowfullscreen=\"true\"/></p>');

-- ----------------------------
-- Table structure for om_1_midea_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_extend_index`;
CREATE TABLE `om_1_midea_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_midea_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_extend_verify`;
CREATE TABLE `om_1_midea_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_midea_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_0`;
CREATE TABLE `om_1_midea_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_1`;
CREATE TABLE `om_1_midea_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_2`;
CREATE TABLE `om_1_midea_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_3`;
CREATE TABLE `om_1_midea_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_4`;
CREATE TABLE `om_1_midea_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_5`;
CREATE TABLE `om_1_midea_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_6`;
CREATE TABLE `om_1_midea_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_7`;
CREATE TABLE `om_1_midea_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_8`;
CREATE TABLE `om_1_midea_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_favorite_9`;
CREATE TABLE `om_1_midea_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_midea_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_flag`;
CREATE TABLE `om_1_midea_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_midea_flag
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_form`;
CREATE TABLE `om_1_midea_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_midea_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_html`;
CREATE TABLE `om_1_midea_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_midea_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_midea_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_index`;
CREATE TABLE `om_1_midea_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_midea_index
-- ----------------------------
INSERT INTO `om_1_midea_index` VALUES ('1', '1', '1', '9', '1413456738');
INSERT INTO `om_1_midea_index` VALUES ('2', '1', '1', '9', '1413535750');
INSERT INTO `om_1_midea_index` VALUES ('3', '1', '1', '9', '1413536059');
INSERT INTO `om_1_midea_index` VALUES ('4', '1', '1', '9', '1413536185');
INSERT INTO `om_1_midea_index` VALUES ('5', '1', '1', '9', '1413536260');

-- ----------------------------
-- Table structure for om_1_midea_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_search`;
CREATE TABLE `om_1_midea_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_midea_search
-- ----------------------------
INSERT INTO `om_1_midea_search` VALUES ('fe9c64401c9eebb94b7d5697ee6a2fda', '0', 'a:2:{s:7:\\\"keyword\\\";s:0:\\\"\\\";s:6:\\\"module\\\";s:4:\\\"chip\\\";}', '', '5,4,3,2,1', '1414400456');
INSERT INTO `om_1_midea_search` VALUES ('a5983202dfe901626771367769d7abe0', '0', 'a:2:{s:7:\\\"keyword\\\";s:1:\\\"5\\\";s:6:\\\"module\\\";s:0:\\\"\\\";}', '5', '5,2', '1414400721');

-- ----------------------------
-- Table structure for om_1_midea_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_tag`;
CREATE TABLE `om_1_midea_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_midea_tag
-- ----------------------------
INSERT INTO `om_1_midea_tag` VALUES ('1', '中文字幕', 'zhongwenzimu', '0');
INSERT INTO `om_1_midea_tag` VALUES ('2', '视网膜', 'shiwangmo', '0');
INSERT INTO `om_1_midea_tag` VALUES ('3', '中文版', 'zhongwenban', '0');
INSERT INTO `om_1_midea_tag` VALUES ('4', '苹果', 'pingguo', '0');
INSERT INTO `om_1_midea_tag` VALUES ('5', '秋季新品', 'qiujixinpin', '0');
INSERT INTO `om_1_midea_tag` VALUES ('6', '发布会', 'fabuhui', '0');

-- ----------------------------
-- Table structure for om_1_midea_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_midea_verify`;
CREATE TABLE `om_1_midea_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_midea_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_navigator
-- ----------------------------
DROP TABLE IF EXISTS `om_1_navigator`;
CREATE TABLE `om_1_navigator` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级id',
  `pids` text COMMENT '所有上级id数据项',
  `type` tinyint(1) unsigned NOT NULL COMMENT '导航类型',
  `name` varchar(255) NOT NULL COMMENT '导航名称',
  `title` varchar(255) NOT NULL COMMENT 'seo标题',
  `url` varchar(255) NOT NULL COMMENT '导航地址',
  `thumb` varchar(255) NOT NULL COMMENT '图片标示',
  `show` tinyint(1) unsigned NOT NULL COMMENT '显示',
  `mark` varchar(255) DEFAULT NULL COMMENT '类型标示',
  `extend` tinyint(1) unsigned DEFAULT NULL COMMENT '是否继承下级',
  `child` tinyint(1) unsigned NOT NULL COMMENT '是否有下级',
  `childids` text COMMENT '所有下级数据项',
  `target` tinyint(1) unsigned NOT NULL COMMENT '是否站外链接',
  `displayorder` tinyint(3) NOT NULL COMMENT '显示顺序',
  PRIMARY KEY (`id`),
  KEY `list` (`id`,`type`,`show`,`displayorder`),
  KEY `mark` (`mark`),
  KEY `extend` (`extend`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='网站导航表';

-- ----------------------------
-- Records of om_1_navigator
-- ----------------------------
INSERT INTO `om_1_navigator` VALUES ('13', '0', '0', '2', '上海佳晔电子技术有限公司', 'OmWeb高级版功能介绍和视频演示', 'http://www.omooo.com/shipin/', '', '1', '', '0', '0', '13', '1', '0');
INSERT INTO `om_1_navigator` VALUES ('14', '0', '0', '2', '安装', '系统安装视频演示', 'http://www.omooo.com/', '', '1', '', '0', '0', '14', '1', '0');
INSERT INTO `om_1_navigator` VALUES ('15', '0', '0', '2', '模块操作', '模块的使用演示', 'http://www.omooo.com/', '', '1', '', '0', '0', '15', '1', '0');
INSERT INTO `om_1_navigator` VALUES ('16', '0', '0', '2', '微信', '高级版微信基本操作', 'http://www.omooo.com/shipin/', '', '1', '', '0', '0', '16', '1', '0');
INSERT INTO `om_1_navigator` VALUES ('17', '0', '0', '2', '比较', '大众版与高级版的不同之处', 'http://www.omooo.com/', '', '1', '', '0', '0', '17', '1', '0');
INSERT INTO `om_1_navigator` VALUES ('18', '0', '0', '1', '第一张幻灯', '', '#', '23', '1', '', '0', '0', '18', '1', '0');
INSERT INTO `om_1_navigator` VALUES ('19', '0', '0', '1', '第二张幻灯', '', '#', '24', '1', '', '0', '0', '19', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('33', '0', '0', '1', '第三张', '', '#', '25', '1', '', '0', '0', '33', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('34', '0', '0', '1', '第四张', '', '#', '26', '1', '', '0', '0', '34', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('32', '0', '0', '4', '摩恩网络企业服务平台', '', 'http://www.omooo.com/', '', '1', '', '0', '0', '32', '1', '0');
INSERT INTO `om_1_navigator` VALUES ('95', '0', '0', '3', '内页banner', '', '#', '27', '1', '', '0', '0', '95', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('35', '0', '0', '0', '关于佳晔', '', 'http://zan.jiaye.in/index.php?c=page&amp;id=8', '', '1', '', '0', '1', '35,43,44,45,46,47,67,68,69,70,71,72,73,74,75,76,77,78', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('36', '0', '0', '0', '产品中心', '', '#', '', '1', '', '0', '1', '36,48,49,50,51,52,53', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('37', '0', '0', '0', '解决方案', '', '#', '', '1', '', '0', '1', '37,54,55,56,79,80', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('38', '0', '0', '0', '芯片类型', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=1', '', '1', '', '0', '1', '38,57,58,59,60,61,62,63,64,65,66,81,82,86,83,84,85,87,88,89,90,91,92,93,94', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('39', '0', '0', '0', '开发工具', '', '#', '', '1', '', '0', '0', '39', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('40', '0', '0', '0', '在线下单', '', 'http://zan.jiaye.in/index.php?c=form_1_1', '', '1', '', '0', '0', '40', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('41', '0', '0', '0', '人才招聘', '', 'http://zan.jiaye.in/index.php?c=page&amp;id=13', '', '1', '', '0', '0', '41', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('42', '0', '0', '0', '联系我们', '', 'http://zan.jiaye.in/index.php?c=page&amp;id=12', '', '1', '', '0', '0', '42', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('43', '35', '0,35', '0', '关于佳晔', '', '#', '51', '1', '', '0', '1', '43,44,45,46,47', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('44', '43', '0,35,43', '0', '公司简介', '', 'http://zan.jiaye.in/index.php?c=page&amp;id=9', '74', '1', '', '0', '0', '44', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('45', '43', '0,35,43', '0', '企业文化', '', 'http://zan.jiaye.in/index.php?c=page&amp;id=10', '', '1', '', '0', '0', '45', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('46', '43', '0,35,43', '0', '企业辉煌', '', '#', '', '1', '', '0', '0', '46', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('67', '35', '0,35', '0', '佳晔百年', '', '#', '', '1', '', '0', '1', '67,68,69,70', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('47', '43', '0,35,43', '0', '公司福利', '', '#', '', '1', '', '0', '0', '47', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('48', '36', '0,36', '0', '产品中心一', '', '#', '', '1', '', '0', '1', '48,49,50', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('49', '48', '0,36,48', '0', '仿真器', '', 'http://zan.jiaye.in/product/index.php?c=category&amp;id=1', '', '1', '', '0', '0', '49', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('50', '48', '0,36,48', '0', '开发板', '', 'http://zan.jiaye.in/product/index.php?c=category&amp;id=2', '', '1', '', '0', '0', '50', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('51', '36', '0,36', '0', '产品中心二', '', '#', '', '1', '', '0', '1', '51,52,53', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('52', '51', '0,36,51', '0', '仿真器二', '', 'http://zan.jiaye.in/product/index.php?c=category&amp;id=1', '', '1', '', '0', '0', '52', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('53', '51', '0,36,51', '0', '开发板二', '', 'http://zan.jiaye.in/product/index.php?c=category&amp;id=2', '', '1', '', '0', '0', '53', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('54', '37', '0,37', '0', '解决方案一', '', '#', '', '1', '', '0', '1', '54,55,56', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('55', '54', '0,37,54', '0', 'sua解决方案', '', 'http://zan.jiaye.in/solution/index.php?c=show&amp;id=1', '', '1', '', '0', '0', '55', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('79', '37', '0,37', '0', '解决方案二', '', '#', '', '1', '', '0', '1', '79,80', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('56', '54', '0,37,54', '0', 'bbs解决方案', '', 'http://zan.jiaye.in/solution/index.php?c=show&amp;id=2', '', '1', '', '0', '0', '56', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('57', '38', '0,38', '0', 'MCU', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=1', '', '1', '', '0', '1', '57,58,59', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('58', '57', '0,38,57', '0', 'C2000', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=2', '', '1', '', '0', '0', '58', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('59', '57', '0,38,57', '0', 'GP32', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=3', '', '1', '', '0', '0', '59', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('60', '38', '0,38', '0', 'ARM', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=4', '', '1', '', '0', '1', '60,61,62', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('61', '60', '0,38,60', '0', 'ARM9', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=5', '', '1', '', '0', '0', '61', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('62', '60', '0,38,60', '0', 'CORTEX-A8', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=6', '', '1', '', '0', '0', '62', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('63', '38', '0,38', '0', 'DSP', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=7', '', '1', '', '0', '1', '63,64', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('64', '63', '0,38,63', '0', ' C66', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=8', '', '1', '', '0', '0', '64', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('65', '38', '0,38', '0', 'HPA', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=9', '', '1', '', '0', '1', '65,66', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('66', '65', '0,38,65', '0', 'PMU', '', 'http://zan.jiaye.in/chip/index.php?c=category&amp;id=10', '', '1', '', '0', '0', '66', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('68', '67', '0,35,67', '0', '佳晔历史', '', '#', '56', '1', '', '0', '0', '68', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('69', '67', '0,35,67', '0', '佳晔荣誉', '', '#', '', '1', '', '0', '0', '69', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('70', '67', '0,35,67', '0', '董事长致辞', '', '#', '', '1', '', '0', '0', '70', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('71', '35', '0,35', '0', '职员广场', '', '#', '', '1', '', '0', '1', '71,72,73,74', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('72', '71', '0,35,71', '0', '优秀职员', '', '#', '', '1', '', '0', '0', '72', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('73', '71', '0,35,71', '0', '员工彩照', '', '#', '', '1', '', '0', '0', '73', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('74', '71', '0,35,71', '0', '员工荣誉', '', '#', '', '1', '', '0', '0', '74', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('75', '35', '0,35', '0', '部门介绍', '', '#', '', '1', '', '0', '1', '75,76,77,78', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('76', '75', '0,35,75', '0', '开发部门', '', '#', '', '1', '', '0', '0', '76', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('77', '75', '0,35,75', '0', '设计部门', '', '#', '', '1', '', '0', '0', '77', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('78', '75', '0,35,75', '0', '市场部门', '', '#', '', '1', '', '0', '0', '78', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('80', '79', '0,37,79', '0', 'aa解决方案', '', '#', '', '1', '', '0', '0', '80', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('81', '38', '0,38', '0', 'BBSut', '', '#', '', '1', '', '0', '1', '81,82,86', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('82', '81', '0,38,81', '0', 'BBSutone', '', '#', '', '1', '', '0', '0', '82', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('83', '38', '0,38', '0', 'MCU2', '', '#', '', '1', '', '0', '1', '83,84,85', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('84', '83', '0,38,83', '0', 'mec322', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=1', '', '1', '', '0', '0', '84', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('85', '83', '0,38,83', '0', 'wwwqe', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=1', '', '1', '', '0', '0', '85', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('86', '81', '0,38,81', '0', 'asdfgsgdf', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=1', '', '1', '', '0', '0', '86', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('87', '38', '0,38', '0', 'VBSDR', '', '#', '', '1', '', '0', '1', '87,88,89', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('88', '87', '0,38,87', '0', 'GGRE-1', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=2', '', '1', '', '0', '0', '88', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('89', '87', '0,38,87', '0', 'VBSDR-6', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=2', '', '1', '', '0', '0', '89', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('90', '38', '0,38', '0', 'HTYTR', '', '#', '', '1', '', '0', '1', '90,91,92', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('91', '90', '0,38,90', '0', 'YHFGF_002', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=3', '', '1', '', '0', '0', '91', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('92', '90', '0,38,90', '0', 'FSFWGS', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=3', '', '1', '', '0', '0', '92', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('93', '38', '0,38', '0', 'GRWD', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=2', '', '1', '', '0', '1', '93,94', '0', '0');
INSERT INTO `om_1_navigator` VALUES ('94', '93', '0,38,93', '0', 'HHKHF1', '', 'http://zan.jiaye.in/chip/index.php?c=show&amp;id=2', '', '1', '', '0', '0', '94', '0', '0');

-- ----------------------------
-- Table structure for om_1_news
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news`;
CREATE TABLE `om_1_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_news
-- ----------------------------
INSERT INTO `om_1_news` VALUES ('1', '1', '2微小型1A及 4A降压升压稳压器助力延长电池在狭小空间的使用寿命', '', '稳压器,电池,空间,延长', '2微小型1A及 4A降压升压稳压器助力延长电池在狭小空间的使用寿命', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/news/index.php?c=show&id=1', '0', '127.0.0.1', '1413455923', '1413455923', '0');
INSERT INTO `om_1_news` VALUES ('2', '1', '春在路上，一路有你', '', '一路有你', '春在路上，一路有你春在路上，一路有你春在路上，一路有你春在路上，一路有你春在路上，一路有你春在路上，一路有你', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/news/index.php?c=show&id=2', '0', '127.0.0.1', '1413524925', '1413524925', '0');
INSERT INTO `om_1_news` VALUES ('3', '1', '春在路上，一路有你2222', '', '一路有你', '春在路上，一路有你2222春在路上，一路有你2222春在路上，一路有你2222春在路上，一路有你2222春在路上，一路有你2222春在路上，一路有你2222', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/news/index.php?c=show&id=3', '0', '127.0.0.1', '1413524952', '1413524952', '0');
INSERT INTO `om_1_news` VALUES ('4', '1', '青春在路上，一路有你', '', '一路有你,青春', '我觉得年轻的时候吃点苦狼狈不堪，然后被人看不起是个屌丝，挺好的一件事，所有的青春痘在路上，都在麦田里面，都是在那些背街小巷里面，都是被打的满脸是血的挺好的。一定要先被这个社会揍一顿，然后才有机会成为一...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/news/index.php?c=show&id=4', '0', '127.0.0.1', '1413524968', '1413524968', '0');
INSERT INTO `om_1_news` VALUES ('5', '1', '50个技巧提高PHP网站的执行效率', '', 'PHP网站,技巧', '帕雷托法则明确指出，20％的因导致80％的果。又称为80-20法则。因此，要做好代码优化，切记因小失大！好多条都中枪了，所以转载下来有空就看一看，有空要把代码都优化一遍！（目前暂时不知道原文作者）1、用单引号代...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/news/index.php?c=show&id=5', '0', '127.0.0.1', '1413524987', '1413524987', '0');
INSERT INTO `om_1_news` VALUES ('6', '1', '只用轻量级开发软件前端工程师必备软件notepad++常用插件安装插件教程', 'http://zan.jiaye.in/member/uploadfile/ueditor/201410/342a49f761.png', '工程师,开发,软件', '顺着潮流走，为没有用notepad++这些轻量级的编辑器，一直沿用着Sublime Text，由Max 系统延伸而来的编辑器，此乃神器，不得不关目相看！后来有时候看着Sublime Text有点累了 ，视觉疲劳了，就用了下notepad++，没有...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/news/index.php?c=show&id=6', '0', '127.0.0.1', '1413525008', '1413525008', '0');

-- ----------------------------
-- Table structure for om_1_news_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_0`;
CREATE TABLE `om_1_news_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_1`;
CREATE TABLE `om_1_news_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_2`;
CREATE TABLE `om_1_news_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_3`;
CREATE TABLE `om_1_news_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_4`;
CREATE TABLE `om_1_news_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_5`;
CREATE TABLE `om_1_news_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_6`;
CREATE TABLE `om_1_news_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_7`;
CREATE TABLE `om_1_news_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_8`;
CREATE TABLE `om_1_news_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_buy_9`;
CREATE TABLE `om_1_news_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_news_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category`;
CREATE TABLE `om_1_news_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_news_category
-- ----------------------------
INSERT INTO `om_1_news_category` VALUES ('1', '0', '0', '新闻资讯', 'x', 'xinwenzixun', '', '0', '1', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_news_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category_data`;
CREATE TABLE `om_1_news_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_news_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_category_data_0`;
CREATE TABLE `om_1_news_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_news_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_data_0`;
CREATE TABLE `om_1_news_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_news_data_0
-- ----------------------------
INSERT INTO `om_1_news_data_0` VALUES ('1', '1', '1', '<p><span style=\"color: rgb(34, 34, 34); font-family: Consolas, &#39;Lucida Console&#39;, monospace; font-size: 12px; white-space: pre-wrap; background-color: rgb(255, 255, 255);\">2微小型1A及 4A降压升压稳压器助力延长电池在狭小空间的使用寿命</span></p>');
INSERT INTO `om_1_news_data_0` VALUES ('2', '1', '1', '<h1 class=\"article-title\" style=\"margin: 5px 0px; padding: 0px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 20px; white-space: normal;\"><a href=\"http://www.zan3.com/zan1107.html\" style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); text-decoration: none;\">春在路上，一路有你</a></h1><h1 class=\"article-title\" style=\"margin: 5px 0px; padding: 0px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 20px; white-space: normal;\"><a href=\"http://www.zan3.com/zan1107.html\" style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); text-decoration: none;\">春在路上，一路有你</a></h1><h1 class=\"article-title\" style=\"margin: 5px 0px; padding: 0px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 20px; white-space: normal;\"><a href=\"http://www.zan3.com/zan1107.html\" style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); text-decoration: none;\">春在路上，一路有你</a></h1><h1 class=\"article-title\" style=\"margin: 5px 0px; padding: 0px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 20px; white-space: normal;\"><a href=\"http://www.zan3.com/zan1107.html\" style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); text-decoration: none;\">春在路上，一路有你</a></h1><h1 class=\"article-title\" style=\"margin: 5px 0px; padding: 0px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 20px; white-space: normal;\"><a href=\"http://www.zan3.com/zan1107.html\" style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); text-decoration: none;\">春在路上，一路有你</a></h1><h1 class=\"article-title\" style=\"margin: 5px 0px; padding: 0px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 20px; white-space: normal;\"><a href=\"http://www.zan3.com/zan1107.html\" style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); text-decoration: none;\">春在路上，一路有你</a></h1><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('3', '1', '1', '<p>春在路上，一路有你2222春在路上，一路有你2222春在路上，一路有你2222春在路上，一路有你2222春在路上，一路有你2222春在路上，一路有你2222</p>');
INSERT INTO `om_1_news_data_0` VALUES ('4', '1', '1', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">我觉得年轻的时候吃点苦狼狈不堪，然后被人看不起是个屌丝，挺好的一件事，所有的青春痘在路上，都在麦田里面，都是在那些背街小巷里面，都是被打的满脸是血的挺好的。一定要先被这个社会揍一顿，然后才有机会成为一个真正的男人和女人！我觉得那些一生下来就是高富帅的人，挺悲催的，连苦都没吃过，人生活在还有什么意义！</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">转载请注明：<a href=\"http://www.zan3.com/\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">赞生博客 高端订制web开发工作组</a>&nbsp;»&nbsp;<a href=\"http://www.zan3.com/zan1107.html\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">青春在路上，一路有你</a></p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('5', '1', '1', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">帕雷托法则明确指出，20％的因导致80％的果。又称为80-20法则。因此，要做好代码优化，切记因小失大！<span id=\"more-342\" style=\"margin: 0px; padding: 0px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">好多条都中枪了，所以转载下来有空就看一看，有空要把代码都优化一遍！（目前暂时不知道原文作者）</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">1、用单引号代替双引号来包含字符串，这样做会更快一些。因为PHP会在双引号包围的字符串中搜寻变量， 单引号则不会，注意：只有echo能这么做，它是一种可以把多个字符串当作参数的”函数”(译注：PHP手册中说echo是语言结构，不是真正的函数，故 把函数加上了双引号)。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">2、如果能将类的方法定义成static，就尽量定义成static，它的速度会提升将近4倍。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">3、$row[&#39;id&#39;] 的速度是$row的7倍。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">4、echo 比 print 快，并且使用echo的多重参数(译注：指用逗号而不是句点)代替字符串连接，比如echo $str1,$str2。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">5、在执行for循环之前确定最大循环数，不要每循环一次都计算最大值，最好运用foreach代替。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">6、注销那些不用的变量尤其是大数组，以便释放内存。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">7、尽量避免使用__get，__set，__autoload。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">8、require_once()代价昂贵。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">9、include文件时尽量使用绝对路径，因为它避免了PHP去include_path里查找文件的速度，解析操作系统路径所需的时间会更少。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">10、如果你想知道脚本开始执行(译注：即服务器端收到客户端请求)的时刻，使用</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">$_SERVER[&#39;REQUEST_TIME&#39;]</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">要好于</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">time()</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">11、函数代替正则表达式完成相同功能。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">12、str_replace函数比preg_replace函数快，但strtr函数的效率是str_replace函数的四倍。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">13、如果一个字符串替换函数，可接受数组或字符作为参数，并且参数长度不太长，那么可以考虑额外写一段替换代码，使得每次传递参数是一个字符，而不是只写一行代码接受数组作为查询和替换的参数。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">14、使用选择分支语句(译注：即switch case)好于使用多个if，else if语句。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">15、用@屏蔽错误消息的做法非常低效，极其低效。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">16、打开apache的mod_deflate模块，可以提高网页的浏览速度。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">17、数据库连接当使用完毕时应关掉，不要用长连接。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">18、错误消息代价昂贵。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">19、在方法中递增局部变量，速度是最快的。几乎与在函数中调用局部变量的速度相当。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">20、递增一个全局变量要比递增一个局部变量慢2倍。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">21、递增一个对象属性(如：$this-&gt;prop++)要比递增一个局部变量慢3倍。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">22、递增一个未预定义的局部变量要比递增一个预定义的局部变量慢9至10倍。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">23、仅定义一个局部变量而没在函数中调用它，同样会减慢速度(其程度相当于递增一个局部变量)。PHP大概会检查看是否存在全局变量。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">24、方法调用看来与类中定义的方法的数量无关，因为我(在测试方法之前和之后都)添加了10个方法，但性能上没有变化。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">25、派生类中的方法运行起来要快于在基类中定义的同样的方法。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">26、调用带有一个参数的空函数，其花费的时间相当于执行7至8次的局部变量递增操作。类似的方法调用所花费的时间接近于15次的局部变量递增操作。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">27、Apache解析一个PHP脚本的时间要比解析一个静态HTML页面慢2至10倍。尽量多用静态HTML页面，少用脚本。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">28、除非脚本可以缓存，否则每次调用时都会重新编译一次。引入一套PHP缓存机制通常可以提升25%至100%的性能，以免除编译开销。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">29、尽量做缓存，可使用memcached。memcached是一款高性能的内存对象缓存系统，可用来加速动态Web应用程序，减轻数据库负载。对运算码 (OP code)的缓存很有用，使得脚本不必为每个请求做重新编译。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">30、当操作字符串并需要检验其长度是否满足某种要求时，你想当然地会使用strlen()函数。此函数执行起来相当快，因为它不做任何计算， 只返回在zval 结构(C的内置数据结构，用于存储PHP变量)中存储的已知字符串长度。但是，由于strlen()是函数，多多少少会有些慢，因为函数调用会经过诸多步 骤，如字母小写化(译注：指函数名小写化，PHP不区分函数名大小写)、哈希查找，会跟随被调用的函数一起执行。在某些情况下，你可以使用isset() 技巧加速执行你的代码。</p><p><br/></p>');
INSERT INTO `om_1_news_data_0` VALUES ('6', '1', '1', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">顺着潮流走，为没有用notepad++这些轻量级的编辑器，一直沿用着Sublime Text，由Max 系统延伸而来的编辑器，此乃神器，不得不关目相看！</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">后来有时候看着Sublime Text有点累了 ，视觉疲劳了，就用了下notepad++，没有这么强大的功能，甚是伤心，后来发现notepad+也是可以按照许多插件机制了，于是找了一下有什么插件</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">，哈哈 令我大吃一惊，在Sublime Text有的插件，notepad++也有！这下有戏了！于是开始用其了notepad++这个轻量级的编辑器！赞生比较喜欢用轻量级的东西，什么IDE啊都一边去玩去，卡的要死，还不实用！</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">下面介绍一下notepad++如何安装插件</p><p><a href=\"http://zanblog.b0.upaiyun.com/2014/05/2014-05-03_160624.png\" data-original-title=\"\" title=\"\" class=\"cboxElement\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\"><img class=\" wp-image-965  colorbox-964\" alt=\"notepad 常用插件\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/342a49f761.png\" width=\"800\" height=\"761\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\" id=\"OmWeb_img_17\"/></a></p><p class=\"wp-caption-text\" style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px;\">notepad 常用插件</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p><a href=\"http://zanblog.b0.upaiyun.com/2014/05/2014-05-03_161139.png\" data-original-title=\"\" title=\"\" class=\"cboxElement\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\"><img class=\" wp-image-966  colorbox-964\" alt=\"notepad 常用插件\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/08fec95510.png\" width=\"800\" height=\"650\" data-pinit=\"registered\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\" id=\"OmWeb_img_18\"/></a></p><p class=\"wp-caption-text\" style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px;\">notepad 常用插件</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">终于可以按照插件了 ！看l这么多插件，到底要安装哪个插件呢？</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">下面赞生介绍几款比较喜欢的插件吧！</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">第一个肯定是 emmet 这个强大的插件啦！</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">可惜在安装的时候会提示错误！那是因为Emmet需要 Python Script 的支持，因此这两款插件必须同时安装才能使用。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">做一个项目，涉及到大量的HTML、CSS代码的编写，手动写代码效率实在是低下。于是想搜索一下，有没有Notepad++插件可以支持自动生成的，果不其然还真有。Emmet，这款神器其实就是 Zen Coding 的升级版，它可以极大的提高代码编写的效率，并提供了一种非常简练的语法规则，立刻生成对应的 HTML 结构或者 CSS 代码，同时还有多种实用的功能帮助进行前端开发。<br style=\"margin: 0px; padding: 0px;\"/>Emmet支持多种编辑器，如Sublime Text 3，TextMate 1.x，Eclipse/Aptana，Espresso，Notepad++等</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">Explorer</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Explorer是文件浏览插件，可以快速的定位当前正在编辑的文件的位置，支持在搜索目录下文件的内容(Find in files)。收藏夹功能可以保存经常使用的目录或文件。</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">Compare</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Compare, 文件对比插件，可以进行简单快速的对比，不过进行复杂点的对比，我一般用WinMerge。</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">DBGp</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">DBGp客户端插件，一般与xDebug一起用来远程调试PHP程序。</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">TagsView</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; font-family: arial;\">可以列出当前文档的全局变量，函数列表等，方便查找定位函数，变量等。&nbsp;TagsView，文档的Class, 属性, 方法列表。比另一个叫做FunctionList的插件更好用</span></p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">NppFtp</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">NppFTP, FTP客户端,你懂的。</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">RegEx Helper</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; font-family: arial;\">RegEx Helper，在文档的中匹配正则表达式，可以用来测试正则表达式</span></p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">JSON Viewer</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">JSON Viewer,显示文档中选定JSON的结构。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">NppAutoIndent</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">NppAutoIndent, 自动缩进。</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">TextFX</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">Notepad++插件TextFX &nbsp;Characters是一款默认安装的插件，由于功能强大，被编程爱好者认为是最好的Notepad++插件，</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">几个常用命令功能：</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">1. 删除程序空行<br style=\"margin: 0px; padding: 0px;\"/>选择相应的文本<br style=\"margin: 0px; padding: 0px;\"/>点击TextFX —&gt; TextFX Edit —&gt; Delete Blank Lines<br style=\"margin: 0px; padding: 0px;\"/>点击TextFX —&gt; TextFX Edit —&gt; Delete Surplus Blank Lines</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">2. 为代码增加行号<br style=\"margin: 0px; padding: 0px;\"/>选择要增加行号的文本(选择时会提示“No text selected”)<br style=\"margin: 0px; padding: 0px;\"/>点击TextFX —&gt; TextFX Tools —&gt; Insert Line Numbers</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">3. 删除程序行号或者首字<br style=\"margin: 0px; padding: 0px;\"/>选择相应的文本<br style=\"margin: 0px; padding: 0px;\"/>点击TextFX —&gt; TextFX Tools —&gt; Delete Line Numbers or First word</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">4. 整理xml文本格式。<br style=\"margin: 0px; padding: 0px;\"/>这个功能不错，可以很快将一行文本整理成规范的xml文件。(这个功能用来处理blogger的xml文档很不错，我自己的文档经过无数次的编辑已经乱得不成样子，经过这样一整理，可读性大大提高。)<br style=\"margin: 0px; padding: 0px;\"/>选中所有文本<br style=\"margin: 0px; padding: 0px;\"/>点击TextFX—&gt;HTML Tidy—&gt;Tidy: Reindent XML<br style=\"margin: 0px; padding: 0px;\"/>同样在处理HTML文件，也有类似功能。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">5. 改变字符大小写<br style=\"margin: 0px; padding: 0px;\"/>选择相应的文本<br style=\"margin: 0px; padding: 0px;\"/>点击TextFX —&gt; TextFX Characters, 可以选择如下几种形式：<br style=\"margin: 0px; padding: 0px;\"/>UPPER CASE 全部大写<br style=\"margin: 0px; padding: 0px;\"/>lower case 全部小写<br style=\"margin: 0px; padding: 0px;\"/>Proper Case 首字大写<br style=\"margin: 0px; padding: 0px;\"/>Sentense case 句子模式<br style=\"margin: 0px; padding: 0px;\"/>iNVERT cASE 首字小写，其他大写</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">6. 去掉文本中的HTML元素<br style=\"margin: 0px; padding: 0px;\"/>选择HTML元素<br style=\"margin: 0px; padding: 0px;\"/>点击TextFX —&gt; TextFX Convert —&gt; Strip HTML tags table tabs</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">7. 转换为HTML实体<br style=\"margin: 0px; padding: 0px;\"/>即把“&lt;”转换成“&amp;lt;”、把“&gt;”转换成 “&amp;gt;”。（可以用来轻松为blogger的文章插入代码。）<br style=\"margin: 0px; padding: 0px;\"/>选择相应的文本<br style=\"margin: 0px; padding: 0px;\"/>点击TextFX —&gt; TextFX Convert —&gt; Encode HTML (&amp;&lt;&gt;”)</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">File Switcher</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">一个快速切换窗口的工具，支持通过输入文件名，路径或者tab index来查找切换，可以用来替换默认的Ctrl + Tab。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">Finger Text</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">标签代码替换和文本自动完成插件，编辑器配合这个功能可以有效地提升代码的书写速度，提高自己的工作效率，例如我输入if然后按Tab键将会把if替换成一个完整的if结构，可以极大的提高效率，当然具体怎么替换是可以配置的。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><h2 style=\"margin: 20px -20px 20px -24px; padding: 10px 20px 9px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 18px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 18px; border-left-width: 4px; border-left-style: solid; border-left-color: rgb(66, 139, 202); white-space: normal; background-color: rgb(251, 251, 251);\">Task List</h2><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">自动扫描当前文档，将所有”TODO:”开头的注释都找出来，列在右边的面板中，双击可以跳转该行。这和Eclipse里的TODO功能很相似，便于标记查找没有完成的工作。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">好了 赞生就介绍到这里 ，小伙伴 快去安装一下您喜欢的插件吧！</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">&nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">转载请注明：<a href=\"http://www.zan3.com/\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">赞生博客 高端订制web开发工作组</a>&nbsp;»&nbsp;<a href=\"http://www.zan3.com/zan964.html\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">只用轻量级开发软件前端工程师必备软件notepad++常用插件安装插件教程</a></p><p><br/></p>');

-- ----------------------------
-- Table structure for om_1_news_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_extend_index`;
CREATE TABLE `om_1_news_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_news_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_extend_verify`;
CREATE TABLE `om_1_news_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_news_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_0`;
CREATE TABLE `om_1_news_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_1`;
CREATE TABLE `om_1_news_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_2`;
CREATE TABLE `om_1_news_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_3`;
CREATE TABLE `om_1_news_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_4`;
CREATE TABLE `om_1_news_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_5`;
CREATE TABLE `om_1_news_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_6`;
CREATE TABLE `om_1_news_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_7`;
CREATE TABLE `om_1_news_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_8`;
CREATE TABLE `om_1_news_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_favorite_9`;
CREATE TABLE `om_1_news_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_news_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_flag`;
CREATE TABLE `om_1_news_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_news_flag
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_form`;
CREATE TABLE `om_1_news_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_news_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_html`;
CREATE TABLE `om_1_news_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_news_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_news_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_index`;
CREATE TABLE `om_1_news_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_news_index
-- ----------------------------
INSERT INTO `om_1_news_index` VALUES ('1', '1', '1', '9', '1413455923');
INSERT INTO `om_1_news_index` VALUES ('2', '1', '1', '9', '1413524925');
INSERT INTO `om_1_news_index` VALUES ('3', '1', '1', '9', '1413524952');
INSERT INTO `om_1_news_index` VALUES ('4', '1', '1', '9', '1413524968');
INSERT INTO `om_1_news_index` VALUES ('5', '1', '1', '9', '1413524987');
INSERT INTO `om_1_news_index` VALUES ('6', '1', '1', '9', '1413525008');

-- ----------------------------
-- Table structure for om_1_news_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_search`;
CREATE TABLE `om_1_news_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_news_search
-- ----------------------------
INSERT INTO `om_1_news_search` VALUES ('ebd2a2f01061dd53d6d092236e4513ff', '0', 'a:2:{s:7:\\\"keyword\\\";s:2:\\\"50\\\";s:6:\\\"module\\\";s:4:\\\"news\\\";}', '50', '5', '1414399277');
INSERT INTO `om_1_news_search` VALUES ('fe9c64401c9eebb94b7d5697ee6a2fda', '0', 'a:2:{s:7:\\\"keyword\\\";s:0:\\\"\\\";s:6:\\\"module\\\";s:4:\\\"chip\\\";}', '', '6,5,4,3,2,1', '1414400456');
INSERT INTO `om_1_news_search` VALUES ('a5983202dfe901626771367769d7abe0', '0', 'a:2:{s:7:\\\"keyword\\\";s:1:\\\"5\\\";s:6:\\\"module\\\";s:0:\\\"\\\";}', '5', '5', '1414400721');

-- ----------------------------
-- Table structure for om_1_news_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_tag`;
CREATE TABLE `om_1_news_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_news_tag
-- ----------------------------
INSERT INTO `om_1_news_tag` VALUES ('1', '稳压器', 'wenyaqi', '0');
INSERT INTO `om_1_news_tag` VALUES ('2', '电池', 'dianshi', '0');
INSERT INTO `om_1_news_tag` VALUES ('3', '空间', 'kongjian', '0');
INSERT INTO `om_1_news_tag` VALUES ('4', '延长', 'yanchang', '0');
INSERT INTO `om_1_news_tag` VALUES ('5', '一路有你', 'yiluyouni', '0');
INSERT INTO `om_1_news_tag` VALUES ('6', '青春', 'qingchun', '0');
INSERT INTO `om_1_news_tag` VALUES ('7', 'PHP网站', 'phpwangzhan', '0');
INSERT INTO `om_1_news_tag` VALUES ('8', '技巧', 'jiqiao', '0');
INSERT INTO `om_1_news_tag` VALUES ('9', '工程师', 'gongchengshi', '0');
INSERT INTO `om_1_news_tag` VALUES ('10', '开发', 'kaifa', '0');
INSERT INTO `om_1_news_tag` VALUES ('11', '软件', 'ruanjian', '0');

-- ----------------------------
-- Table structure for om_1_news_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_news_verify`;
CREATE TABLE `om_1_news_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_news_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_page
-- ----------------------------
DROP TABLE IF EXISTS `om_1_page`;
CREATE TABLE `om_1_page` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(20) NOT NULL COMMENT '模块dir',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(255) NOT NULL COMMENT '单页名称',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL COMMENT '是否有子类',
  `childids` varchar(255) NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `title` varchar(255) NOT NULL COMMENT 'seo标题',
  `keywords` varchar(255) NOT NULL COMMENT 'seo关键字',
  `description` varchar(255) NOT NULL COMMENT 'seo描述',
  `content` mediumtext COMMENT '单页内容',
  `attachment` text COMMENT '附件信息',
  `template` varchar(30) NOT NULL COMMENT '模板文件',
  `urlrule` smallint(5) unsigned DEFAULT NULL COMMENT 'url规则id',
  `urllink` varchar(255) NOT NULL COMMENT 'url外链',
  `getchild` tinyint(1) unsigned NOT NULL COMMENT '将下级第一个菜单作为当前菜单',
  `show` tinyint(1) unsigned NOT NULL COMMENT '是否显示在菜单',
  `url` varchar(255) NOT NULL COMMENT 'url地址',
  `setting` mediumtext NOT NULL COMMENT '自定义内容',
  `displayorder` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mid` (`module`),
  KEY `pid` (`pid`),
  KEY `show` (`show`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of om_1_page
-- ----------------------------
INSERT INTO `om_1_page` VALUES ('12', '', '11', '0,11', '联系我们', 'lianxiwomenc', 'lianxiwomen/', '0', '12', '', '', '', '', '<p><span style=\"font-size: 18px; color: rgb(79, 97, 40);\">总部：</span><br/></p><p><br/></p><p><img src=\"http://zan.jiaye.in/member/index.php?c=api&m=thumb&id=3&width=870&height=170&water=1\" title=\"7558bc4409.jpg\" alt=\"map.jpg\" id=\"OmWeb_img_3\"/></p><p><br/></p><p><br/></p><p>总部地址：</p><p>地址：上海市长宁区定西路1100号辽油大厦2楼B座，200050</p><p>电话：021-62523762、021-62523763</p><p>传真：021-62517801</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p><br/></p><p><span style=\"font-size: 16px; color: rgb(79, 97, 40);\">各办：</span></p><p><span style=\"font-size: 16px; color: rgb(79, 97, 40);\"><br/></span></p><p><br/></p><p>上海总部：</p><p>地址：上海市长宁区定西路1100号辽油大厦2楼B座，200050</p><p>电话：021-62523762、021-62523763</p><p>传真：021-62517801</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>深圳办事处：</p><p>地址：深圳市福田区滨河大道9003号湖北大厦南区8D，510848</p><p>电话：0755-83661490/91/92</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>广州办事处：</p><p>地址：广州市天河区龙口东路342-356号天诚广场C1栋28层2810房，510000</p><p>电话：020-38762315</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>珠海办事处：</p><p>地址：珠海市香洲区凤凰南路1166号尚都百货1510室，519099</p><p>电话：0756-2218890</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>武汉办事处：</p><p>地址：武汉市东湖开发区康桥小区4栋2单元1002号，430073</p><p>电话：027-87638558</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>杭州办事处：</p><p>地址：杭州市西湖区学院路中国科学院杭州科技园802室，310012</p><p>电话：0571-87356720/21</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>南京办事处：</p><p>地址：南京市白下区中山东路198号龙台国际大厦1605室，210002</p><p>电话：025-86981011/12</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>苏州办事处：</p><p>地址：苏州市工业园区澳韵花园1幢602室，215000</p><p>电话：0512-62723372</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>厦门办事处：</p><p>地址：厦门市思明区洪文一里33号402室，361008</p><p>电话：0592-5053903</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>成都办事处：</p><p>地址：成都市青羊区青龙街27号钱江铂金城2号楼10层20室，610031</p><p>电话：028-86282040</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p><span style=\"font-size: 16px; color: rgb(79, 97, 40);\"><br/></span><br/></p><p><br/></p>', '', 'page.html', '0', '', '1', '1', 'http://zan.jiaye.in/index.php?c=page&id=12', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('11', '', '0', '0', '联系我们', 'lianxiwomen', '', '1', '11,12,13,14', '', '', '', '', '<p><span style=\"font-size: 18px; color: rgb(79, 97, 40);\">总部：</span><br/></p><p><br/></p><p><img src=\"http://zan.jiaye.in/member/index.php?c=api&m=thumb&id=3&width=870&height=170&water=1\" title=\"7558bc4409.jpg\" alt=\"map.jpg\" id=\"OmWeb_img_3\"/></p><p><br/></p><p><br/></p><p>总部地址：</p><p>地址：上海市长宁区定西路1100号辽油大厦2楼B座，200050</p><p>电话：021-62523762、021-62523763</p><p>传真：021-62517801</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p><br/></p><p><span style=\"font-size: 16px; color: rgb(79, 97, 40);\">各办：</span></p><p><span style=\"font-size: 16px; color: rgb(79, 97, 40);\"><br/></span></p><p></p><p>上海总部：</p><p>地址：上海市长宁区定西路1100号辽油大厦2楼B座，200050</p><p>电话：021-62523762、021-62523763</p><p>传真：021-62517801</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>深圳办事处：</p><p>地址：深圳市福田区滨河大道9003号湖北大厦南区8D，510848</p><p>电话：0755-83661490/91/92</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>广州办事处：</p><p>地址：广州市天河区龙口东路342-356号天诚广场C1栋28层2810房，510000</p><p>电话：020-38762315</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>珠海办事处：</p><p>地址：珠海市香洲区凤凰南路1166号尚都百货1510室，519099</p><p>电话：0756-2218890</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>武汉办事处：</p><p>地址：武汉市东湖开发区康桥小区4栋2单元1002号，430073</p><p>电话：027-87638558</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>杭州办事处：</p><p>地址：杭州市西湖区学院路中国科学院杭州科技园802室，310012</p><p>电话：0571-87356720/21</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>南京办事处：</p><p>地址：南京市白下区中山东路198号龙台国际大厦1605室，210002</p><p>电话：025-86981011/12</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>苏州办事处：</p><p>地址：苏州市工业园区澳韵花园1幢602室，215000</p><p>电话：0512-62723372</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>厦门办事处：</p><p>地址：厦门市思明区洪文一里33号402室，361008</p><p>电话：0592-5053903</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p>________________________________________</p><p>成都办事处：</p><p>地址：成都市青羊区青龙街27号钱江铂金城2号楼10层20室，610031</p><p>电话：028-86282040</p><p>邮箱：sales@serialsystemsd.com（销售）</p><p>邮箱：support@serialsystemsd.com（技术支持）</p><p><span style=\"font-size: 16px; color: rgb(79, 97, 40);\"><br/></span><br/></p><p><br/></p>', '', 'page.html', '0', '', '1', '1', 'http://zan.jiaye.in/index.php?c=page&id=11', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('10', '', '8', '0,8', '企业文化', 'qiyewenhua', 'guanyujiaye/', '0', '10', '', '', '', '', '<p><img src=\"http://zan.jiaye.in/member/index.php?c=api&m=thumb&id=2&width=870&height=170&water=1\" title=\"企业文化\" alt=\"企业文化\" id=\"OmWeb_img_2\" width=\"870\" height=\"170\" border=\"0\" vspace=\"0\" style=\"width: 870px; height: 170px;\"/></p><p><br/></p><p>公司文化：实时的技术，实时的服务，实时的联系和拜访，实时的反馈，实时的发布和更新</p><p><br/></p><p>经营理念：厚德同心，自强志远，业精酬勤</p><p><br/></p><p>愿景目标：致力于成为国内受人尊敬的嵌入式技术领先的自主产品厂商和芯片代理商</p><p><br/></p><p>公司使命：给客户提供优质服务，帮助客户更有竞争力；保证员工利益，带领全体成员共同发展</p><p><br/></p><p>经营方针：实时，创新，品质；和客户及员工共同成长</p><p><br/></p><p>人才观念：吸引人才，发挥人才，尊重人才</p><p><br/></p><p>产品方针：实时的技术，坚持产业引导</p>', '', 'page.html', '0', '', '1', '1', 'http://zan.jiaye.in/index.php?c=page&id=10', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('9', '', '8', '0,8', '公司简介', 'gongsijianjie', 'guanyujiaye/', '0', '9', '', '', '', '', '<p><img src=\"http://zan.jiaye.in/member/index.php?c=api&m=thumb&id=1&width=870&height=170&water=1\" title=\"公司简介\" alt=\"公司简介\" id=\"OmWeb_img_1\" width=\"870\" height=\"170\" border=\"0\" vspace=\"0\" style=\"width: 870px; height: 170px;\"/></p><p><br/></p><p><br/></p><p>上海佳晔电子技术有限公司是以DSP、MCU、ARM嵌入式系统为核心技术的芯片代理商和方案提供商。公司凭借多年DSP、MCU、ARM的</p><p>技术积累与开发经验，不仅可以提供丰富的开发工具和EVM，同时还积累多个行业的整体方案和参考设计，可以协助佳晔客户缩短研发周期。</p><p>公司在全国各地设有多个办事处，可以为客户提供实时的物流及技术服务。</p><p><br/></p>', '', 'page.html', '0', '', '1', '1', 'http://zan.jiaye.in/index.php?c=page&id=9', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('8', '', '0', '0', '关于佳晔', 'guanyujiaye', '', '1', '8,9,10', '', '', '', '', null, null, 'page.html', '0', '', '1', '1', 'http://zan.jiaye.in/index.php?c=page&id=8', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('13', '', '11', '0,11', '人才招聘', 'rencaizhaopin', 'lianxiwomen/', '0', '13', '', '', '', '', '<h2><span style=\"font-size: 24px;\">技术支持</span></h2><p><br/></p><p><strong>职位名称：</strong><span class=\"Apple-tab-span\" style=\"white-space: pre;\"></span>技术支持<span class=\"Apple-tab-span\" style=\"white-space: pre;\"></span>招聘人数：<span class=\"Apple-tab-span\" style=\"white-space: pre;\"></span>1</p><p><strong>工作地点：</strong><span class=\"Apple-tab-span\" style=\"white-space:pre\"></span>上海</p><p><strong>岗位描述：</strong><span class=\"Apple-tab-span\" style=\"white-space:pre\"></span>1、DSP系统的硬件电路设计； 2、DSP系统的驱动程序设计； 3、电机控制系统的方案设计和算法仿真；</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4、电机控制系统的整体调试和性能测试；</p><p><strong>职位需要：</strong><span class=\"Apple-tab-span\" style=\"white-space:pre\"></span>1、电子、电气、电力电子、电气传动、自动控制相关专业，本科以上学历；</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2、三年以上电机控制开发经验，熟悉TI DSP电机控制的优先；</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3、熟悉C语言、VHDL语言、Protel、DXP等开发软件；</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 4、熟悉各类电机控制方法和矢量控制软件算法；</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5、熟悉常用的工业通讯接口和人机界面；</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 6、工作主动积极，具备较强的学习能力；</p><p><strong>发布时间：</strong><span class=\"Apple-tab-span\" style=\"white-space:pre\"></span>2014-01-26</p><p><strong>提交简历：</strong><span class=\"Apple-tab-span\" style=\"white-space: pre;\"></span>hr.kf@serialsystemsd.com</p><p><br/></p><p><br/></p><h2><span style=\"font-size: 24px;\">研发工程师</span></h2><p><strong><br/></strong></p><p><strong>职位名称：</strong><span class=\"Apple-tab-span\" style=\"white-space: pre;\"></span>研发工程师（电机控制）<span class=\"Apple-tab-span\" style=\"white-space: pre;\"></span>招聘人数：<span class=\"Apple-tab-span\" style=\"white-space: pre;\"></span>1</p><p><strong>工作地点：</strong><span class=\"Apple-tab-span\" style=\"white-space:pre\"></span>上海</p><p><strong>岗位描述：</strong><span class=\"Apple-tab-span\" style=\"white-space:pre\"></span>1、DSP系统的硬件电路设计； 2、DSP系统的驱动程序设计； 3、电机控制系统的方案设计和算法仿真；</p><p><strong>职位需要：</strong><span class=\"Apple-tab-span\" style=\"white-space:pre\"></span>1、电子、电气、电力电子、电气传动、自动控制相关专业，本科以上学历；</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2、三年以上电机控制开发经验，熟悉TI DSP电机控制的优先；</p><p><strong>发布时间：</strong><span class=\"Apple-tab-span\" style=\"white-space:pre\"></span>2014-01-26</p><p><strong>提交简历：</strong><span class=\"Apple-tab-span\" style=\"white-space: pre;\"></span>hr.kf@serialsystemsd.com</p><p><br/></p><p><br/></p>', '', 'page.html', '0', '', '1', '1', 'http://zan.jiaye.in/index.php?c=page&id=13', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');
INSERT INTO `om_1_page` VALUES ('14', '', '11', '0,11', '在线下单', 'zaixianxiadan', 'lianxiwomen/', '0', '14', '', '', '', '', '<p>在线下单跳转表单提交页面</p>', '', 'page.html', '0', 'http://zan.jiaye.in/index.php?c=form_1_1', '1', '1', 'http://zan.jiaye.in/index.php?c=form_1_1', 'a:1:{s:7:\\\"nocache\\\";s:1:\\\"0\\\";}', '0');

-- ----------------------------
-- Table structure for om_1_product
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product`;
CREATE TABLE `om_1_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `docdown` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_product
-- ----------------------------
INSERT INTO `om_1_product` VALUES ('1', '1', 'SD-XDSV2ISO', '7', '', 'l  开发系统自带隔离，更加可靠，适合用于工业现场l  全面支持TI EP - ARM/DSP/MCU（除了LF24x、MSP430系列）的仿真、烧写l  支持Code Composer Studio v4及以上版本l  调试功能（仿真连接/断开，读/写内存，读取寄...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/product/index.php?c=show&id=1', '0', '127.0.0.1', '1413461242', '1413461324', '0', '8');
INSERT INTO `om_1_product` VALUES ('2', '2', 'SD-AM3354-EVM', '', 'SD', 'SD-AM3354-EVM是一款功能完善的开发套件，它非常适用于低功耗AM335x微处理器的解决方案和网络平台。德州仪器（TI）公司推出的基于ARM Cortex-A8的AM335x微处理器在图像、图形、外设和EtherCAT、PROFIBUS等工业接口方...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/product/index.php?c=show&id=2', '0', '127.0.0.1', '1413507722', '1413509115', '0', '9');
INSERT INTO `om_1_product` VALUES ('3', '1', 'SD-AM3354-SOM V1.0 – Cortex-A8 OEM模块', '', 'SD', 'SD-AM3354-SOM V1.0 – Cortex-A8 OEM模块概述', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/product/index.php?c=show&id=3', '0', '127.0.0.1', '1413508964', '1413509100', '0', '');

-- ----------------------------
-- Table structure for om_1_product_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_0`;
CREATE TABLE `om_1_product_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_1`;
CREATE TABLE `om_1_product_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_2`;
CREATE TABLE `om_1_product_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_3`;
CREATE TABLE `om_1_product_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_4`;
CREATE TABLE `om_1_product_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_5`;
CREATE TABLE `om_1_product_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_6`;
CREATE TABLE `om_1_product_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_7`;
CREATE TABLE `om_1_product_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_8`;
CREATE TABLE `om_1_product_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_buy_9`;
CREATE TABLE `om_1_product_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_product_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_category`;
CREATE TABLE `om_1_product_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_product_category
-- ----------------------------
INSERT INTO `om_1_product_category` VALUES ('1', '0', '0', '仿真器', 'f', 'fangzhenqi', '', '0', '1', '19', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:0:{}s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_product_category` VALUES ('2', '0', '0', '开发板', 'k', 'kaifaban', '', '0', '2', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_product_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_category_data`;
CREATE TABLE `om_1_product_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_product_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_category_data_0`;
CREATE TABLE `om_1_product_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_product_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_data_0`;
CREATE TABLE `om_1_product_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '概述',
  `hardware` mediumtext COMMENT '硬件参数',
  `software` mediumtext COMMENT '软件资源',
  `industry` mediumtext COMMENT '行业应用',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_product_data_0
-- ----------------------------
INSERT INTO `om_1_product_data_0` VALUES ('1', '1', '1', '<p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">开发系统自带隔离，更加可靠，适合用于工业现场</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">全面支持TI EP - ARM/DSP/MCU（除了LF24x、MSP430系列）的仿真、烧写</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">支持Code Composer Studio v4及以上版本</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">调试功能（仿真连接/断开，读/写内存，读取寄存器，加载程序，运行，暂停，单步，支持软件和硬件断点，实时模式）</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">支持14-Pin标准JTAG接口</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">支持1.8V和3.3V I/O电压的芯片</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">支持ETB跟踪</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">支持高速USB传输（480Mbit/s）</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">支持电缆损坏检测与目标掉电检测</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">支持同时仿真多个FTDI设备</span></p><p style=\"margin-left:28px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">自适应时钟</span></p><p><br/></p>', '<p><span style=\"color: rgb(119, 119, 119); font-family: 微软雅黑, 宋体, sans-serif; font-size: 12px; line-height: 18px; text-align: right;\">硬件参数</span></p>', '<p><span style=\"color: rgb(119, 119, 119); font-family: 微软雅黑, 宋体, sans-serif; font-size: 12px; line-height: 18px; text-align: right;\">软件资源</span></p>', '<p><span style=\"color: rgb(119, 119, 119); font-family: 微软雅黑, 宋体, sans-serif; font-size: 12px; line-height: 18px; text-align: right;\">行业应用</span></p>');
INSERT INTO `om_1_product_data_0` VALUES ('2', '1', '2', '<p style=\"text-indent:28px\"><span style=\"font-family:宋体\">SD-AM3354-EVM</span><span style=\"font-family:宋体\">是一款功能完善的开发套件，它非常适用于低功耗AM335x微处理器的解决方案和网络平台。</span></p><p style=\"text-indent:28px\"><span style=\"font-family:宋体\">德州仪器（TI）公司推出的基于ARM Cortex-A8的AM335x微处理器在图像、图形、外设和EtherCAT、PROFIBUS等工业接口方面进行了增强，并支持Linux、Android高级操作系统。</span></p><p><br/></p>', '<p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">CPU</span><span style=\"font-family:宋体\">：AM3354，ARM Cortex-A8</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">DDR3 SDRAM</span><span style=\"font-family:宋体\">：512MB</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">NAND Flash</span><span style=\"font-family:宋体\">：128MB</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">Ethernet</span><span style=\"font-family:宋体\">：2个，千兆网口</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">USB</span><span style=\"font-family:宋体\">：Host，2个；OTG，1个</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">RS232</span><span style=\"font-family:宋体\">：2个</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">RS485</span><span style=\"font-family:宋体\">：1个</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">CAN</span><span style=\"font-family:宋体\">：1个</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">RTC</span><span style=\"font-family:宋体\">：1个</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">SD Card</span><span style=\"font-family:宋体\">：1个</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">LCD</span><span style=\"font-family:宋体\">：1个，16/24-bit，触摸屏，7寸，800×480</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">Power</span><span style=\"font-family:宋体\">：5V接口</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">JTAG</span><span style=\"font-family:宋体\">：14-Pin标准接口</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">User LED</span><span style=\"font-family:宋体\">：2个</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">User KEY</span><span style=\"font-family:宋体\">：3个</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">扩展接口：2个2*50-Pin扩展接口，扩展AM3354所有功能引脚</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">扩展接口：4个扩展接口，扩展AM3354的其他没有使用到的片上外设</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">板卡尺寸：70mm×50mm（核心板）、185mm×125mm（接口板）</span></p><p><br/></p><p style=\"margin-left:56px\"><br/></p><p><br/></p>', '<p style=\"margin-left: 56px; white-space: normal;\"><span style=\"font-family: Wingdings;\">l<span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">Linux v3.12.10</span></p><p style=\"margin-left: 56px; white-space: normal;\"><span style=\"font-family: Wingdings;\">l<span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">Android Jelly Bean v4.2.2</span><span style=\"font-family: 宋体;\">（Linux Kernel v3.2）</span></p><p style=\"margin-left: 56px; white-space: normal;\"><span style=\"font-family: Wingdings;\">l<span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">Starterware V2.00.01.01</span></p><p style=\"margin-left: 56px; white-space: normal;\"><span style=\"font-family: Wingdings;\">l<span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">开发教程：</span></p><p style=\"margin-left: 84px; white-space: normal;\"><span style=\"font-family: Wingdings;\"><img width=\"11\" height=\"11\" src=\"http://zan.jiaye.in/member/ueditor142/themes/default/images/spacer.gif\" alt=\"*\" word_img=\"file:///C:/Users/zan/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif\" style=\"border: 1px solid rgb(221, 221, 221); background-image: url(http://zan.jiaye.in/adminkey.php?s=product&amp;c=home&amp;m=add&amp;catid=2); background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 50% 50%; background-repeat: no-repeat;\"/><span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">如何在VMware环境下构建Ubuntu Linux主机</span></p><p style=\"margin-left: 84px; white-space: normal;\"><span style=\"font-family: Wingdings;\"><img width=\"11\" height=\"11\" src=\"http://zan.jiaye.in/member/ueditor142/themes/default/images/spacer.gif\" alt=\"*\" word_img=\"file:///C:/Users/zan/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif\" style=\"border: 1px solid rgb(221, 221, 221); background-image: url(http://zan.jiaye.in/adminkey.php?s=product&amp;c=home&amp;m=add&amp;catid=2); background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 50% 50%; background-repeat: no-repeat;\"/><span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">Sitara SDK</span><span style=\"font-family: 宋体;\">安装步骤</span></p><p style=\"margin-left: 84px; white-space: normal;\"><span style=\"font-family: Wingdings;\"><img width=\"11\" height=\"11\" src=\"http://zan.jiaye.in/member/ueditor142/themes/default/images/spacer.gif\" alt=\"*\" word_img=\"file:///C:/Users/zan/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif\" style=\"border: 1px solid rgb(221, 221, 221); background-image: url(http://zan.jiaye.in/adminkey.php?s=product&amp;c=home&amp;m=add&amp;catid=2); background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 50% 50%; background-repeat: no-repeat;\"/><span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">AMSDK u-boot</span><span style=\"font-family: 宋体;\">移植</span></p><p style=\"margin-left: 84px; white-space: normal;\"><span style=\"font-family: Wingdings;\"><img width=\"11\" height=\"11\" src=\"http://zan.jiaye.in/member/ueditor142/themes/default/images/spacer.gif\" alt=\"*\" word_img=\"file:///C:/Users/zan/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif\" style=\"border: 1px solid rgb(221, 221, 221); background-image: url(http://zan.jiaye.in/adminkey.php?s=product&amp;c=home&amp;m=add&amp;catid=2); background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 50% 50%; background-repeat: no-repeat;\"/><span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">AMSDK Linux</span><span style=\"font-family: 宋体;\">移植</span></p><p style=\"margin-left: 84px; white-space: normal;\"><span style=\"font-family: Wingdings;\"><img width=\"11\" height=\"11\" src=\"http://zan.jiaye.in/member/ueditor142/themes/default/images/spacer.gif\" alt=\"*\" word_img=\"file:///C:/Users/zan/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif\" style=\"border: 1px solid rgb(221, 221, 221); background-image: url(http://zan.jiaye.in/adminkey.php?s=product&amp;c=home&amp;m=add&amp;catid=2); background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: 50% 50%; background-repeat: no-repeat;\"/><span style=\"font-size: 9px; font-family: &#39;Times New Roman&#39;;\">&nbsp;&nbsp;</span></span><span style=\"font-family: 宋体;\">Sitara Linux SDK</span><span style=\"font-family: 宋体;\">创建SD卡分区</span></p><p><br/></p>', '<p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">家庭自动化</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">工业自动化</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">单板计算机</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">智能电网</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">网关</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">便携式导航</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">POS</span><span style=\"font-family:宋体\">机</span></p><p style=\"margin-left:56px\"><span style=\"font-family:Wingdings\">l<span style=\"font-size: 9px;font-family: &#39;Times New Roman&#39;\">&nbsp; </span></span><span style=\"font-family:宋体\">消费类医疗器械</span></p><p><br/></p>');
INSERT INTO `om_1_product_data_0` VALUES ('3', '1', '1', '<p><span style=\"font-size:14px;font-family:&#39;Times New Roman&#39;,&#39;serif&#39;\">SD-AM3354-SOM V1.0 </span><span style=\"font-size:14px;font-family:宋体\">–</span><span style=\"font-size:14px;font-family:&#39;Times New Roman&#39;,&#39;serif&#39;\"> Cortex-A8 OEM</span><span style=\"font-size:14px;font-family:宋体\">模块</span><span style=\"color: rgb(119, 119, 119); font-family: 微软雅黑, 宋体, sans-serif; font-size: 12px; line-height: 18px; text-align: right;\">概述</span></p>', '<p><span style=\"color: rgb(119, 119, 119); font-family: 微软雅黑, 宋体, sans-serif; font-size: 12px; line-height: 18px; text-align: right;\">硬件参数</span></p>', '<p><strong><span style=\"color: rgb(119, 119, 119); font-family: 微软雅黑, 宋体, sans-serif; font-size: 12px; line-height: 18px; text-align: right;\"></span><span style=\"color: rgb(119, 119, 119); font-family: 微软雅黑, 宋体, sans-serif; font-size: 12px; line-height: 18px; text-align: right;\">软件资源</span></strong><br/></p>', '<p><span style=\"color: rgb(119, 119, 119); font-family: 微软雅黑, 宋体, sans-serif; font-size: 12px; line-height: 18px; text-align: right;\">行业应用</span></p>');

-- ----------------------------
-- Table structure for om_1_product_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_extend_index`;
CREATE TABLE `om_1_product_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_product_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_extend_verify`;
CREATE TABLE `om_1_product_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_product_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_0`;
CREATE TABLE `om_1_product_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_1`;
CREATE TABLE `om_1_product_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_2`;
CREATE TABLE `om_1_product_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_3`;
CREATE TABLE `om_1_product_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_4`;
CREATE TABLE `om_1_product_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_5`;
CREATE TABLE `om_1_product_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_6`;
CREATE TABLE `om_1_product_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_7`;
CREATE TABLE `om_1_product_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_8`;
CREATE TABLE `om_1_product_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_favorite_9`;
CREATE TABLE `om_1_product_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_product_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_flag`;
CREATE TABLE `om_1_product_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_product_flag
-- ----------------------------
INSERT INTO `om_1_product_flag` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for om_1_product_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_form`;
CREATE TABLE `om_1_product_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_product_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_html`;
CREATE TABLE `om_1_product_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_product_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_index`;
CREATE TABLE `om_1_product_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_product_index
-- ----------------------------
INSERT INTO `om_1_product_index` VALUES ('1', '1', '1', '9', '1413461242');
INSERT INTO `om_1_product_index` VALUES ('2', '1', '2', '9', '1413507722');
INSERT INTO `om_1_product_index` VALUES ('3', '1', '1', '9', '1413508964');

-- ----------------------------
-- Table structure for om_1_product_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_search`;
CREATE TABLE `om_1_product_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_product_search
-- ----------------------------
INSERT INTO `om_1_product_search` VALUES ('fe9c64401c9eebb94b7d5697ee6a2fda', '0', 'a:2:{s:7:\\\"keyword\\\";s:0:\\\"\\\";s:6:\\\"module\\\";s:4:\\\"chip\\\";}', '', '2,3,1', '1414400456');

-- ----------------------------
-- Table structure for om_1_product_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_tag`;
CREATE TABLE `om_1_product_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_product_tag
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_product_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_product_verify`;
CREATE TABLE `om_1_product_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_product_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop`;
CREATE TABLE `om_1_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '商品标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键字',
  `description` text NOT NULL COMMENT '描述',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '商品价格',
  `quantity` int(10) unsigned NOT NULL COMMENT '商品数量',
  `city` mediumint(8) unsigned NOT NULL COMMENT '城市id',
  `freight` varchar(255) NOT NULL COMMENT '运费模式',
  `volume` int(10) unsigned DEFAULT '0' COMMENT '商品成交量',
  `onsale` tinyint(1) unsigned NOT NULL COMMENT '是否上架',
  `review` tinyint(3) unsigned DEFAULT NULL COMMENT '点评分值',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(20) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) NOT NULL COMMENT '地址',
  `inputip` varchar(15) NOT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `tableid` tinyint(3) unsigned NOT NULL COMMENT '副表id',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`,`price`,`quantity`,`volume`,`onsale`,`city`,`freight`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_shop
-- ----------------------------
INSERT INTO `om_1_shop` VALUES ('1', '53', 'Apple/苹果 iPhone 4S iphone4s 原封 未激活 官方版', 'iphone4s,iPhone,苹果', '', 'http://img.taobaocdn.com/bao/uploaded/i4/T1N_SrXfNxXXaTxD7__110646.jpg_220x220.jpg', '200.00', '3996', '626', '0', '343', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=1', '127.0.0.1', '1381893932', '1381893932', '0', '0');
INSERT INTO `om_1_shop` VALUES ('2', '53', 'Apple/苹果 iPhone 5s苹果5S三网V版 美版国行 港版 金色5288限量', 'iPhone,苹果', '', 'http://img.taobaocdn.com/bao/uploaded/i3/T1aTKOFbtcXXc9QiUZ_033001.jpg_220x220.jpg', '122.00', '15932', '1', '0', '22', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=2', '127.0.0.1', '1381894303', '1381894303', '0', '0');
INSERT INTO `om_1_shop` VALUES ('3', '8', 'Afterseven春秋新款韩版男士夹克 潮流修身加大码男装薄休闲外套', '休闲外套,潮流,韩版,男士,男装', '', 'http://gi1.md.alicdn.com/bao/uploaded/i1/12631026148495106/T1WT84FgpdXXXXXXXX_!!0-item_pic.jpg', '123.00', '9281', '2', '0', '212', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=3', '127.0.0.1', '1381903941', '1381903941', '0', '0');
INSERT INTO `om_1_shop` VALUES ('4', '8', '2013秋冬新品潮流男士羽绒服衬衣男装外套羽绒衫男 以山', '羽绒服,潮流,衬衣,男士,男装', '', 'http://img01.taobaocdn.com/bao/uploaded/i1/15344027311072967/T13gqEFkBfXXXXXXXX_!!0-item_pic.jpg', '23.00', '8314', '248', '0', '122', '1', '0', '1', '1', 'omooo', '9', '/shop/index.php?c=show&id=4', '127.0.0.1', '1381904152', '1381904152', '0', '0');
INSERT INTO `om_1_shop` VALUES ('5', '13', '2013春秋装连衣裙新款 韩版长袖大码显瘦拼接蕾丝连衣裙 限时包邮', '蕾丝连衣裙,连衣裙新款,包邮,长袖,韩版', '', 'http://img04.taobaocdn.com/bao/uploaded/i4/11204025829849686/T1Y88_FXdXXXXXXXXX_!!0-item_pic.jpg', '123.00', '24492', '524', '0', '122', '1', '0', '9', '1', 'omooo', '9', '/shop/index.php?c=show&id=5', '127.0.0.1', '1381904292', '1381904292', '0', '0');
INSERT INTO `om_1_shop` VALUES ('6', '12', '2013春装新款 时尚修身显瘦全棉条纹长袖圆领连衣裙打底裙外套', '连衣裙,长袖,时尚,条纹,新款', '', 'http://img01.taobaocdn.com/bao/uploaded/i1/15807021496885482/T138F8XyFdXXXXXXXX_!!0-item_pic.jpg', '123.00', '258', '248', '0', '122', '1', '0', '5', '1', 'omooo', '9', '/shop/index.php?c=show&id=6', '127.0.0.1', '1381904463', '1381904463', '0', '0');
INSERT INTO `om_1_shop` VALUES ('7', '21', '秋冬新品韩版通勤时尚中高跟粗跟皮带扣防水台真皮女鞋女靴短靴', '防水,韩版,时尚,新品', '', 'http://img04.taobaocdn.com/bao/uploaded/i4/19926028567969889/T1orm1FcheXXXXXXXX_!!0-item_pic.jpg', '12.00', '147', '882', '0', '122', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=7', '127.0.0.1', '1381904664', '1381904664', '0', '0');
INSERT INTO `om_1_shop` VALUES ('8', '21', '秋季新款欧美短靴新品 真皮单祼靴磨砂牛皮女靴子马丁靴简约女鞋', '马丁靴,靴子,简约,秋季,新款', '', 'http://img01.taobaocdn.com/bao/uploaded/i1/19926029070546881/T1tK_nFn4dXXXXXXXX_!!0-item_pic.jpg', '123.00', '1478', '65', '0', '12', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=8', '127.0.0.1', '1381904802', '1381904802', '0', '0');
INSERT INTO `om_1_shop` VALUES ('9', '21', '包邮热卖韩版花朵红色高跟鞋婚鞋绿色新娘鞋单鞋结婚鞋子婚纱鞋', '红色高跟鞋,新娘,包邮,单鞋,韩版', '', 'http://img01.taobaocdn.com/bao/uploaded/i1/18026019898766266/T13o0uXqtfXXXXXXXX_!!0-item_pic.jpg', '121.00', '269', '693', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=9', '127.0.0.1', '1381904926', '1381904926', '0', '0');
INSERT INTO `om_1_shop` VALUES ('10', '25', '新款女包韩版潮包 纯色休闲手提大包糖果色单肩包斜跨包包', '新款女包,单肩包,韩版,休闲', '', 'http://img01.taobaocdn.com/bao/uploaded/i1/10951028968361396/T1RKLlFhdXXXXXXXXX_!!0-item_pic.jpg', '12312.00', '1231', '851', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=10', '127.0.0.1', '1381905071', '1381905071', '0', '0');
INSERT INTO `om_1_shop` VALUES ('11', '25', '欧美大牌女包包2013新款潮撞色甜美糖果印花finalgirls复古手提包', '手提包,复古,女包,甜美,新款', '', 'http://img02.taobaocdn.com/bao/uploaded/i2/19559028689056714/T1wu2fFflbXXXXXXXX_!!1-item_pic.gif', '1231.00', '12312', '271', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=11', '127.0.0.1', '1381905183', '1381905183', '0', '0');
INSERT INTO `om_1_shop` VALUES ('12', '25', '新款菱格链条包韩版糖果色包包 真皮单肩斜挎小包 秋冬季女包', '单肩,韩版,女包,小包,新款', '', 'http://img04.taobaocdn.com/bao/uploaded/i4/14810024154237319/T11Kq3Xw0eXXXXXXXX_!!0-item_pic.jpg', '12313.00', '123', '835', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=12', '127.0.0.1', '1381905291', '1381905291', '0', '0');
INSERT INTO `om_1_shop` VALUES ('13', '25', '小清新款女包包潮流鸵鸟纹撞色女士单肩斜挎pu糖果色甜美晚宴', '潮流,单肩,女包,甜美', '', 'http://img03.taobaocdn.com/bao/uploaded/i3/11957028655465778/T1K9PiFXBeXXXXXXXX_!!0-item_pic.jpg', '1231.00', '123', '836', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=13', '127.0.0.1', '1381905422', '1381905422', '0', '0');
INSERT INTO `om_1_shop` VALUES ('14', '25', '秋季韩版潮新款糖果色单肩手提斜跨女包包小挎包复古小包', '小挎包,单肩,复古,韩版,女包', '', 'http://img04.taobaocdn.com/bao/uploaded/i4/14410028736686291/T1W6fiFoVdXXXXXXXX_!!0-item_pic.jpg', '444.00', '333', '626', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=14', '127.0.0.1', '1381905538', '1381905538', '0', '0');
INSERT INTO `om_1_shop` VALUES ('15', '42', '专柜正品 AVON雅芳香品走珠香水限量版 小黑裙/小红裙/小白裙之恋 ', '香水,正品,专柜', '', 'http://gi3.md.alicdn.com/bao/uploaded/i3/12659039022320170/T1HlCoFfFeXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '12312.00', '123123', '0', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=15', '127.0.0.1', '1381906241', '1381906241', '0', '0');
INSERT INTO `om_1_shop` VALUES ('16', '42', '法国夏莫尼正品格拉斯魔法香膏 固体香膏 女士香水', '女士香水,格拉斯,法国,正品', '', 'http://img01.taobaocdn.com/bao/uploaded/i1/19114026056555156/T1NGpAFnxeXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '222.00', '213', '942', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=16', '127.0.0.1', '1381906540', '1381906540', '0', '0');
INSERT INTO `om_1_shop` VALUES ('17', '42', 'PBA YangSang矿物丝柔散粉13g 蜜粉定妆粉 粉底妆控油裸妆 正品', '粉底,控油,蜜粉,正品', '', 'http://img03.taobaocdn.com/bao/uploaded/i3/19556029081387003/T1fmneFdJeXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '333.00', '333', '896', '0', '0', '1', '0', '8', '1', 'omooo', '9', '/shop/index.php?c=show&id=17', '127.0.0.1', '1381906598', '1381906598', '0', '0');
INSERT INTO `om_1_shop` VALUES ('18', '45', '正品彼丽七合一裸妆BB霜50G 零毛孔遮暇控油保湿彩妆裸妆', '裸妆BB霜,彩妆,控油,正品', '', 'http://img04.taobaocdn.com/bao/uploaded/i4/19086029468047851/T1S0GxFbJgXXXXXXXX_!!0-item_pic.jpg_310x310.jpg', '555.00', '55', '930', '0', '0', '1', '0', '1', '1', 'omooo', '9', '/shop/index.php?c=show&id=18', '127.0.0.1', '1381906727', '1381906727', '0', '0');
INSERT INTO `om_1_shop` VALUES ('19', '59', 'Huawei/华为 G520 四核安卓智能手机 移动3G 双卡 1G运行 纯净版 ', '智能手机,华为,双卡', '', 'http://img.taobaocdn.com/bao/uploaded/i6/T1od5LFhNbXXc5RhQ0_035502.jpg_220x220.jpg', '222.00', '22', '885', '0', '0', '1', '0', '0', '1', 'omooo', '9', '/shop/index.php?c=show&id=19', '127.0.0.1', '1381907143', '1381907143', '0', '0');
INSERT INTO `om_1_shop` VALUES ('20', '59', '假一赔三MIUI/小米 2S(MI2S)小米2S M2S 16G/32G标准版 电信版 ', '电信', '', 'http://img.taobaocdn.com/bao/uploaded/i3/T145J.Xt4bXXXHPUM__111038.jpg_220x220.jpg', '123.00', '681', '0', '0', '0', '1', '0', '38', '1', 'omooo', '9', '/shop/index.php?c=show&id=20', '127.0.0.1', '1381907260', '1381979684', '0', '0');

-- ----------------------------
-- Table structure for om_1_shop_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_0`;
CREATE TABLE `om_1_shop_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_1`;
CREATE TABLE `om_1_shop_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_2`;
CREATE TABLE `om_1_shop_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_3`;
CREATE TABLE `om_1_shop_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_4`;
CREATE TABLE `om_1_shop_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_5`;
CREATE TABLE `om_1_shop_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_6`;
CREATE TABLE `om_1_shop_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_7`;
CREATE TABLE `om_1_shop_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_8`;
CREATE TABLE `om_1_shop_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_buy_9`;
CREATE TABLE `om_1_shop_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_shop_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_category`;
CREATE TABLE `om_1_shop_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_shop_category
-- ----------------------------
INSERT INTO `om_1_shop_category` VALUES ('1', '0', '0', '男女服装', 'n', 'nannufuzhuang', '', '1', '1,8,9,10,11,12,13,14,15,16,17,18,19,20', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('2', '0', '0', '鞋包配饰', 'x', 'xiebaopeishi', '', '1', '2,21,22,23,24,25,26,27,28,29', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('3', '0', '0', '运动户外', 'y', 'yundonghuwai', '', '1', '3,30,31,32,33,34,35,36,37,38,39,40,41', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('4', '0', '0', '美容美妆', 'm', 'meirongmeizhuang', '', '1', '4,42,43,44,45,46,47,48,49,50,51', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('5', '0', '0', '数码家电', 's', 'shumajiadian', '', '1', '5,52,53,54,55,56,57,58,59', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('6', '0', '0', '家居家装', 'j', 'jiajujiazhuang', '', '1', '6,60,61,62,63,64,65,66,67', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('7', '0', '0', '母婴用品', 'm', 'muyingyongpin', '', '1', '7,68,69,70,71,72,73,74,75,76', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('8', '1', '0,1', '男羽绒', 'n', 'nanyurong', 'nannufuzhuang/', '0', '8', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('9', '1', '0,1', '呢大衣', 'n', 'nedayi', 'nannufuzhuang/', '0', '9', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('10', '1', '0,1', '男棉服', 'n', 'nanmianfu', 'nannufuzhuang/', '0', '10', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('11', '1', '0,1', '女羽绒', 'n', 'nuyurong', 'nannufuzhuang/', '0', '11', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('12', '1', '0,1', '牛仔裤', 'n', 'niuzaiku', 'nannufuzhuang/', '0', '12', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('13', '1', '0,1', '女毛衣', 'n', 'numaoyi', 'nannufuzhuang/', '0', '13', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('14', '1', '0,1', '男毛衣', 'n', 'nanmaoyi', 'nannufuzhuang/', '0', '14', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('15', '1', '0,1', '连衣裙', 'l', 'lianyiqun', 'nannufuzhuang/', '0', '15', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('16', '1', '0,1', '男夹克', 'n', 'nanjiake', 'nannufuzhuang/', '0', '16', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('17', '1', '0,1', '女睡衣', 'n', 'nushuiyi', 'nannufuzhuang/', '0', '17', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('18', '1', '0,1', '男睡衣', 'n', 'nanshuiyi', 'nannufuzhuang/', '0', '18', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('19', '1', '0,1', '男士内衣', 'n', 'nanshineiyi', 'nannufuzhuang/', '0', '19', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('20', '1', '0,1', '女士内衣', 'n', 'nushineiyi', 'nannufuzhuang/', '0', '20', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('21', '2', '0,2', '女鞋', 'n', 'nuxie', 'xiebaopeishi/', '0', '21', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('22', '2', '0,2', '男鞋', 'n', 'nanxie', 'xiebaopeishi/', '0', '22', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('23', '2', '0,2', '高跟鞋', 'g', 'gaogenxie', 'xiebaopeishi/', '0', '23', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('24', '2', '0,2', '中长靴', 'z', 'zhongchangxue', 'xiebaopeishi/', '0', '24', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('25', '2', '0,2', '女包', 'n', 'nubao', 'xiebaopeishi/', '0', '25', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('26', '2', '0,2', '双肩包', 's', 'shuangjianbao', 'xiebaopeishi/', '0', '26', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('27', '2', '0,2', '施华洛', 's', 'shihualuo', 'xiebaopeishi/', '0', '27', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('28', '2', '0,2', '钻石', 'z', 'zuanshi', 'xiebaopeishi/', '0', '28', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('29', '2', '0,2', '手表', 's', 'shoubiao', 'xiebaopeishi/', '0', '29', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('30', '3', '0,3', '运动背包', 'y', 'yundongbeibao', 'yundonghuwai/', '0', '30', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('31', '3', '0,3', '户外服装', 'h', 'huwaifuzhuang', 'yundonghuwai/', '0', '31', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('32', '3', '0,3', '户外鞋', 'h', 'huwaixie', 'yundonghuwai/', '0', '32', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('33', '3', '0,3', '运动配件', 'y', 'yundongpeijian', 'yundonghuwai/', '0', '33', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('34', '3', '0,3', '健身器材', 'j', 'jianshenqicai', 'yundonghuwai/', '0', '34', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('35', '3', '0,3', '小型健身器材', 'x', 'xiaoxingjianshenqicai', 'yundonghuwai/', '0', '35', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('36', '3', '0,3', '瑜伽', 'y', 'yuga', 'yundonghuwai/', '0', '36', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('37', '3', '0,3', '轮滑', 'l', 'lunhua', 'yundonghuwai/', '0', '37', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('38', '3', '0,3', '探路者', 't', 'tanluzhe', 'yundonghuwai/', '0', '38', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('39', '3', '0,3', '冲锋衣', 'c', 'chongfengyi', 'yundonghuwai/', '0', '39', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('40', '3', '0,3', '游泳系列', 'y', 'youyongxilie', 'yundonghuwai/', '0', '40', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('41', '3', '0,3', '球类运动', 'q', 'qiuleiyundong', 'yundonghuwai/', '0', '41', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('42', '4', '0,4', '美容', 'm', 'meirong', 'meirongmeizhuang/', '0', '42', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('43', '4', '0,4', '保湿', 'b', 'baoshi', 'meirongmeizhuang/', '0', '43', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('44', '4', '0,4', '抗敏', 'k', 'kangmin', 'meirongmeizhuang/', '0', '44', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('45', '4', '0,4', '洁面', 'j', 'jiemian', 'meirongmeizhuang/', '0', '45', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('46', '4', '0,4', '爽肤水', 's', 'shuangfushui', 'meirongmeizhuang/', '0', '46', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('47', '4', '0,4', '眼霜', 'y', 'yanshuang', 'meirongmeizhuang/', '0', '47', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('48', '4', '0,4', '彩妆', 'c', 'caizhuang', 'meirongmeizhuang/', '0', '48', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('49', '4', '0,4', '男士', 'n', 'nanshi', 'meirongmeizhuang/', '0', '49', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('50', '4', '0,4', '纤体', 'x', 'xianti', 'meirongmeizhuang/', '0', '50', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('51', '4', '0,4', '假发', 'j', 'jiafa', 'meirongmeizhuang/', '0', '51', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('52', '5', '0,5', '笔记本', 'b', 'bijiben', 'shumajiadian/', '0', '52', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('53', '5', '0,5', 'iPhone', 'i', 'iphone', 'shumajiadian/', '0', '53', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('54', '5', '0,5', '相机', 'x', 'xiangji', 'shumajiadian/', '0', '54', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('55', '5', '0,5', 'TF卡', 't', 'tfka', 'shumajiadian/', '0', '55', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('56', '5', '0,5', '蓝牙耳机', 'l', 'lanyaerji', 'shumajiadian/', '0', '56', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('57', '5', '0,5', '键盘', 'j', 'jianpan', 'shumajiadian/', '0', '57', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('58', '5', '0,5', '鼠标', 's', 'shubiao', 'shumajiadian/', '0', '58', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('59', '5', '0,5', '手机', 's', 'shouji', 'shumajiadian/', '0', '59', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('60', '6', '0,6', '十字绣', 's', 'shizixiu', 'jiajujiazhuang/', '0', '60', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('61', '6', '0,6', '四件套', 's', 'sijiantao', 'jiajujiazhuang/', '0', '61', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('62', '6', '0,6', '保健枕', 'b', 'baojianzhen', 'jiajujiazhuang/', '0', '62', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('63', '6', '0,6', '枕头', 'z', 'zhentou', 'jiajujiazhuang/', '0', '63', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('64', '6', '0,6', '水杯', 's', 'shuibei', 'jiajujiazhuang/', '0', '64', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('65', '6', '0,6', '收纳', 's', 'shouna', 'jiajujiazhuang/', '0', '65', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('66', '6', '0,6', '家具', 'j', 'jiaju', 'jiajujiazhuang/', '0', '66', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('67', '6', '0,6', '装潢', 'z', 'zhuangguang', 'jiajujiazhuang/', '0', '67', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('68', '7', '0,7', '婴儿礼盒', 'y', 'yingerlihe', 'muyingyongpin/', '0', '68', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('69', '7', '0,7', '哈衣', 'h', 'hayi', 'muyingyongpin/', '0', '69', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('70', '7', '0,7', '运动套装', 'y', 'yundongtaozhuang', 'muyingyongpin/', '0', '70', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('71', '7', '0,7', '孕妇装', 'y', 'yunfuzhuang', 'muyingyongpin/', '0', '71', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('72', '7', '0,7', '托腹裤', 't', 'tuofuku', 'muyingyongpin/', '0', '72', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('73', '7', '0,7', '孕妇裙', 'y', 'yunfuqun', 'muyingyongpin/', '0', '73', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('74', '7', '0,7', '纸尿裤', 'z', 'zhiniaoku', 'muyingyongpin/', '0', '74', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('75', '7', '0,7', '宝宝食品', 'b', 'baobaoshipin', 'muyingyongpin/', '0', '75', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');
INSERT INTO `om_1_shop_category` VALUES ('76', '7', '0,7', '宝宝玩具', 'b', 'baobaowanju', 'muyingyongpin/', '0', '76', '', '1', null, 'a:4:{s:3:\\\"seo\\\";a:5:{s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:7:\\\"urlmode\\\";s:1:\\\"0\\\";s:3:\\\"url\\\";a:5:{s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_shop_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_category_data`;
CREATE TABLE `om_1_shop_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_shop_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_category_data_0`;
CREATE TABLE `om_1_shop_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_shop_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_config
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_config`;
CREATE TABLE `om_1_shop_config` (
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块配置参数表';

-- ----------------------------
-- Records of om_1_shop_config
-- ----------------------------
INSERT INTO `om_1_shop_config` VALUES ('paytype', 'a:3:{i:1;a:3:{s:4:\\\"name\\\";s:12:\\\"余额支付\\\";s:3:\\\"use\\\";s:1:\\\"1\\\";s:4:\\\"text\\\";s:0:\\\"\\\";}i:2;a:2:{s:4:\\\"name\\\";s:12:\\\"在线支付\\\";s:4:\\\"text\\\";s:0:\\\"\\\";}i:3;a:3:{s:4:\\\"name\\\";s:12:\\\"货到付款\\\";s:3:\\\"use\\\";s:1:\\\"3\\\";s:4:\\\"text\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_1_shop_config` VALUES ('expresses', 'a:3:{s:4:\\\"list\\\";s:37:\\\"yuantong,yunda,zhongtong,shunfeng,ems\\\";s:2:\\\"id\\\";s:6:\\\"103253\\\";s:6:\\\"secret\\\";s:32:\\\"fe55a16163d94c3d9af269345df22716\\\";}');
INSERT INTO `om_1_shop_config` VALUES ('config', 'a:7:{s:8:\\\"quantity\\\";s:1:\\\"1\\\";s:3:\\\"num\\\";s:1:\\\"1\\\";s:7:\\\"freight\\\";s:1:\\\"1\\\";s:4:\\\"code\\\";s:1:\\\"0\\\";s:6:\\\"status\\\";s:1:\\\"0\\\";s:8:\\\"isreview\\\";s:1:\\\"1\\\";s:6:\\\"review\\\";s:67:\\\"宝贝与描述相符\r\n卖家的服务态度\r\n卖家发货的速度\\\";}');

-- ----------------------------
-- Table structure for om_1_shop_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_data_0`;
CREATE TABLE `om_1_shop_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext NOT NULL COMMENT '内容',
  `number` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `images` text COMMENT '商品图片',
  `format` text COMMENT '商品规格',
  `discount` text COMMENT '折扣信息',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_shop_data_0
-- ----------------------------
INSERT INTO `om_1_shop_data_0` VALUES ('1', '1', '53', '<p>提醒广大买家那些送软件都是骗人的。</p><p>我们可以给你装1000美元软件。但是你不能用，因为苹果产品装软件需要ID，必须用自己的ID装的软件 <br /></p><p>你才可以让软件升级 更新，你也不可以连接到苹果ITUNES更新系统固件，也就是说你的机器系统不能升级。</p><p>你也不能自己装别的软件了。只要你连接ITUNES后 你的软件就全部没了。</p><p>不更新软件和系统你的机器就是废品一个。请大家不要上当。记住！有问题的卖家一般都会很轻易的答应你退换货</p>', '', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:82:\\\"http://img.taobaocdn.com/bao/uploaded/i4/T1N_SrXfNxXXaTxD7__110646.jpg_220x220.jpg\\\";i:1;s:82:\\\"http://img.taobaocdn.com/bao/uploaded/i8/T1wVGYXiptXXbLmaEW_022451.jpg_220x220.jpg\\\";i:2;s:82:\\\"http://img.taobaocdn.com/bao/uploaded/i2/T1.oOWXb8lXXbCC6cV_021220.jpg_220x220.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:4:\\\"图1\\\";i:1;s:5:\\\"图22\\\";i:2;s:4:\\\"图3\\\";}}', 'a:4:{s:2:\\\"id\\\";a:5:{i:0;s:2:\\\"36\\\";i:1;s:2:\\\"37\\\";i:2;s:2:\\\"41\\\";i:3;s:2:\\\"42\\\";i:4;s:2:\\\"45\\\";}s:5:\\\"price\\\";a:4:{s:8:\\\"36-41-45\\\";s:3:\\\"200\\\";s:8:\\\"36-42-45\\\";s:3:\\\"300\\\";s:8:\\\"37-41-45\\\";s:3:\\\"200\\\";s:8:\\\"37-42-45\\\";s:3:\\\"300\\\";}s:8:\\\"quantity\\\";a:4:{s:8:\\\"36-41-45\\\";s:3:\\\"999\\\";s:8:\\\"36-42-45\\\";s:3:\\\"999\\\";s:8:\\\"37-41-45\\\";s:3:\\\"999\\\";s:8:\\\"37-42-45\\\";s:3:\\\"999\\\";}s:6:\\\"number\\\";a:4:{s:8:\\\"36-41-45\\\";s:0:\\\"\\\";s:8:\\\"36-42-45\\\";s:0:\\\"\\\";s:8:\\\"37-41-45\\\";s:0:\\\"\\\";s:8:\\\"37-42-45\\\";s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('2', '1', '53', '<p>产品名称：Apple/苹果 iPhone 5s &nbsp; &nbsp;<br /></p><p>品牌: Apple/苹果 &nbsp; &nbsp;<br /></p><p>Apple型号: iphone 5S &nbsp; &nbsp;<br /></p><p>手机价格区间: 4000元以上 &nbsp; &nbsp;<br /></p><p>上市时间: 2013年 &nbsp; &nbsp;<br /></p><p>13年上市月份: 9月 &nbsp; &nbsp;<br /></p><p>网络类型: 联通3G GSM/WCDMA(3G) &nbsp; <br /></p><p> 外观样式: 直板 &nbsp; &nbsp;主屏尺寸: 4.0英寸 &nbsp; &nbsp;机身颜色: 白色 黑色 黄色 &nbsp; &nbsp;手机套餐: 官方标配 &nbsp; &nbsp;后置摄像头: 800万 &nbsp; &nbsp;操作系统: iOS &nbsp; &nbsp;高级功能: WIFI上网 GPS导航 &nbsp; &nbsp;宝贝成色: 全新 &nbsp; &nbsp;售后服务: 无售后服务 &nbsp; &nbsp;触摸屏: 电容式触摸屏 &nbsp; &nbsp;运行内存RAM: 1G &nbsp; &nbsp;机身内存: 16G 32G 64G &nbsp; &nbsp;键盘类型: 虚拟触屏键盘 &nbsp; &nbsp;厚度: 超薄(小于9mm) &nbsp; &nbsp;主屏分辨率: 1136x640像素 &nbsp; &nbsp;手机类型: 拍照 智能 3G &nbsp; &nbsp;电池类型: 不可拆卸式电池 &nbsp; &nbsp;摄像头类型: 双摄像头（前后） &nbsp; &nbsp;视频拍摄: 1080P(全高清D5) &nbsp; &nbsp;网络模式: 单卡双模 &nbsp; &nbsp;cpu核心数: 双核 &nbsp; &nbsp;双核cpu频率: 1228MHZ &nbsp; &nbsp;版本: 中国大陆 港澳台 美国 欧洲</p>', '', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:82:\\\"http://img.taobaocdn.com/bao/uploaded/i3/T1aTKOFbtcXXc9QiUZ_033001.jpg_220x220.jpg\\\";i:1;s:82:\\\"http://img.taobaocdn.com/bao/uploaded/i8/T1JkiOFe4eXXcYByZZ_033004.jpg_220x220.jpg\\\";i:2;s:82:\\\"http://img.taobaocdn.com/bao/uploaded/i5/T11nqNFhXfXXcbqJAZ_032014.jpg_220x220.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:3:\\\"111\\\";i:1;s:3:\\\"222\\\";i:2;s:3:\\\"333\\\";}}', 'a:4:{s:2:\\\"id\\\";a:8:{i:0;s:2:\\\"36\\\";i:1;s:2:\\\"37\\\";i:2;s:2:\\\"38\\\";i:3;s:2:\\\"39\\\";i:4;s:2:\\\"40\\\";i:5;s:2:\\\"42\\\";i:6;s:2:\\\"43\\\";i:7;s:2:\\\"45\\\";}s:5:\\\"price\\\";a:10:{s:8:\\\"36-42-45\\\";s:3:\\\"122\\\";s:8:\\\"36-43-45\\\";s:3:\\\"123\\\";s:8:\\\"37-42-45\\\";s:3:\\\"123\\\";s:8:\\\"37-43-45\\\";s:3:\\\"123\\\";s:8:\\\"38-42-45\\\";s:3:\\\"123\\\";s:8:\\\"38-43-45\\\";s:3:\\\"123\\\";s:8:\\\"39-42-45\\\";s:5:\\\"23123\\\";s:8:\\\"39-43-45\\\";s:5:\\\"12312\\\";s:8:\\\"40-42-45\\\";s:4:\\\"3123\\\";s:8:\\\"40-43-45\\\";s:4:\\\"1231\\\";}s:8:\\\"quantity\\\";a:10:{s:8:\\\"36-42-45\\\";s:3:\\\"222\\\";s:8:\\\"36-43-45\\\";s:4:\\\"1231\\\";s:8:\\\"37-42-45\\\";s:3:\\\"213\\\";s:8:\\\"37-43-45\\\";s:3:\\\"123\\\";s:8:\\\"38-42-45\\\";s:3:\\\"231\\\";s:8:\\\"38-43-45\\\";s:4:\\\"1231\\\";s:8:\\\"39-42-45\\\";s:3:\\\"123\\\";s:8:\\\"39-43-45\\\";s:5:\\\"12312\\\";s:8:\\\"40-42-45\\\";s:3:\\\"123\\\";s:8:\\\"40-43-45\\\";s:3:\\\"123\\\";}s:6:\\\"number\\\";a:10:{s:8:\\\"36-42-45\\\";s:0:\\\"\\\";s:8:\\\"36-43-45\\\";s:0:\\\"\\\";s:8:\\\"37-42-45\\\";s:0:\\\"\\\";s:8:\\\"37-43-45\\\";s:0:\\\"\\\";s:8:\\\"38-42-45\\\";s:0:\\\"\\\";s:8:\\\"38-43-45\\\";s:0:\\\"\\\";s:8:\\\"39-42-45\\\";s:0:\\\"\\\";s:8:\\\"39-43-45\\\";s:0:\\\"\\\";s:8:\\\"40-42-45\\\";s:0:\\\"\\\";s:8:\\\"40-43-45\\\";s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('3', '1', '8', '<p>来自韩国的原版设计，品质通过国家权威质检机构质检！</p><p>此款宝贝是2013韩国官网新款，上身效果超帅，已经有一万多人收藏，火爆销售3000多件！<br /></p><p>收藏和销量就是品质的保证！</p><p><br/></p><p>亲们的喜爱之情人类已经无法阻挡，</p><p>我和我的小伙伴们都惊呆了！<br /></p><p>初秋休闲外套时尚首选！肩部和袖子设计部分拼皮，</p><p>低调品位中带点个性不羁，</p><p>赋予出类拔萃的英伦气质，</p><p>彰显男人绅士，儒雅，成熟，奔放的态度！</p><p>不盲目跟风，我自是潮流！</p><p>现货已经不多，欲购从速！</p><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:94:\\\"http://gi1.md.alicdn.com/bao/uploaded/i1/12631026148495106/T1WT84FgpdXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:81:\\\"http://gi4.md.alicdn.com/imgextra/i4/626842631/T2K5iWXkFbXXXXXXXX_!!626842631.jpg\\\";i:2;s:81:\\\"http://gi3.md.alicdn.com/imgextra/i3/626842631/T2XUAJXexaXXXXXXXX_!!626842631.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:6:\\\"121323\\\";i:1;s:5:\\\"12323\\\";i:2;s:7:\\\"2131231\\\";}}', 'a:4:{s:2:\\\"id\\\";a:6:{i:0;s:2:\\\"15\\\";i:1;s:2:\\\"16\\\";i:2;s:1:\\\"3\\\";i:3;s:1:\\\"4\\\";i:4;s:1:\\\"5\\\";i:5;s:1:\\\"6\\\";}s:5:\\\"price\\\";a:8:{s:4:\\\"15-3\\\";s:3:\\\"123\\\";s:4:\\\"15-4\\\";s:4:\\\"1231\\\";s:4:\\\"15-5\\\";s:4:\\\"2312\\\";s:4:\\\"15-6\\\";s:5:\\\"12312\\\";s:4:\\\"16-3\\\";s:3:\\\"123\\\";s:4:\\\"16-4\\\";s:4:\\\"1231\\\";s:4:\\\"16-5\\\";s:3:\\\"123\\\";s:4:\\\"16-6\\\";s:3:\\\"123\\\";}s:8:\\\"quantity\\\";a:8:{s:4:\\\"15-3\\\";s:3:\\\"123\\\";s:4:\\\"15-4\\\";s:3:\\\"231\\\";s:4:\\\"15-5\\\";s:4:\\\"3123\\\";s:4:\\\"15-6\\\";s:4:\\\"3123\\\";s:4:\\\"16-3\\\";s:3:\\\"123\\\";s:4:\\\"16-4\\\";s:4:\\\"2312\\\";s:4:\\\"16-5\\\";s:3:\\\"123\\\";s:4:\\\"16-6\\\";s:3:\\\"123\\\";}s:6:\\\"number\\\";a:8:{s:4:\\\"15-3\\\";s:0:\\\"\\\";s:4:\\\"15-4\\\";s:0:\\\"\\\";s:4:\\\"15-5\\\";s:0:\\\"\\\";s:4:\\\"15-6\\\";s:0:\\\"\\\";s:4:\\\"16-3\\\";s:0:\\\"\\\";s:4:\\\"16-4\\\";s:0:\\\"\\\";s:4:\\\"16-5\\\";s:0:\\\"\\\";s:4:\\\"16-6\\\";s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('4', '1', '8', '<p><strong><span style=\"color:#ffffff;\"><span style=\"font-size:36.0px;\"><span style=\"background-color:#ff0000;\">拍下89元，亏本冲人气。</span></span></span></strong></p><p><strong><span style=\"color:#ffffff;\"><span style=\"font-size:36.0px;\"><span style=\"background-color:#ff0000;\">百分百保证LIHOMME正品,没有虚的，就是赚人气。</span></span></span></strong></p><p><strong><span style=\"color:#ffffff;\"><span style=\"font-size:36.0px;\"><span style=\"background-color:#ff0000;\">不议价，不包邮，中差评误拍，谢谢！</span></span></span></strong></p><p><span style=\"color:#ffffff;\"><span style=\"font-size:36.0px;\"><span style=\"background-color:#ff0000;\">人气商品亏本冲销量。</span></span></span></p><p><strong><span style=\"color:#ffffff;\"><span style=\"font-size:36.0px;\"><span style=\"background-color:#ff0000;\"><span style=\"background-color:#ffff00;\"><span style=\"background-color:#000000;\">本款还有3XL,4XL,5XL，如需大码联系客服。</span></span></span></span></span></strong></p><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:2:{i:0;s:85:\\\"http://img02.taobaocdn.com/imgextra/i2/1033845344/T2yS4SXrFXXXXXXXXX_!!1033845344.jpg\\\";i:1;s:85:\\\"http://img04.taobaocdn.com/imgextra/i4/1033845344/T2KWRTXstXXXXXXXXX_!!1033845344.jpg\\\";}s:3:\\\"pan\\\";a:2:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";}s:5:\\\"title\\\";a:2:{i:0;s:6:\\\"123123\\\";i:1;s:5:\\\"12313\\\";}}', 'a:4:{s:2:\\\"id\\\";a:4:{i:0;s:2:\\\"15\\\";i:1;s:2:\\\"16\\\";i:2;s:1:\\\"3\\\";i:3;s:1:\\\"4\\\";}s:5:\\\"price\\\";a:4:{s:4:\\\"15-3\\\";s:2:\\\"23\\\";s:4:\\\"15-4\\\";s:3:\\\"234\\\";s:4:\\\"16-3\\\";s:4:\\\"2342\\\";s:4:\\\"16-4\\\";s:3:\\\"423\\\";}s:8:\\\"quantity\\\";a:4:{s:4:\\\"15-3\\\";s:4:\\\"4234\\\";s:4:\\\"15-4\\\";s:3:\\\"234\\\";s:4:\\\"16-3\\\";s:4:\\\"3423\\\";s:4:\\\"16-4\\\";s:3:\\\"423\\\";}s:6:\\\"number\\\";a:4:{s:4:\\\"15-3\\\";s:0:\\\"\\\";s:4:\\\"15-4\\\";s:0:\\\"\\\";s:4:\\\"16-3\\\";s:0:\\\"\\\";s:4:\\\"16-4\\\";s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('5', '1', '13', '<ul class=\"attributes-list list-paddingleft-2\"><li title=\" 自主实拍图\"><p>主图来源: 自主实拍图</p></li><li title=\" w0021\"><p>货号: w0021</p></li><li title=\" 通勤\"><p>风格: 通勤</p></li><li title=\" 韩版\"><p>通勤: 韩版</p></li><li title=\" 单件\"><p>组合形式: 单件</p></li><li title=\" 短裙(76-90厘米)\"><p>裙长: 短裙(76-90厘米)</p></li><li title=\" 长袖\"><p>袖长: 长袖</p></li><li title=\" 圆领\"><p>领型: 圆领</p></li><li title=\" 常规袖\"><p>袖型: 常规袖</p></li><li title=\" 套头\"><p>衣门襟: 套头</p></li><li title=\" 拼贴/拼接\"><p>流行元素/工艺: 拼贴/拼接</p></li><li title=\" 51%-70%\"><p>主成份含量: 51%-70%</p></li><li title=\" 棉\"><p>主材质: 棉</p></li><li title=\" 全黑色 上白下黑\"><p>颜色分类: 全黑色 上白下黑</p></li><li title=\" S（3天后发货） M（3天后发货） L（3天后发货） XL XXL XXXL\"><p>尺码: S（3天后发货） M（3天后发货</p></li></ul>', '', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:96:\\\"http://img04.taobaocdn.com/bao/uploaded/i4/11204025829849686/T1Y88_FXdXXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:83:\\\"http://img03.taobaocdn.com/imgextra/i3/705331204/T2rxoOXbxXXXXXXXXX_!!705331204.jpg\\\";i:2;s:83:\\\"http://img01.taobaocdn.com/imgextra/i1/705331204/T2pQMOXdhXXXXXXXXX_!!705331204.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:6:\\\"123123\\\";i:1;s:6:\\\"123123\\\";i:2;s:7:\\\"1231234\\\";}}', 'a:4:{s:2:\\\"id\\\";a:4:{i:0;s:2:\\\"15\\\";i:1;s:2:\\\"16\\\";i:2;s:1:\\\"3\\\";i:3;s:1:\\\"4\\\";}s:5:\\\"price\\\";a:4:{s:4:\\\"15-3\\\";s:3:\\\"123\\\";s:4:\\\"15-4\\\";s:4:\\\"1231\\\";s:4:\\\"16-3\\\";s:3:\\\"123\\\";s:4:\\\"16-4\\\";s:3:\\\"123\\\";}s:8:\\\"quantity\\\";a:4:{s:4:\\\"15-3\\\";s:3:\\\"123\\\";s:4:\\\"15-4\\\";s:5:\\\"23123\\\";s:4:\\\"16-3\\\";s:4:\\\"1123\\\";s:4:\\\"16-4\\\";s:3:\\\"123\\\";}s:6:\\\"number\\\";a:4:{s:4:\\\"15-3\\\";s:0:\\\"\\\";s:4:\\\"15-4\\\";s:0:\\\"\\\";s:4:\\\"16-3\\\";s:0:\\\"\\\";s:4:\\\"16-4\\\";s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('6', '1', '12', '<h2>我们初春上的这款连衣裙采用优质的彩棉羊毛绒面料（非毛线）， &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;色彩清新淡雅，很上档次的！</h2><h2> &nbsp; &nbsp;不是市面上那种含涤纶的羊毛绒磨毛，我们是定织定染的纯棉的，</h2><h2> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;这种面料我们是给外贸做的出口的，</h2><h2><span style=\"background-color:#ffff00;\">不掉色不起球的，大家可以拿样比较一下奥！</span></h2><h2><span style=\"background-color:#ffff00;\"> &nbsp;此款连衣裙采用当季最流行的条纹拼接时尚设计</span></h2><h2><br /><span style=\"background-color:#ff0000;\">本店郑重声明</span></h2><h2>这款衣服版型和质量都是非常的好</h2><h2>敢和淘宝商城去比质量 ，版型和做工如果比他差，我退款</h2><h2>我想和看到的亲说，这款yy在淘宝里面质量，版型都属一流，价格确是很低很低，我们是工厂直销把最大的利润让给了亲们，让亲们用事实说话，帮我们口碑流传！谢谢！</h2><p><img id=\"1\" class=\"ke_anchor\" name=\"ids-tag-m-1\" src=\"http://www.fc2.com/member/uploadfile/201310/d7440b8288.gif\" /></p><p><strong><span style=\"color:#ff0000;\"><span style=\"font-size:36.0px;\">s码适合体重80-95左右， &nbsp; &nbsp;m码适合体重95-110左右， &nbsp; &nbsp;L码适合体重110-125 左右</span></span></strong></p><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:2:{i:0;s:96:\\\"http://img01.taobaocdn.com/bao/uploaded/i1/15807021496885482/T138F8XyFdXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:83:\\\"http://img01.taobaocdn.com/imgextra/i1/788745807/T2pJzsXklaXXXXXXXX_!!788745807.jpg\\\";}s:3:\\\"pan\\\";a:2:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";}s:5:\\\"title\\\";a:2:{i:0;s:6:\\\"123123\\\";i:1;s:5:\\\"33232\\\";}}', 'a:4:{s:2:\\\"id\\\";a:4:{i:0;s:2:\\\"15\\\";i:1;s:1:\\\"3\\\";i:2;s:1:\\\"4\\\";i:3;s:1:\\\"5\\\";}s:5:\\\"price\\\";a:3:{s:4:\\\"15-3\\\";s:3:\\\"123\\\";s:4:\\\"15-4\\\";s:3:\\\"123\\\";s:4:\\\"15-5\\\";s:3:\\\"123\\\";}s:8:\\\"quantity\\\";a:3:{s:4:\\\"15-3\\\";s:2:\\\"12\\\";s:4:\\\"15-4\\\";s:3:\\\"123\\\";s:4:\\\"15-5\\\";s:3:\\\"123\\\";}s:6:\\\"number\\\";a:3:{s:4:\\\"15-3\\\";s:0:\\\"\\\";s:4:\\\"15-4\\\";s:0:\\\"\\\";s:4:\\\"15-5\\\";s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('7', '1', '21', '<div>辛辣的个性风格完美詮释女孩的时尚度</div><div></div><div> 时髦风尚的系带设计~复古英伦的贵族氛围，立即佔据心中的主角级</div><div></div><div>帅气真皮邦带，不仅好穿好脱满分优点</div><div></div><div>展现浓浓的时尚造型，交织出有别以往的简约魅力</div><div></div><div>完美圆楦8cm高挑系跟+耐磨防滑大底</div><div></div><div>前高后高完美线条，虽然是高跟也能走的稳定舒适育！</div><div></div><div>轻鬆修饰令人在意的腿部线条，大方show出性感修长双腿</div><div></div><div>Cool vs. Sexy的时尚英伦风格</div><div></div><div>搭配短裤，丝袜，内搭裤实搭有型的风尚LOOK</div><div></div><span style=\"line-height:1.5;\">全牛皮！还有完善的售后让您消掉后顾之忧！现在仅售全网最低的</span><span style=\"line-height:1.5;\">，还在犹豫吗？</span><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:96:\\\"http://img04.taobaocdn.com/bao/uploaded/i4/19926028567969889/T1orm1FcheXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:92:\\\"http://img03.taobaocdn.com/imgextra/i3/19926029029143203/T1VuS_FbBdXXXXXXXX_!!0-item_pic.jpg\\\";i:2;s:81:\\\"http://img01.taobaocdn.com/imgextra/i1/12209926/T2E3DaXmVaXXXXXXXX_!!12209926.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:8:\\\"12312323\\\";i:1;s:6:\\\"123123\\\";i:2;s:6:\\\"123123\\\";}}', 'a:4:{s:2:\\\"id\\\";a:3:{i:0;s:2:\\\"22\\\";i:1;s:2:\\\"23\\\";i:2;s:2:\\\"24\\\";}s:5:\\\"price\\\";a:3:{i:22;s:3:\\\"123\\\";i:23;s:2:\\\"12\\\";i:24;s:3:\\\"123\\\";}s:8:\\\"quantity\\\";a:3:{i:22;s:3:\\\"123\\\";i:23;s:2:\\\"12\\\";i:24;s:2:\\\"12\\\";}s:6:\\\"number\\\";a:3:{i:22;s:0:\\\"\\\";i:23;s:0:\\\"\\\";i:24;s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('8', '1', '21', '<p><span style=\"font-size:36.0px;\"><span style=\"color:#9900ff;\"><span style=\"color:#990000;\">新款驾到</span>！！</span></span></p><p><span style=\"font-size:36.0px;\"><span style=\"color:#9900ff;\">喜欢的赶紧拍下哦，刚到数量不多。蓝色上脚确实好看</span></span></p><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:96:\\\"http://img01.taobaocdn.com/bao/uploaded/i1/19926029070546881/T1tK_nFn4dXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:81:\\\"http://img02.taobaocdn.com/imgextra/i2/12209926/T282H3XgNbXXXXXXXX_!!12209926.jpg\\\";i:2;s:81:\\\"http://img02.taobaocdn.com/imgextra/i2/12209926/T2_9f_XX8bXXXXXXXX_!!12209926.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:4:\\\"1223\\\";i:1;s:6:\\\"123123\\\";i:2;s:5:\\\"23234\\\";}}', 'a:4:{s:2:\\\"id\\\";a:3:{i:0;s:2:\\\"23\\\";i:1;s:2:\\\"24\\\";i:2;s:2:\\\"25\\\";}s:5:\\\"price\\\";a:3:{i:23;s:3:\\\"123\\\";i:24;s:3:\\\"123\\\";i:25;s:3:\\\"123\\\";}s:8:\\\"quantity\\\";a:3:{i:23;s:3:\\\"123\\\";i:24;s:3:\\\"123\\\";i:25;s:4:\\\"1232\\\";}s:6:\\\"number\\\";a:3:{i:23;s:0:\\\"\\\";i:24;s:0:\\\"\\\";i:25;s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('9', '1', '21', '<p><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">花朵设计，优雅大方，</span></span></p><p style=\"text-align:center;\"><span style=\"color:#ff0000;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">尽显新娘高贵典雅的气质，是结婚婚纱旗袍的完美搭配，</span></span></span></p><p style=\"text-align:center;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">让每一位新娘在这紧张而幸福的时刻，</span></span></p><p style=\"text-align:center;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">更加魅力迷人。</span></span></p><p style=\"text-align:center;\"><span style=\"color:#ff9900;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">脚面的鞋带设计，可以轻松实现一鞋两穿，</span></span><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">多种风情。</span></span></span></p><p style=\"text-align:center;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">特别推荐脚瘦的MM，不要再害怕脚瘦，鞋子不跟脚的尴尬！</span></span></p><p style=\"text-align:center;\"><span style=\"color:#ff9900;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">小小的一根带子，让鞋子服服帖帖，让您无忧做漂亮新娘！</span></span></span></p><p style=\"text-align:center;\"><span style=\"color:#ff0000;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">高跟婚鞋：</span></span></span></p><p style=\"text-align:center;\"><span style=\"color:#ff0000;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">货号：189-16</span></span></span></p><p style=\"text-align:center;\"><span style=\"color:#ff0000;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:simhei;\">跟高：8-12CM</span></span></span></p><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:96:\\\"http://img01.taobaocdn.com/bao/uploaded/i1/18026019898766266/T13o0uXqtfXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:83:\\\"http://img02.taobaocdn.com/imgextra/i2/670298026/T2iPlhXr0XXXXXXXXX_!!670298026.jpg\\\";i:2;s:83:\\\"http://img04.taobaocdn.com/imgextra/i4/670298026/T2eg7QXg8aXXXXXXXX_!!670298026.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:6:\\\"123123\\\";i:1;s:6:\\\"123123\\\";i:2;s:9:\\\"121323123\\\";}}', 'a:4:{s:2:\\\"id\\\";a:3:{i:0;s:2:\\\"23\\\";i:1;s:2:\\\"24\\\";i:2;s:2:\\\"25\\\";}s:5:\\\"price\\\";a:3:{i:23;s:3:\\\"123\\\";i:24;s:3:\\\"121\\\";i:25;s:3:\\\"123\\\";}s:8:\\\"quantity\\\";a:3:{i:23;s:3:\\\"123\\\";i:24;s:3:\\\"123\\\";i:25;s:2:\\\"23\\\";}s:6:\\\"number\\\";a:3:{i:23;s:0:\\\"\\\";i:24;s:0:\\\"\\\";i:25;s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('10', '1', '25', '<p>感谢亲们在淘宝这个大坑中找到了我们。小店需要各位亲们的支持哦当亲们找到这款包包是我们的荣幸如果亲们对这款包包感兴趣可以联系店长了解细节 <br /></p><p>感谢亲的光临</p><p>------------------------------------------------------------------------------------------</p><p>*关于MIXIUBAG*</p><p><br /></p><p>卖自己喜欢的东西 遇眼光相似的人</p><p><br /></p><p>心灵相通的感悟加上竭诚服务的真心</p><p>我们不需要华丽的图片，疯狂的销量</p><p><br /></p><p>需要的是各位亲的青睐<br />我的MIXIU小铺<br />让生活更加美好</p><p>------------------------------------------------------------------------------------------</p><p><br /></p><p>关于快递：小店默认圆通，全峰快递。不到的地方或需要发其他快递的请亲务必告知客服。</p><p>西藏，新疆，青海，贵州等不参加任何包邮活动，发货需要补邮费差价哦</p><p><br /></p><p>------------------------------------------------------------------------------------------</p><p>我们的保证：保证超强质量，保证描述一致，保证精细做工！绝不偷工减料。</p><p><br /></p><p>我们的承诺：只要有任何质量问题，无需理由，我们都会负责承担退货费用！</p><p><br /></p><p>我们的服务：我们已经加入消费者保障和七天无理由退换服务！亲还在等什么！</p><p><br /></p><p><br /></p>', 'Nd1231231', 'a:3:{s:4:\\\"file\\\";a:1:{i:0;s:96:\\\"http://img01.taobaocdn.com/bao/uploaded/i1/10951028968361396/T1RKLlFhdXXXXXXXXX_!!0-item_pic.jpg\\\";}s:3:\\\"pan\\\";a:1:{i:0;s:0:\\\"\\\";}s:5:\\\"title\\\";a:1:{i:0;s:9:\\\"123123123\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('11', '1', '25', '<div id=\"attributes\" class=\"attributes\"><ul class=\"attributes-list list-paddingleft-2\"><li title=\" 青年\"><p>适用人群: 青年</p></li><li title=\" 女\"><p>性别: 女</p></li><li title=\" 手提包\"><p>款式: 手提包</p></li><li title=\" PU\"><p>质地: PU</p></li><li title=\" 亮面\"><p>PU特征: 亮面</p></li><li title=\" 硬把\"><p>提拎部件: 硬把</p></li><li title=\" 拉链\"><p>箱包开袋方式: 拉链</p></li><li title=\" 拉链暗袋 手机袋 证件袋 相机插袋\"><p>内部结构: 拉链暗袋 手机袋 证件袋 相机插袋</p></li><li title=\" 内贴袋\"><p>外袋种类: 内贴袋</p></li><li title=\" 撞色\"><p>流行元素: 撞色</p></li><li title=\" 纯色无图案\"><p>箱包图案: 纯色无图案</p></li><li title=\" 玫瑰红 海之蓝 靓丽红 俏丽粉 优雅杏\"><p>颜色分类: 玫瑰红 海之蓝 靓丽红 俏丽粉 优雅杏</p></li><li title=\" 有\"><p>有无夹层: 有</p></li><li title=\" 硬\"><p>硬度: 硬</p></li><li title=\" 否\"><p>可否折叠: 否</p></li><li title=\" 101-300元\"><p>价格区间: 101-300元</p></li><li title=\" 全新\"><p>成色: 全新</p></li><li title=\" 休闲/街头\"><p>箱包场合: 休闲/街头</p></li><li title=\" 中（最长边30-50cm）\"><p>包袋大小: 中（最长边30-50cm）</p></li><li title=\" 最终女孩\"><p>品牌: 最终女孩</p></li><li title=\" 复古风\"><p>箱包风格: 复古风</p></li><li title=\" 横款方形\"><p>箱包外形: 横款方形</p></li><li title=\" 单根\"><p>箱包肩带样式: 单根</p></li><li title=\" 涤棉\"><p>里料质地: 涤棉</p></li></ul></div><p><br /></p>', 'Ga1231231', 'a:3:{s:4:\\\"file\\\";a:1:{i:0;s:96:\\\"http://img02.taobaocdn.com/bao/uploaded/i2/19559028689056714/T1wu2fFflbXXXXXXXX_!!1-item_pic.gif\\\";}s:3:\\\"pan\\\";a:1:{i:0;s:0:\\\"\\\";}s:5:\\\"title\\\";a:1:{i:0;s:8:\\\"12312313\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('12', '1', '25', '<div id=\"attributes\" class=\"attributes\"><ul class=\"attributes-list list-paddingleft-2\"><li title=\" 女\"><p>性别: 女</p></li><li title=\" 单肩包\"><p>款式: 单肩包</p></li><li title=\" 单肩手提\"><p>背包方式: 单肩手提</p></li><li title=\" 羊皮\"><p>质地: 羊皮</p></li><li title=\" 锁链式提把\"><p>提拎部件: 锁链式提把</p></li><li title=\" 拉链\"><p>箱包开袋方式: 拉链</p></li><li title=\" 拉链暗袋\"><p>内部结构: 拉链暗袋</p></li><li title=\" 立体袋\"><p>外袋种类: 立体袋</p></li><li title=\" 菱格\"><p>流行元素: 菱格</p></li><li title=\" 纯色无图案\"><p>箱包图案: 纯色无图案</p></li><li title=\" 果绿 玫红色 蓝色\"><p>颜色分类: 果绿 玫红色 蓝色</p></li><li title=\" 有\"><p>有无夹层: 有</p></li><li title=\" 软\"><p>硬度: 软</p></li><li title=\" 否\"><p>可否折叠: 否</p></li><li title=\" 501-2000元\"><p>价格区间: 501-2000元</p></li><li title=\" 全新\"><p>成色: 全新</p></li><li title=\" 休闲/街头\"><p>箱包场合: 休闲/街头</p></li><li title=\" 小（最长边20-30cm）\"><p>包袋大小: 小（最长边20-30cm）</p></li><li title=\" 艾泽拉斯 Aziroth\"><p>品牌: 艾泽拉斯 Aziroth</p></li><li title=\" AST1313\"><p>货号: AST1313</p></li><li title=\" 小清新\"><p>箱包风格: 小清新</p></li><li title=\" 横款方形\"><p>箱包外形: 横款方形</p></li><li title=\" 涤棉\"><p>里料质地: 涤棉</p></li><li title=\" 28cm长x20cm高x10cm宽\"><p>箱包尺寸: 28cm长x20cm高x10cm宽</p></li></ul></div><p><br /></p>', 'NT1231231', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:96:\\\"http://img04.taobaocdn.com/bao/uploaded/i4/14810024154237319/T11Kq3Xw0eXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:92:\\\"http://img02.taobaocdn.com/imgextra/i2/14810025425911758/T1_yyOXwdaXXXXXXXX_!!0-item_pic.jpg\\\";i:2;s:83:\\\"http://img03.taobaocdn.com/imgextra/i3/760894810/T2GEj8XaxXXXXXXXXX_!!760894810.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:4:\\\"1`21\\\";i:1;s:4:\\\"1232\\\";i:2;s:7:\\\"1231231\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('13', '1', '25', '<div id=\"attributes\" class=\"attributes\"><ul class=\"attributes-list list-paddingleft-2\"><li title=\" 女\"><p>性别: 女</p></li><li title=\" 手提包\"><p>款式: 手提包</p></li><li title=\" PU\"><p>质地: PU</p></li><li title=\" 软面\"><p>PU特征: 软面</p></li><li title=\" 软把\"><p>提拎部件: 软把</p></li><li title=\" 拉链\"><p>箱包开袋方式: 拉链</p></li><li title=\" 拉链暗袋 手机袋 证件袋 夹层拉链袋\"><p>内部结构: 拉链暗袋 手机袋 证件袋 夹层拉链袋</p></li><li title=\" 带盖袋\"><p>外袋种类: 带盖袋</p></li><li title=\" 撞色\"><p>流行元素: 撞色</p></li><li title=\" 纯色无图案\"><p>箱包图案: 纯色无图案</p></li><li title=\" 桔黄 桔红 绿色 明黄 黑色 杏粉 蓝色 玫红 米色\"><p>颜色分类: 桔黄 桔红 绿色 明黄 黑色 杏粉 蓝色 玫红 米色</p></li><li title=\" 有\"><p>有无夹层: 有</p></li><li title=\" 软\"><p>硬度: 软</p></li><li title=\" 可\"><p>可否折叠: 可</p></li><li title=\" 100元以下\"><p>价格区间: 100元以下</p></li><li title=\" 全新\"><p>成色: 全新</p></li><li title=\" 休闲/街头\"><p>箱包场合: 休闲/街头</p></li><li title=\" 中（最长边30-50cm）\"><p>包袋大小: 中（最长边30-50cm）</p></li><li title=\" sunnyshop/阳光美包\"><p>品牌: sunnyshop/阳光美包</p></li><li title=\" 352\"><p>货号: 352</p></li><li title=\" 日韩风范\"><p>箱包风格: 日韩风范</p></li><li title=\" 横款方形\"><p>箱包外形: 横款方形</p></li><li title=\" 单根\"><p>箱包肩带样式: 单根</p></li><li title=\" 涤纶\"><p>里料质地: 涤纶</p></li><li title=\" 30cm长x21cm高x13cm宽\"><p>箱包尺寸: 30cm长x21cm高x13cm宽</p></li></ul></div><p><br /></p>', '1231231', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:96:\\\"http://img03.taobaocdn.com/bao/uploaded/i3/11957028655465778/T1K9PiFXBeXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:81:\\\"http://img01.taobaocdn.com/imgextra/i1/52171957/T2GgRGXqdXXXXXXXXX_!!52171957.jpg\\\";i:2;s:81:\\\"http://img04.taobaocdn.com/imgextra/i4/52171957/T24xNFXyxXXXXXXXXX_!!52171957.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:4:\\\"1111\\\";i:1;s:4:\\\"2222\\\";i:2;s:3:\\\"333\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('14', '1', '25', '<div id=\"attributes\" class=\"attributes\"><ul class=\"attributes-list list-paddingleft-2\"><li title=\" 青年\"><p>适用人群: 青年</p></li><li title=\" 女\"><p>性别: 女</p></li><li title=\" 斜挎包\"><p>款式: 斜挎包</p></li><li title=\" 斜挎手提\"><p>背包方式: 斜挎手提</p></li><li title=\" 牛皮\"><p>质地: 牛皮</p></li><li title=\" 牛二层皮\"><p>材质特征: 牛二层皮</p></li><li title=\" 装卸式提把\"><p>提拎部件: 装卸式提把</p></li><li title=\" 拉链\"><p>箱包开袋方式: 拉链</p></li><li title=\" 拉链暗袋 手机袋 证件袋\"><p>内部结构: 拉链暗袋 手机袋 证件袋</p></li><li title=\" 内贴袋\"><p>外袋种类: 内贴袋</p></li><li title=\" 糖果\"><p>流行元素: 糖果</p></li><li title=\" 纯色无图案\"><p>箱包图案: 纯色无图案</p></li><li title=\" 浅绿色 米白 粉红 黄色\"><p>颜色分类: 浅绿色 米白 粉红 黄色</p></li><li title=\" 无\"><p>有无夹层: 无</p></li><li title=\" 硬\"><p>硬度: 硬</p></li><li title=\" 否\"><p>可否折叠: 否</p></li><li title=\" 101-300元\"><p>价格区间: 101-300元</p></li><li title=\" 全新\"><p>成色: 全新</p></li><li title=\" 休闲/街头\"><p>箱包场合: 休闲/街头</p></li><li title=\" 茵佳怡\"><p>品牌: 茵佳怡</p></li><li title=\" JC309616\"><p>货号: JC309616</p></li><li title=\" 日韩风范\"><p>箱包风格: 日韩风范</p></li><li title=\" 贝壳\"><p>箱包外形: 贝壳</p></li><li title=\" 涤纶\"><p>里料质地: 涤纶</p></li></ul></div><p><br /></p>', 'T555555', 'a:3:{s:4:\\\"file\\\";a:2:{i:0;s:96:\\\"http://img04.taobaocdn.com/bao/uploaded/i4/14410028736686291/T1W6fiFoVdXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:83:\\\"http://img04.taobaocdn.com/imgextra/i4/689704410/T2YTFEXCNXXXXXXXXX_!!689704410.jpg\\\";}s:3:\\\"pan\\\";a:2:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";}s:5:\\\"title\\\";a:2:{i:0;s:5:\\\"21231\\\";i:1;s:4:\\\"3333\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('15', '1', '42', '<h2><span style=\"font-family:microsoft yahei;\"><strong><span style=\"font-size:18.0px;\">雅芳小红裙走珠香水</span></strong></span></h2><p><span style=\"font-family:microsoft yahei;\"></span>【香 调】热情花香调 <br /> 【前 味】轻柔的红树莓，柑橘及洋李汁带出，清醇扑鼻 <br /> 【中 味】纯正保加利亚玫瑰，红茉莉，白铃兰，繁花汇集 <br /> 【后 味】红檀香，琥珀香草和麝香的性感诱惑 </p><h2 style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:微软雅黑;font-size:20.0px;color:#000000;width:540.0px;line-height:30.0px;max-height:120.0px;overflow-x:hidden;overflow-y:hidden;word-wrap:break-word;word-break:break-all;margin-top:0.0px;margin-bottom:10.0px;\"><span style=\"font-size:18.0px;\">雅芳香品走珠香水小黑裙</span></h2><p> 【香 调】花果木香调 <br /> 【前 味】金银花，樱草，杏花，非洲姜花 <br /> 【中 味】粉牡丹，依兰，栀子花，印度尼西亚茉莉 <br /> 【后 味】羊仔麝香，汤加豆，日本梅子，瓜哇檀香，奶香木 &nbsp;</p><h2><span style=\"font-size:18.0px;\"><span style=\"font-family:microsoft yahei;\"><strong>雅芳小黑裙香水10ml限量版</strong></span></span></h2><p><span style=\"font-size:18.0px;\"><span style=\"font-family:microsoft yahei;\"></span></span>【香 调】花果木香调 <br /> 【前 味】金银花，樱草，杏花，非洲姜花 <br /> 【中 味】粉牡丹，依兰，栀子花，印度尼西亚茉莉 <br /> 【后 味】羊仔麝香，汤加豆，日本梅子，瓜哇檀香，奶香木 &nbsp;</p><h2 style=\"font-size:20.0px;outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:微软雅黑;color:#000000;width:540.0px;line-height:30.0px;max-height:120.0px;overflow-x:hidden;overflow-y:hidden;word-wrap:break-word;word-break:break-all;margin-top:0.0px;margin-bottom:10.0px;\"><span style=\"font-size:18.0px;\">雅芳地球女人走珠香水</span></h2><p><span style=\"font-size:18.0px;\"></span>【香 调】花果香调 <br /> 【前 味】加州无花果、 意大利佛手柑、 巴西香橙 <br /> 【中 味】英国甜豌豆花蕾、 法国苹果花苞、 安地斯山脉、雪花、埃及茉莉、中国月桂花 <br /> 【后 味】波斯蜜桃、 马达加斯加香草、麝香 </p><h2 style=\"font-size:20.0px;outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:微软雅黑;color:#000000;width:540.0px;line-height:30.0px;max-height:120.0px;overflow-x:hidden;overflow-y:hidden;word-wrap:break-word;word-break:break-all;margin-top:0.0px;margin-bottom:10.0px;\"><span style=\"font-size:18.0px;\">雅芳走珠香水白裙之恋</span></h2><p><span style=\"font-size:18.0px;\"></span>【香 &nbsp; &nbsp;调】：东方香调 <br /> 【前 &nbsp; &nbsp;味】：香柠、甘桔 <br /> 【中 &nbsp; &nbsp;味】：托斯卡尼白色蒲公英、香水百合、白牡丹 <br /> 【尾 &nbsp; &nbsp;味】：白木、香草、檀香、麝香 </p><h2 style=\"font-size:20.0px;outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:微软雅黑;color:#000000;width:540.0px;line-height:30.0px;max-height:120.0px;overflow-x:hidden;overflow-y:hidden;word-wrap:break-word;word-break:break-all;margin-top:0.0px;margin-bottom:10.0px;\"><span style=\"font-size:18.0px;\">雅芳小白裙香水10ml限量版</span></h2><p><span style=\"font-size:18.0px;\"></span>【香 &nbsp; &nbsp;调】：东方香调 <br /> 【前 &nbsp; &nbsp;味】：香柠、甘桔 <br /> 【中 &nbsp; &nbsp;味】：托斯卡尼白色蒲公英、香水百合、白牡丹 <br /> 【尾 &nbsp; &nbsp;味】：白木、香草、檀香、麝香 </p><h2 style=\"font-size:20.0px;outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:微软雅黑;color:#000000;width:540.0px;line-height:30.0px;max-height:120.0px;overflow-x:hidden;overflow-y:hidden;word-wrap:break-word;word-break:break-all;margin-top:0.0px;margin-bottom:10.0px;\"><span style=\"font-size:18.0px;\">雅芳梦之旅走珠香水</span></h2><p><span style=\"font-size:18.0px;\"></span>【香 调】迷人花香调 <br /> 【前 味】柑橘，蜜桃，芒果 <br /> 【中 味】小苍兰，栀子花，橙花 <br /> 【后 味】麝香，乳木檀香，琥珀 </p><h2 style=\"font-size:20.0px;outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:微软雅黑;color:#000000;width:540.0px;line-height:30.0px;max-height:120.0px;overflow-x:hidden;overflow-y:hidden;word-wrap:break-word;word-break:break-all;margin-top:0.0px;margin-bottom:10.0px;\"><span style=\"font-size:18.0px;\">雅芳小红裙香水10ml限量版</span></h2><p><span style=\"font-size:18.0px;\"></span>【香 调】热情花香调 <br /> 【前 味】轻柔的红树莓，柑橘及洋李汁带出，清醇扑鼻 <br /> 【中 味】纯正保加利亚玫瑰，红茉莉，白铃兰，繁花汇集 <br /> 【后 味】红檀香，琥珀香草和麝香的性感诱惑 </p><h2 style=\"font-size:20.0px;outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:微软雅黑;color:#000000;width:540.0px;line-height:30.0px;max-height:120.0px;overflow-x:hidden;overflow-y:hidden;word-wrap:break-word;word-break:break-all;margin-top:0.0px;margin-bottom:10.0px;\"><span style=\"font-size:18.0px;\">雅芳鸡尾酒香系列玫瑰露</span></h2><p><span style=\"font-size:18.0px;\"></span></p><div style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:verdana   宋体;font-size:12.0px;color:#000000;line-height:24.0px;padding:0.0px;margin:0.0px;\"><span style=\"font-size:14.0px;\">【香调】 迷人花果香调</span></div><div style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:verdana   宋体;font-size:12.0px;color:#000000;line-height:24.0px;padding:0.0px;margin:0.0px;\"><span style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:arial;padding:0.0px;margin:0.0px;\"><span style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:verdana   宋体;font-size:14.0px;padding:0.0px;margin:0.0px;\">【前调】 新鲜菠萝，芒果和番石榴</span></span></div><div style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:verdana   宋体;font-size:12.0px;color:#000000;line-height:24.0px;padding:0.0px;margin:0.0px;\"><span style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:arial;padding:0.0px;margin:0.0px;\"><span style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:verdana   宋体;font-size:14.0px;padding:0.0px;margin:0.0px;\">【中调】小苍兰，玫瑰花瓣，紫罗兰</span></span></div><div style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:verdana   宋体;font-size:12.0px;color:#000000;line-height:24.0px;padding:0.0px;margin:0.0px;\"><span style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:arial;padding:0.0px;margin:0.0px;\"><span style=\"outline-style:none;outline-width:initial;outline-color:initial;list-style-type:none;list-style-position:initial;list-style-image:initial;border-top-style:none;border-right-style:none;border-bottom-style:none;border-left-style:none;font-family:verdana   宋体;font-size:14.0px;padding:0.0px;margin:0.0px;\">【后调】 木质香，麝香，香草</span></span></div>', '', 'a:3:{s:4:\\\"file\\\";a:2:{i:0;s:94:\\\"http://gi3.md.alicdn.com/bao/uploaded/i3/12659039022320170/T1HlCoFfFeXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:81:\\\"http://gi1.md.alicdn.com/imgextra/i1/763042659/T2TMu9XnpXXXXXXXXX_!!763042659.jpg\\\";}s:3:\\\"pan\\\";a:2:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";}s:5:\\\"title\\\";a:2:{i:0;s:4:\\\"1111\\\";i:1;s:4:\\\"3333\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('16', '1', '42', '<p style=\"text-align:center;\"><span style=\"color:#0b5394;\"><strong><span style=\"font-family:kaiti_gb2312;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:microsoft yahei;\"><span style=\"font-size:24.0px;\"><span style=\"color:#ff0000;\"><span style=\"line-height:1.5;\"><span style=\"color:#ff0000;\"><strong><span style=\"font-size:36.0px;\">正品格拉斯固体香膏~8.5元为批发价，6、7元钱都是假货！此款店铺为全网最低了，</span></strong></span></span></span></span></span></span></span></strong></span></p><p style=\"text-align:center;\"><span style=\"color:#0b5394;\"><strong><span style=\"font-family:kaiti_gb2312;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:microsoft yahei;\"><span style=\"font-size:24.0px;\"><span style=\"color:#ff0000;\"><span style=\"line-height:1.5;\"><span style=\"color:#ff0000;\"><strong><span style=\"font-size:36.0px;\">假一赔万，支持各种渠道验货。不再回答是不是正品的问题了~</span></strong></span></span></span></span></span></span></span></strong></span></p><p><span style=\"color:#0b5394;\"><strong><span style=\"font-family:kaiti_gb2312;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:microsoft yahei;\"><span style=\"font-size:24.0px;\"><span style=\"color:#ff0000;\"><span style=\"line-height:1.5;\"></span></span></span></span></span></span></strong></span></p><p><span style=\"color:#0b5394;\"><strong><span style=\"font-family:kaiti_gb2312;\"><span style=\"font-size:24.0px;\"><span style=\"font-family:microsoft yahei;\"><span style=\"font-size:24.0px;\"><span style=\"color:#ff0000;\"><span style=\"line-height:1.5;\">原罐体上所印刷的夏莫尼香膏官网服务器在国外，造成有时登录不上，加上没有专门开辟真伪查询，现已经正式放弃使用，</span><span style=\"line-height:1.5;\">现在中国建立一个新的夏莫尼香膏官方域名</span></span><a style=\"line-height:1.5;font-family:宋体;font-size:13px;\" title=\"阿里旺旺无法确定该链接的安全性\" target=\"_blank\"><span style=\"color:#000000;\">www.chamonix-france.net（把网址复制到浏览器打开）</span></a><span style=\"color:#ff0000;\"><span style=\"line-height:1.5;\">现有铁盒底盖包装会陆续修改，真伪查询以产地证明和生产日期为主如下图：（除少量三四款香型为前2月生产，罐身塑封上还没有打印生产日期和仿伪码，其它香型塑封上均已打印好日期及仿伪码。）</span></span></span></span></span></span></strong></span></p><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:1:{i:0;s:96:\\\"http://img01.taobaocdn.com/bao/uploaded/i1/19114026056555156/T1NGpAFnxeXXXXXXXX_!!0-item_pic.jpg\\\";}s:3:\\\"pan\\\";a:1:{i:0;s:0:\\\"\\\";}s:5:\\\"title\\\";a:1:{i:0;s:6:\\\"123123\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('17', '1', '42', '<div id=\"attributes\" class=\"attributes\"><ul class=\"attributes-list list-paddingleft-2\"><li title=\"YangSang/杨桑 矿物丝柔散粉 13G\"><p>产品名称：YangSang/杨桑 矿物丝柔散...</p></li><li title=\" 2号柔白（送散粉扑1个） 2号柔白（送面膜1片） 1号蜜色（送散粉扑1个） 1号蜜色（送面膜1片） 1号蜜色（适合肤色自然、偏黄） 2号柔白（适合肤色偏白）\"><p>颜色分类: 2号柔白（送散粉扑1个） 2号柔白（送面膜1片） 1号蜜色（送散粉扑1个） 1号蜜色（送面膜1片） 1号蜜色（适合肤色自然、偏黄） 2号柔白（适合肤色偏白）</p></li><li title=\" 哑光\"><p>蜜粉/散粉分类: 哑光</p></li><li title=\" 正常规格\"><p>彩妆规格: 正常规格</p></li><li title=\" YANGSANG/杨桑\"><p>品牌: YANGSANG/杨桑</p></li><li title=\" 矿物丝柔散粉 13G\"><p>蜜粉/散粉单品: 矿物丝柔散粉 13G</p></li><li title=\" 控油 美白 其他功效 防晒\"><p>化妆品功效: 控油 美白 其他功效 防晒</p></li><li title=\" 持久度 使用效果\"><p>化妆品特性: 持久度 使用效果</p></li><li title=\" 所有肤质\"><p>适合肤质: 所有肤质</p></li><li title=\" 中国\"><p>省份: 中国</p></li><li title=\" 三年\"><p>保质期时间: 三年</p></li></ul></div><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:3:{i:0;s:96:\\\"http://img03.taobaocdn.com/bao/uploaded/i3/19556029081387003/T1fmneFdJeXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:83:\\\"http://img02.taobaocdn.com/imgextra/i2/236589556/T2m2lyXu0aXXXXXXXX_!!236589556.jpg\\\";i:2;s:83:\\\"http://img01.taobaocdn.com/imgextra/i1/236589556/T28Y4dXvlaXXXXXXXX_!!236589556.jpg\\\";}s:3:\\\"pan\\\";a:3:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";i:2;s:0:\\\"\\\";}s:5:\\\"title\\\";a:3:{i:0;s:4:\\\"1111\\\";i:1;s:4:\\\"2322\\\";i:2;s:3:\\\"333\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('18', '1', '45', '<p>一支19.9，两支35拍下自动优惠，无须改价！套餐：购买BEELY终极眼线膏+BEELY七效合一祼妆BB霜套餐仅需45元 →点此进入←</p>', '', 'a:3:{s:4:\\\"file\\\";a:2:{i:0;s:96:\\\"http://img04.taobaocdn.com/bao/uploaded/i4/19086029468047851/T1S0GxFbJgXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:63:\\\"http://img.taobaocdn.com/imgextra/T165PjXaJfXXXvB36X_085335.jpg\\\";}s:3:\\\"pan\\\";a:2:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";}s:5:\\\"title\\\";a:2:{i:0;s:5:\\\"12323\\\";i:1;s:4:\\\"3444\\\";}}', '', '');
INSERT INTO `om_1_shop_data_0` VALUES ('19', '1', '59', '<p><span style=\"line-height:27.0px;font-family:microsoft yahei;color:#cc0000;font-size:18.0px;text-decoration:underline;text-decoration:underline;font-size:18px;color:#0000ff;\"><span style=\"font-family:simhei;\"><span style=\"font-size:18.0px;\"><strong><span style=\"font-size:36.0px;color:#ff0000;font-family:微软雅黑;\">送大礼包</span>：</strong></span></span></span><span style=\"font-size:24.0px;\"><strong style=\"color:#404040;\"><span style=\"color:#ff0000;\"><span style=\"font-family:宋体;\"><span style=\"font-family:微软雅黑;font-weight:normal;\"><span style=\"font-family:microsoft yahei;\">送：保护膜+电容笔+电影支架+读卡器+精美挂饰+</span></span></span></span></strong></span><span style=\"font-size:24.0px;\"><strong style=\"color:#404040;\"><span style=\"color:#ff0000;\"><span style=\"font-family:宋体;\"><span style=\"font-family:微软雅黑;font-weight:normal;\"><span style=\"font-family:microsoft yahei;\">翻盖皮套+2600毫安移动电源+到货24小时全满分五星好评返现20元+送一张双色球彩票(五星满分好评满10字以上系统自动赠送)</span></span></span></span></strong></span></p><div style=\"color:#404040;text-align:center;\" align=\"center\"><span style=\"font-size:24.0px;font-family:simhei;color:#000000;font-family:simhei;color:#000000;color:#000000;\"><strong><strong><span style=\"color:#0000ff;font-family:微软雅黑;\"><strong style=\"line-height:1.5;color:#ff0000;\"><span style=\"background-color:#ff0000;color:#ffff00;\"><span style=\"line-height:1.5;\">华为定制版，运行内存</span></span></strong><strong style=\"line-height:1.5;color:#ff0000;\"><span style=\"background-color:#ff0000;color:#ffff00;\">1G运行内存</span></strong><strong style=\"line-height:1.5;color:#ff0000;\"><span style=\"background-color:#ff0000;color:#ffff00;\"><span style=\"line-height:1.5;\">，机身4G。如果您要官方版亲不用往下看了，官方是800元左右！</span></span></strong></span></strong></strong></span></div><p><br /></p>', '', 'a:3:{s:4:\\\"file\\\";a:2:{i:0;s:70:\\\"http://img.taobaocdn.com/bao/uploaded/i6/T1od5LFhNbXXc5RhQ0_035502.jpg\\\";i:1;s:70:\\\"http://img.taobaocdn.com/bao/uploaded/i3/T1uz1IFbdhXXaajrA0_034402.jpg\\\";}s:3:\\\"pan\\\";a:2:{i:0;s:0:\\\"\\\";i:1;s:0:\\\"\\\";}s:5:\\\"title\\\";a:2:{i:0;s:6:\\\"121323\\\";i:1;s:6:\\\"123123\\\";}}', 'a:4:{s:2:\\\"id\\\";a:3:{i:0;s:2:\\\"37\\\";i:1;s:2:\\\"42\\\";i:2;s:2:\\\"45\\\";}s:5:\\\"price\\\";a:1:{s:8:\\\"37-42-45\\\";s:3:\\\"222\\\";}s:8:\\\"quantity\\\";a:1:{s:8:\\\"37-42-45\\\";s:2:\\\"22\\\";}s:6:\\\"number\\\";a:1:{s:8:\\\"37-42-45\\\";s:0:\\\"\\\";}}', '');
INSERT INTO `om_1_shop_data_0` VALUES ('20', '1', '59', '<ul class=\"attributes-list list-paddingleft-2\"><li title=\"MIUI/小米 2S(MI2S)\"><p>产品名称：MIUI/小米 2S(MI2S)</p></li><li title=\" MIUI/小米\"><p>品牌: MIUI/小米</p></li><li title=\" 2S(MI2S)\"><p> 型号: 2S(MI2S)</p></li><li title=\" 1001-2000元\"><p>手机价格区间: 1001-2000元</p></li><li title=\" 2013年\"><p>上市时间: 2013年</p></li><li title=\" 4月\"><p>13年上市月份: 4月</p></li><li title=\" 联通3G GSM/WCDMA(3G)\"><p>网络类型: 联通3G GSM/WCDMA(3G)</p></li><li title=\" 直板\"><p>外观样式: 直板</p></li><li title=\" 4.3英寸\"><p>主屏尺寸: 4.3英寸</p></li><li title=\" 白色 黑色\"><p>机身颜色: 白色 黑色</p></li><li title=\" 官方标配 套餐一 套餐二 套餐五\"><p>手机套餐: 官方标配 套餐一 套餐二 套餐五</p></li><li title=\" 800w-1300w\"><p>后置摄像头: 800w-1300w</p></li><li title=\" Android/安卓\"><p>操作系统: Android/安卓</p></li><li title=\" GPRS上网\"><p>高级功能: GPRS上网</p></li><li title=\" 全新\"><p>宝贝成色: 全新</p></li><li title=\" 店铺三包\"><p>售后服务: 店铺三包</p></li><li title=\" 电容式触摸屏\"><p>触摸屏: 电容式触摸屏</p></li><li title=\" 2G\"><p>运行内存RAM: 2G</p></li><li title=\" 16G 32G\"><p>机身内存: 16G 32G</p></li><li title=\" 虚拟触屏键盘\"><p>键盘类型: 虚拟触屏键盘</p></li><li title=\" 普通(大于1cm)\"><p>厚度: 普通(大于1cm)</p></li><li title=\" 1280×720像素\"><p>主屏分辨率: 1280×720像素</p></li><li title=\" 3G\"><p>手机类型: 3G</p></li><li title=\" 可拆卸式电池\"><p>电池类型: 可拆卸式电池</p></li><li title=\" 双摄像头（前后）\"><p>摄像头类型: 双摄像头（前后）</p></li><li title=\" 1080P(全高清D5)\"><p>视频拍摄: 1080P(全高清D5)</p></li><li title=\" 单卡双模\"><p>网络模式: 单卡双模</p></li><li title=\" 四核\"><p>cpu核心数: 四核</p></li><li title=\" 1.7G\"><p>四核cpu频率: 1.7G</p></li><li title=\" 中国大陆\"><p>版本: 中国大陆</p></li></ul><p><br /></p>', '', 'a:2:{s:4:\\\"file\\\";a:2:{i:0;s:96:\\\"http://img01.taobaocdn.com/bao/uploaded/i1/19892026520657388/T1MlmdFitbXXXXXXXX_!!0-item_pic.jpg\\\";i:1;s:83:\\\"http://img02.taobaocdn.com/imgextra/i2/282539892/T2hqE5XXBXXXXXXXXX_!!282539892.jpg\\\";}s:5:\\\"title\\\";a:2:{i:0;s:8:\\\"12312312\\\";i:1;s:9:\\\"213123123\\\";}}', 'a:4:{s:2:\\\"id\\\";a:5:{i:0;s:2:\\\"36\\\";i:1;s:2:\\\"37\\\";i:2;s:2:\\\"42\\\";i:3;s:2:\\\"43\\\";i:4;s:2:\\\"45\\\";}s:5:\\\"price\\\";a:4:{s:8:\\\"36-42-45\\\";s:3:\\\"123\\\";s:8:\\\"36-43-45\\\";s:4:\\\"1231\\\";s:8:\\\"37-42-45\\\";s:4:\\\"2312\\\";s:8:\\\"37-43-45\\\";s:4:\\\"3123\\\";}s:8:\\\"quantity\\\";a:4:{s:8:\\\"36-42-45\\\";s:3:\\\"123\\\";s:8:\\\"36-43-45\\\";s:3:\\\"123\\\";s:8:\\\"37-42-45\\\";s:3:\\\"312\\\";s:8:\\\"37-43-45\\\";s:3:\\\"123\\\";}s:6:\\\"number\\\";a:4:{s:8:\\\"36-42-45\\\";s:0:\\\"\\\";s:8:\\\"36-43-45\\\";s:0:\\\"\\\";s:8:\\\"37-42-45\\\";s:0:\\\"\\\";s:8:\\\"37-43-45\\\";s:0:\\\"\\\";}}', 'a:11:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:3:\\\"3_1\\\";s:1:\\\"1\\\";s:3:\\\"3_2\\\";s:1:\\\"2\\\";s:3:\\\"3_3\\\";s:1:\\\"3\\\";s:3:\\\"3_4\\\";s:1:\\\"4\\\";s:3:\\\"4_5\\\";s:1:\\\"2\\\";s:3:\\\"4_6\\\";s:1:\\\"5\\\";s:3:\\\"4_7\\\";s:1:\\\"5\\\";s:3:\\\"4_8\\\";s:1:\\\"5\\\";s:4:\\\"star\\\";s:10:\\\"1381288440\\\";s:3:\\\"end\\\";s:10:\\\"1382238840\\\";}');

-- ----------------------------
-- Table structure for om_1_shop_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_extend_index`;
CREATE TABLE `om_1_shop_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_shop_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_extend_verify`;
CREATE TABLE `om_1_shop_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_shop_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_0`;
CREATE TABLE `om_1_shop_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_1`;
CREATE TABLE `om_1_shop_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_2`;
CREATE TABLE `om_1_shop_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_3`;
CREATE TABLE `om_1_shop_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_4`;
CREATE TABLE `om_1_shop_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_5`;
CREATE TABLE `om_1_shop_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_6`;
CREATE TABLE `om_1_shop_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_7`;
CREATE TABLE `om_1_shop_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_8`;
CREATE TABLE `om_1_shop_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_favorite_9`;
CREATE TABLE `om_1_shop_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_shop_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_flag`;
CREATE TABLE `om_1_shop_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_shop_flag
-- ----------------------------
INSERT INTO `om_1_shop_flag` VALUES ('1', '3', '1', '8');
INSERT INTO `om_1_shop_flag` VALUES ('1', '4', '1', '8');
INSERT INTO `om_1_shop_flag` VALUES ('1', '5', '1', '13');
INSERT INTO `om_1_shop_flag` VALUES ('1', '6', '1', '12');
INSERT INTO `om_1_shop_flag` VALUES ('2', '7', '1', '21');
INSERT INTO `om_1_shop_flag` VALUES ('2', '8', '1', '21');
INSERT INTO `om_1_shop_flag` VALUES ('2', '9', '1', '21');
INSERT INTO `om_1_shop_flag` VALUES ('2', '10', '1', '25');
INSERT INTO `om_1_shop_flag` VALUES ('2', '11', '1', '25');
INSERT INTO `om_1_shop_flag` VALUES ('2', '12', '1', '25');
INSERT INTO `om_1_shop_flag` VALUES ('2', '13', '1', '25');
INSERT INTO `om_1_shop_flag` VALUES ('2', '14', '1', '25');
INSERT INTO `om_1_shop_flag` VALUES ('1', '8', '1', '21');
INSERT INTO `om_1_shop_flag` VALUES ('3', '15', '1', '42');
INSERT INTO `om_1_shop_flag` VALUES ('3', '16', '1', '42');
INSERT INTO `om_1_shop_flag` VALUES ('3', '17', '1', '42');
INSERT INTO `om_1_shop_flag` VALUES ('3', '18', '1', '45');
INSERT INTO `om_1_shop_flag` VALUES ('4', '1', '1', '53');
INSERT INTO `om_1_shop_flag` VALUES ('4', '2', '1', '53');
INSERT INTO `om_1_shop_flag` VALUES ('4', '19', '1', '59');
INSERT INTO `om_1_shop_flag` VALUES ('4', '20', '1', '59');

-- ----------------------------
-- Table structure for om_1_shop_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_form`;
CREATE TABLE `om_1_shop_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_shop_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_format
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_format`;
CREATE TABLE `om_1_shop_format` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catid` varchar(255) NOT NULL COMMENT '栏目id',
  `name` varchar(30) NOT NULL COMMENT '规格名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品规格表';

-- ----------------------------
-- Records of om_1_shop_format
-- ----------------------------
INSERT INTO `om_1_shop_format` VALUES ('1', ',8,9,10,11,12,13,14,15,16,17,18,19,20,', '服装属性');
INSERT INTO `om_1_shop_format` VALUES ('2', ',21,22,23,24,32,', '鞋尺码');
INSERT INTO `om_1_shop_format` VALUES ('3', ',53,59,', '手机规格');

-- ----------------------------
-- Table structure for om_1_shop_format_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_format_data`;
CREATE TABLE `om_1_shop_format_data` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fid` smallint(5) unsigned NOT NULL COMMENT '规格id',
  `pid` smallint(5) unsigned NOT NULL COMMENT '父id',
  `name` varchar(20) NOT NULL COMMENT '规格值名称',
  `displayorder` tinyint(3) unsigned NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`,`pid`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='商品规格值';

-- ----------------------------
-- Records of om_1_shop_format_data
-- ----------------------------
INSERT INTO `om_1_shop_format_data` VALUES ('1', '1', '0', '颜色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('2', '1', '0', '尺寸', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('3', '1', '2', '25', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('4', '1', '2', '26', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('5', '1', '2', '27', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('6', '1', '2', '28', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('7', '1', '2', '29', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('8', '1', '2', '30', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('9', '1', '2', '31', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('10', '1', '2', '32', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('11', '1', '2', '33', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('12', '1', '2', '34', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('13', '1', '2', '35', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('14', '1', '2', '36', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('15', '1', '1', '黑色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('16', '1', '1', '白色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('17', '1', '1', '红色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('18', '1', '1', '灰色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('19', '1', '1', '粉红色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('20', '1', '1', '浅灰色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('21', '2', '0', '尺码', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('22', '2', '21', '35', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('23', '2', '21', '36', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('24', '2', '21', '37', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('25', '2', '21', '38', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('26', '2', '21', '39', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('27', '2', '21', '40', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('28', '2', '21', '41', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('29', '2', '21', '42', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('30', '2', '21', '43', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('31', '2', '21', '44', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('32', '2', '21', '45', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('33', '3', '0', '颜色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('34', '3', '0', '容量', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('35', '3', '0', '配置', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('36', '3', '33', '黑色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('37', '3', '33', '白色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('38', '3', '33', '蓝色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('39', '3', '33', '黄色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('40', '3', '33', '绿色', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('41', '3', '34', '8G', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('42', '3', '34', '16G', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('43', '3', '34', '32G', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('44', '3', '34', '64G', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('45', '3', '35', '标配', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('46', '3', '35', '套餐一', '0');
INSERT INTO `om_1_shop_format_data` VALUES ('47', '3', '35', '套餐二', '0');

-- ----------------------------
-- Table structure for om_1_shop_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_html`;
CREATE TABLE `om_1_shop_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_shop_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_index`;
CREATE TABLE `om_1_shop_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_shop_index
-- ----------------------------
INSERT INTO `om_1_shop_index` VALUES ('1', '1', '53', '9', '1381893932');
INSERT INTO `om_1_shop_index` VALUES ('2', '1', '53', '9', '1381894303');
INSERT INTO `om_1_shop_index` VALUES ('3', '1', '8', '9', '1381903941');
INSERT INTO `om_1_shop_index` VALUES ('4', '1', '8', '9', '1381904152');
INSERT INTO `om_1_shop_index` VALUES ('5', '1', '13', '9', '1381904292');
INSERT INTO `om_1_shop_index` VALUES ('6', '1', '12', '9', '1381904463');
INSERT INTO `om_1_shop_index` VALUES ('7', '1', '21', '9', '1381904664');
INSERT INTO `om_1_shop_index` VALUES ('8', '1', '21', '9', '1381904802');
INSERT INTO `om_1_shop_index` VALUES ('9', '1', '21', '9', '1381904926');
INSERT INTO `om_1_shop_index` VALUES ('10', '1', '25', '9', '1381905071');
INSERT INTO `om_1_shop_index` VALUES ('11', '1', '25', '9', '1381905183');
INSERT INTO `om_1_shop_index` VALUES ('12', '1', '25', '9', '1381905291');
INSERT INTO `om_1_shop_index` VALUES ('13', '1', '25', '9', '1381905422');
INSERT INTO `om_1_shop_index` VALUES ('14', '1', '25', '9', '1381905538');
INSERT INTO `om_1_shop_index` VALUES ('15', '1', '42', '9', '1381906241');
INSERT INTO `om_1_shop_index` VALUES ('16', '1', '42', '9', '1381906540');
INSERT INTO `om_1_shop_index` VALUES ('17', '1', '42', '9', '1381906598');
INSERT INTO `om_1_shop_index` VALUES ('18', '1', '45', '9', '1381906727');
INSERT INTO `om_1_shop_index` VALUES ('19', '1', '59', '9', '1381907143');
INSERT INTO `om_1_shop_index` VALUES ('20', '1', '59', '9', '1381907260');

-- ----------------------------
-- Table structure for om_1_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_order`;
CREATE TABLE `om_1_shop_order` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '下订单的uid',
  `username` varchar(50) NOT NULL COMMENT '买家账号',
  `ptid` tinyint(1) unsigned NOT NULL COMMENT '付款方式',
  `score` int(10) unsigned NOT NULL COMMENT '虚拟币',
  `price` decimal(10,2) unsigned NOT NULL COMMENT '价格',
  `freight` decimal(5,2) unsigned NOT NULL COMMENT '运费',
  `items` text NOT NULL COMMENT '商品信息',
  `gbook` varchar(255) NOT NULL COMMENT '买家留言',
  `city` mediumint(8) unsigned NOT NULL COMMENT '收货人城市id',
  `name` varchar(50) NOT NULL COMMENT '收货人姓名',
  `phone` varchar(20) NOT NULL COMMENT '收货人电话',
  `zipcode` varchar(10) NOT NULL COMMENT '收货人邮编',
  `address` varchar(255) NOT NULL COMMENT '收货人地址',
  `status` tinyint(1) unsigned NOT NULL,
  `inputtime` int(10) unsigned NOT NULL COMMENT '下单时间',
  `sendnote` varchar(255) NOT NULL COMMENT '发货备注',
  `sendtime` int(10) unsigned NOT NULL COMMENT '发货时间',
  `successtime` int(10) unsigned NOT NULL COMMENT '成功时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品订单表';

-- ----------------------------
-- Records of om_1_shop_order
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_order_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_order_index`;
CREATE TABLE `om_1_shop_order_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` bigint(15) unsigned NOT NULL COMMENT '订单id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '买家id',
  `iid` int(10) unsigned NOT NULL COMMENT '商品id',
  `fid` varchar(20) NOT NULL COMMENT '规格编号',
  `review` tinyint(1) unsigned NOT NULL COMMENT '是否评论',
  PRIMARY KEY (`id`),
  KEY `oid` (`oid`,`uid`,`iid`,`fid`,`review`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单索引表';

-- ----------------------------
-- Records of om_1_shop_order_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_order_review
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_order_review`;
CREATE TABLE `om_1_shop_order_review` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '买家id',
  `author` varchar(30) NOT NULL COMMENT '买家名',
  `iid` int(10) unsigned NOT NULL COMMENT '商品id',
  `item` text NOT NULL COMMENT '商品信息',
  `value` text NOT NULL COMMENT '点评分数',
  `avgsort` float(3,1) unsigned NOT NULL COMMENT '平均分数',
  `content` text NOT NULL COMMENT '评论内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `iid` (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单评论表';

-- ----------------------------
-- Records of om_1_shop_order_review
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_search`;
CREATE TABLE `om_1_shop_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_shop_search
-- ----------------------------
INSERT INTO `om_1_shop_search` VALUES ('fe9c64401c9eebb94b7d5697ee6a2fda', '0', 'a:2:{s:7:\\\"keyword\\\";s:0:\\\"\\\";s:6:\\\"module\\\";s:4:\\\"chip\\\";}', '', '20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1', '1414400456');

-- ----------------------------
-- Table structure for om_1_shop_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_tag`;
CREATE TABLE `om_1_shop_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_shop_tag
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_shop_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_shop_verify`;
CREATE TABLE `om_1_shop_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_shop_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution`;
CREATE TABLE `om_1_solution` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text COMMENT '描述',
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '副表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`,`updatetime`),
  KEY `status` (`status`),
  KEY `hits` (`hits`),
  KEY `displayorder` (`displayorder`,`updatetime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='主表';

-- ----------------------------
-- Records of om_1_solution
-- ----------------------------
INSERT INTO `om_1_solution` VALUES ('1', '1', 'VoiceOver知多少？网页重构', 'http://zan.jiaye.in/member/uploadfile/ueditor/201410/497a53052f.png', '网页', 'VoiceOver知多少？网页重构作为一名有业界良心的网页重构同学，以提高网站、移动端应用的可用性为己任，于是整理出来了一份关于盲人辅助工具 VoiceOver 重构使用说明文档，以帮助重构同学能够简单轻松地为移动端信息...', '0', '1', 'omooo', '9', 'http://zan.jiaye.in/solution/index.php?c=show&id=1', '0', '127.0.0.1', '1413523772', '1413523772', '0');

-- ----------------------------
-- Table structure for om_1_solution_buy_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_0`;
CREATE TABLE `om_1_solution_buy_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_1`;
CREATE TABLE `om_1_solution_buy_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_2`;
CREATE TABLE `om_1_solution_buy_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_3`;
CREATE TABLE `om_1_solution_buy_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_4`;
CREATE TABLE `om_1_solution_buy_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_5`;
CREATE TABLE `om_1_solution_buy_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_6`;
CREATE TABLE `om_1_solution_buy_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_7`;
CREATE TABLE `om_1_solution_buy_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_8`;
CREATE TABLE `om_1_solution_buy_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_buy_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_buy_9`;
CREATE TABLE `om_1_solution_buy_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `score` int(10) unsigned NOT NULL COMMENT '使用虚拟币',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购买记录表';

-- ----------------------------
-- Records of om_1_solution_buy_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_category
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_category`;
CREATE TABLE `om_1_solution_category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `show` (`show`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_1_solution_category
-- ----------------------------
INSERT INTO `om_1_solution_category` VALUES ('1', '0', '0', '栏目一', 'l', 'lanmuyi', '', '0', '1', '20', '1', '', 'a:7:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}s:5:\\\"admin\\\";a:0:{}s:6:\\\"member\\\";a:0:{}}', '0');
INSERT INTO `om_1_solution_category` VALUES ('2', '0', '0', '栏目二', 'l', 'lanmuer', '', '0', '2', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');
INSERT INTO `om_1_solution_category` VALUES ('3', '0', '0', '栏目三', 'l', 'lanmusan', '', '0', '3', '', '1', null, 'a:5:{s:7:\\\"urlrule\\\";s:1:\\\"0\\\";s:4:\\\"edit\\\";s:1:\\\"0\\\";s:7:\\\"linkurl\\\";s:0:\\\"\\\";s:3:\\\"seo\\\";a:4:{s:10:\\\"show_title\\\";s:74:\\\"[第{page}页{join}]{title}{join}{catname}{join}{modname}{join}{SITE_NAME}\\\";s:10:\\\"list_title\\\";s:58:\\\"[第{page}页{join}]{name}{join}{modname}{join}{SITE_NAME}\\\";s:13:\\\"list_keywords\\\";s:0:\\\"\\\";s:16:\\\"list_description\\\";s:0:\\\"\\\";}s:8:\\\"template\\\";a:4:{s:8:\\\"pagesize\\\";s:2:\\\"20\\\";s:4:\\\"show\\\";s:9:\\\"show.html\\\";s:8:\\\"category\\\";s:13:\\\"category.html\\\";s:4:\\\"list\\\";s:9:\\\"list.html\\\";}}', '0');

-- ----------------------------
-- Table structure for om_1_solution_category_data
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_category_data`;
CREATE TABLE `om_1_solution_category_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_solution_category_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_category_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_category_data_0`;
CREATE TABLE `om_1_solution_category_data_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目附加表';

-- ----------------------------
-- Records of om_1_solution_category_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_data_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_data_0`;
CREATE TABLE `om_1_solution_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '概述',
  `hardware` mediumtext COMMENT '硬件参数',
  `software` mediumtext COMMENT '软件资源',
  `industry` mediumtext COMMENT '行业应用',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附表';

-- ----------------------------
-- Records of om_1_solution_data_0
-- ----------------------------
INSERT INTO `om_1_solution_data_0` VALUES ('1', '1', '1', '<h1 class=\"article-title\" style=\"margin: 5px 0px; padding: 0px; font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-weight: normal; line-height: 35px; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 20px; white-space: normal;\"><a href=\"http://www.zan3.com/zan2043.html\" style=\"margin: 0px; padding: 0px; color: rgb(68, 68, 68); text-decoration: none;\">VoiceOver知多少？网页重构</a></h1><p><img class=\"alignnone size-full wp-image-6246 colorbox-2043\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/497a53052f.png\" alt=\"voice\" width=\"740\" height=\"250\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\" id=\"OmWeb_img_15\"/><br style=\"margin: 0px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal; background-color: rgb(255, 255, 255);\"/><span style=\"color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; background-color: rgb(255, 255, 255);\">作为一名有业界良心的网页重构同学，以提高网站、移动端应用的可用性为己任，于是整理出来了一份关于盲人辅助工具 VoiceOver 重构使用说明文档，以帮助重构同学能够简单轻松地为移动端信息无障碍做一些力所能及的事情。</span></p>', '<p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">文档大纲：</strong><br style=\"margin: 0px; padding: 0px;\"/>一、&nbsp; VoiceOver介绍<br style=\"margin: 0px; padding: 0px;\"/>二、&nbsp; VoiceOver开启与关闭<br style=\"margin: 0px; padding: 0px;\"/>三、&nbsp; VoiceOver设置<br style=\"margin: 0px; padding: 0px;\"/>四、&nbsp; VoiceOver手势操作<br style=\"margin: 0px; padding: 0px;\"/>五、&nbsp; 如何输入文本<br style=\"margin: 0px; padding: 0px;\"/>六、&nbsp; VoiceOver转子操作<br style=\"margin: 0px; padding: 0px;\"/>七、&nbsp; HTML5标签测试结果<br style=\"margin: 0px; padding: 0px;\"/>八、&nbsp; HTML5标签无障碍开发规范<br style=\"margin: 0px; padding: 0px;\"/>九、&nbsp; Role值使用规范</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px;\">一、VoiceOver介绍</strong></p><p><br/></p>', '<p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">概念：<br style=\"margin: 0px; padding: 0px;\"/>Voiceover功能是苹果公司在2009年4月推出的一种语音辅助程序。专门针对盲人或者是视障人士开发的智能设备上的辅助工具，用以帮助盲人或者视障人士能够轻松简单地获取到移动设备上的有效信息。</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">支持机型：<br style=\"margin: 0px; padding: 0px;\"/>iPod3/4/5/6/7代、iPod touch、Iphone3/4/4s/5/5c/5s、Ipad1/2/mini、Mac。</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">支持语种：<br style=\"margin: 0px; padding: 0px;\"/>目前支持29种语言，包括中文、英文、捷克语、荷兰语、法语、德语、希腊语、意大利语、日语、波兰语、葡萄牙语、西班牙语、瑞典语、土耳其语。<br style=\"margin: 0px; padding: 0px;\"/>用户可以通过开启功能使程序朗读所有可以看到的文字，只需触摸文字即可选中使程序朗读，并通过双击进入文字的链接。</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">版本：<br style=\"margin: 0px; padding: 0px;\"/>VoiceOver3，运行于OS X（为系统版本）系统上。Alex语音是Mac的语音功能。</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">功能：<br style=\"margin: 0px; padding: 0px;\"/>手势支持、盲文显示器镜像、”网点”以及语音提示。此外，它还提供常用的功能，包括自动朗读网页、”全部朗读”、网页概况、网页表格支持、用户创建的标记、自定义显示信息详细程度。</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">VoiceOver与 OS X 紧密集成，当开发人员更新其 app 以充分利用 Apple 提供的辅助功能界面时，他们的 app 可以立即与 VoiceOver 搭配使用。</p><p><br/></p>', '<p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><a href=\"http://www.apple.com/cn/accessibility/ios/braille-display.html\" data-original-title=\"\" title=\"\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\">IOS盲文显示器</a>，由于未应用到HTML5，此处了解即可。</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">根据腾讯云分析：移动设备品牌占比统计如图：</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\"><a href=\"http://zanblog.b0.upaiyun.com/2014/10/d00cb2f0fd5a5f356a61e027bb6cc392.jpg\" data-original-title=\"\" title=\"\" class=\"cboxElement\" style=\"margin: 0px; padding: 0px; color: rgb(66, 139, 202);\"><img class=\"alignnone size-full wp-image-6048 colorbox-2043\" src=\"http://zan.jiaye.in/member/uploadfile/ueditor/201410/80cf71efea.jpg\" alt=\"4e16681005ac865a7d6396de90d3f3e4\" width=\"455\" height=\"385\" style=\"margin: 0px; padding: 0px; max-width: 100%; height: auto; vertical-align: middle; border: none;\" id=\"OmWeb_img_16\"/></a></p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">从图中可以很清楚的看到：<br style=\"margin: 0px; padding: 0px;\"/>IOS系统目前在国内占比达到24.7%，Android系统占比73.3%。也就是说，移动设备上的H5页面被用户访问到的几率占比也几乎为24.7:73.3，同样被盲人或视障人士访问的的概率也几乎是一样的。</p><p style=\"text-align:left;margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">所以作为网页重构设计师，除了做好网页最基本的功能之外，帮助盲人朋友也能够使用智能移动设备上的HTML5页面想必也是一件很有必要很有意义的事情。</p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; color: rgb(85, 85, 85); font-family: &#39;Microsoft Yahei&#39;, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 14.44444465637207px; line-height: 25px; white-space: normal;\">VoiceOver相对Talkback和保益悦听，会做的相对专业一些，相信在未来也会得到更多</p><p><br/></p>');

-- ----------------------------
-- Table structure for om_1_solution_extend_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_extend_index`;
CREATE TABLE `om_1_solution_extend_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展索引表';

-- ----------------------------
-- Records of om_1_solution_extend_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_extend_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_extend_verify`;
CREATE TABLE `om_1_solution_extend_verify` (
  `id` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `cid` (`cid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展内容审核表';

-- ----------------------------
-- Records of om_1_solution_extend_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_0
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_0`;
CREATE TABLE `om_1_solution_favorite_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_1
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_1`;
CREATE TABLE `om_1_solution_favorite_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_2
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_2`;
CREATE TABLE `om_1_solution_favorite_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_3
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_3`;
CREATE TABLE `om_1_solution_favorite_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_4
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_4`;
CREATE TABLE `om_1_solution_favorite_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_5
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_5`;
CREATE TABLE `om_1_solution_favorite_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_6
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_6`;
CREATE TABLE `om_1_solution_favorite_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_7
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_7`;
CREATE TABLE `om_1_solution_favorite_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_8
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_8`;
CREATE TABLE `om_1_solution_favorite_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_favorite_9
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_favorite_9`;
CREATE TABLE `om_1_solution_favorite_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cid` int(10) unsigned NOT NULL COMMENT '文档id',
  `eid` int(10) unsigned DEFAULT NULL COMMENT '扩展id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT 'uid',
  `url` varchar(255) NOT NULL COMMENT 'URL地址',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `cid` (`cid`),
  KEY `eid` (`eid`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏夹表';

-- ----------------------------
-- Records of om_1_solution_favorite_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_flag`;
CREATE TABLE `om_1_solution_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文档标记id',
  `id` int(10) unsigned NOT NULL COMMENT '文档内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  KEY `flag` (`flag`,`id`,`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_1_solution_flag
-- ----------------------------
INSERT INTO `om_1_solution_flag` VALUES ('1', '1', '1', '1');

-- ----------------------------
-- Table structure for om_1_solution_form
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_form`;
CREATE TABLE `om_1_solution_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '表单名称',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '是否禁用',
  `permission` text NOT NULL COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '表单配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模块表单表';

-- ----------------------------
-- Records of om_1_solution_form
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_html
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_html`;
CREATE TABLE `om_1_solution_html` (
  `id` bigint(18) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '相关id',
  `cid` int(10) unsigned NOT NULL COMMENT '内容id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `type` tinyint(1) unsigned NOT NULL COMMENT '文件类型',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `filepath` text NOT NULL COMMENT '文件地址',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='html文件存储表';

-- ----------------------------
-- Records of om_1_solution_html
-- ----------------------------

-- ----------------------------
-- Table structure for om_1_solution_index
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_index`;
CREATE TABLE `om_1_solution_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of om_1_solution_index
-- ----------------------------
INSERT INTO `om_1_solution_index` VALUES ('1', '1', '1', '9', '1413523772');

-- ----------------------------
-- Table structure for om_1_solution_search
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_search`;
CREATE TABLE `om_1_solution_search` (
  `id` varchar(32) NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `params` text NOT NULL COMMENT '参数数组',
  `keyword` varchar(255) NOT NULL COMMENT '关键字',
  `contentid` mediumtext NOT NULL COMMENT 'id集合',
  `inputtime` int(10) unsigned NOT NULL COMMENT '搜索时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `catid` (`catid`),
  KEY `keyword` (`keyword`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索表';

-- ----------------------------
-- Records of om_1_solution_search
-- ----------------------------
INSERT INTO `om_1_solution_search` VALUES ('1bfcd5cb96b89989add5c14be4ffded7', '0', 'a:2:{s:7:\\\"keyword\\\";s:12:\\\"网页重构\\\";s:6:\\\"module\\\";s:0:\\\"\\\";}', '网页重构', '1', '1414400034');
INSERT INTO `om_1_solution_search` VALUES ('fe9c64401c9eebb94b7d5697ee6a2fda', '0', 'a:2:{s:7:\\\"keyword\\\";s:0:\\\"\\\";s:6:\\\"module\\\";s:4:\\\"chip\\\";}', '', '1', '1414400456');

-- ----------------------------
-- Table structure for om_1_solution_tag
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_tag`;
CREATE TABLE `om_1_solution_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT 'tag名称',
  `code` varchar(200) NOT NULL COMMENT 'tag代码（拼音）',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tag标签表';

-- ----------------------------
-- Records of om_1_solution_tag
-- ----------------------------
INSERT INTO `om_1_solution_tag` VALUES ('1', '网页', 'wangye', '0');

-- ----------------------------
-- Table structure for om_1_solution_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_1_solution_verify`;
CREATE TABLE `om_1_solution_verify` (
  `id` int(10) unsigned NOT NULL,
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `content` mediumtext NOT NULL COMMENT '具体内容',
  `backuid` mediumint(8) unsigned NOT NULL COMMENT '操作人uid',
  `backinfo` text NOT NULL COMMENT '操作退回信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `backuid` (`backuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容审核表';

-- ----------------------------
-- Records of om_1_solution_verify
-- ----------------------------

-- ----------------------------
-- Table structure for om_admin
-- ----------------------------
DROP TABLE IF EXISTS `om_admin`;
CREATE TABLE `om_admin` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) DEFAULT NULL COMMENT '管理员姓名',
  `usermenu` text COMMENT '自定义面板菜单，序列化数组格式',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of om_admin
-- ----------------------------
INSERT INTO `om_admin` VALUES ('1', '网站创始人', '');

-- ----------------------------
-- Table structure for om_admin_login
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_login`;
CREATE TABLE `om_admin_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `loginip` varchar(50) NOT NULL COMMENT '登录Ip',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='登录日志记录';

-- ----------------------------
-- Records of om_admin_login
-- ----------------------------
INSERT INTO `om_admin_login` VALUES ('1', '1', '127.0.0.1', '1413459139', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v36.0.1985.5');
INSERT INTO `om_admin_login` VALUES ('2', '1', '127.0.0.1', '1413535600', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v36.0.1985.5');
INSERT INTO `om_admin_login` VALUES ('3', '1', '127.0.0.1', '1413879809', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');
INSERT INTO `om_admin_login` VALUES ('4', '1', '127.0.0.1', '1413961753', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');
INSERT INTO `om_admin_login` VALUES ('5', '1', '127.0.0.1', '1414025878', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');
INSERT INTO `om_admin_login` VALUES ('6', '1', '127.0.0.1', '1414134980', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Internet Explorer v11.0');
INSERT INTO `om_admin_login` VALUES ('7', '1', '127.0.0.1', '1414403906', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');
INSERT INTO `om_admin_login` VALUES ('8', '1', '127.0.0.1', '1414485608', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');

-- ----------------------------
-- Table structure for om_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_menu`;
CREATE TABLE `om_admin_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text NOT NULL COMMENT '菜单语言名称',
  `uri` varchar(255) DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) DEFAULT NULL COMMENT '外链地址',
  `mark` varchar(20) DEFAULT NULL COMMENT '菜单标识',
  `displayorder` tinyint(3) unsigned DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `uri` (`uri`)
) ENGINE=MyISAM AUTO_INCREMENT=343 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of om_admin_menu
-- ----------------------------
INSERT INTO `om_admin_menu` VALUES ('1', '0', '首页', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('2', '0', '系统', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('3', '0', '网站', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('4', '0', '会员', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('5', '0', '应用', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('6', '1', '我的面板', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('7', '6', '后台首页', 'admin/home/main', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('8', '2', '系统功能', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('9', '2', '系统维护', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('10', '2', '角色权限', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('11', '8', '后台菜单', 'admin/menu/index', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('12', '9', '数据结构', 'admin/db/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('13', '10', '角色管理', 'admin/role/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('14', '10', '管理员管理', 'admin/root/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('15', '3', '网站功能', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('40', '24', '单页管理', 'admin/page/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('18', '15', '网站配置', 'admin/site/config', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('19', '8', '网站管理', 'admin/site/index', '', '', '8');
INSERT INTO `om_admin_menu` VALUES ('20', '15', '网站导航', 'admin/navigator/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('21', '8', '模块管理', 'admin/module/index', '', '', '9');
INSERT INTO `om_admin_menu` VALUES ('22', '15', '附件管理', 'admin/attachment/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('24', '3', '内容相关', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('25', '4', '会员管理', '/', null, '', '1');
INSERT INTO `om_admin_menu` VALUES ('26', '25', '会员列表', 'member/admin/home/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('27', '25', '会 员 组', 'member/admin/group/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('30', '25', '会员设置', 'member/admin/setting/index', '', '', '98');
INSERT INTO `om_admin_menu` VALUES ('32', '4', '模板风格', '/', null, '', '4');
INSERT INTO `om_admin_menu` VALUES ('33', '25', '自定义字段', 'admin/field/index/rname/member/rid/0', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('35', '15', '下载镜像', 'admin/downservers/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('37', '25', '快捷登录', 'member/admin/setting/oauth', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('38', '10', '审核流程', 'admin/verify/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('39', '25', '会员权限', 'member/admin/setting/permission', '', '', '7');
INSERT INTO `om_admin_menu` VALUES ('59', '25', '财务管理', 'member/admin/pay/card', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('60', '24', '联动菜单', 'admin/linkage/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('61', '8', '邮件系统', 'admin/mail/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('62', '9', '系统升级', 'admin/upgrade/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('63', '8', '系统配置', 'admin/system/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('65', '9', '系统体检', 'admin/check/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('66', '8', '操作日志', 'admin/system/oplog', '', '', '4');
INSERT INTO `om_admin_menu` VALUES ('67', '3', '模板风格', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('68', '67', '模板管理', 'admin/tpl/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('69', '67', '风格管理', 'admin/theme/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('70', '67', '标签向导', 'admin/tpl/tag', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('71', '32', '会员模板', 'member/admin/tpl/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('72', '32', '会员风格', 'member/admin/theme/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('73', '80', '空间模板', 'member/admin/spacetpl/index', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('74', '80', '空间管理', 'member/admin/space/index', '', '', '1');
INSERT INTO `om_admin_menu` VALUES ('75', '5', '应用中心', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('76', '75', '应用管理', 'admin/application/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('77', '24', '文本块管理', 'admin/block/index', '', '', '99');
INSERT INTO `om_admin_menu` VALUES ('78', '25', '会员菜单', 'member/admin/menu/index', '', '', '5');
INSERT INTO `om_admin_menu` VALUES ('79', '6', '资料修改', 'admin/root/my', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('80', '4', '会员空间', '', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('81', '80', '空间模型', 'member/admin/model/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('82', '24', '表单管理', 'admin/form/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('83', '80', '文章管理', 'member/admin/content/index/mid/1', '', 'space-1', '6');
INSERT INTO `om_admin_menu` VALUES ('84', '80', '外链管理', 'member/admin/content/index/mid/2', '', 'space-2', '7');
INSERT INTO `om_admin_menu` VALUES ('85', '80', '日志管理', 'member/admin/content/index/mid/3', '', 'space-3', '8');
INSERT INTO `om_admin_menu` VALUES ('86', '80', '相册管理', 'member/admin/content/index/mid/4', '', 'space-4', '9');
INSERT INTO `om_admin_menu` VALUES ('87', '80', '幻灯管理', 'member/admin/content/index/mid/5', '', 'space-5', '10');
INSERT INTO `om_admin_menu` VALUES ('88', '80', '空间设置', 'member/admin/setting/space', '', '', '199');
INSERT INTO `om_admin_menu` VALUES ('89', '8', '任务队列', 'admin/cron/index', '', '', '3');
INSERT INTO `om_admin_menu` VALUES ('90', '8', '短信系统', 'admin/sms/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('91', '24', 'URL规则', 'admin/urlrule/index', '', '', '2');
INSERT INTO `om_admin_menu` VALUES ('92', '80', '自定义字段', 'admin/field/index/rname/spacetable/rid/0', '', '', '200');
INSERT INTO `om_admin_menu` VALUES ('93', '6', '登录日志', 'admin/root/log', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('94', '6', '后台菜单', 'admin/menu/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('95', '6', '会员菜单', 'member/admin/menu/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('96', '6', '应用管理', 'admin/application/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('97', '6', '模块管理', 'admin/module/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('98', '6', '更新数据', 'admin/home/clear', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('99', '6', '更新全站', 'admin/home/cache', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('100', '6', '系统体检', 'admin/check/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('101', '6', '生成伪静态', 'admin/route/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('102', '80', '默认栏目', 'member/admin/space/init', '', '', '198');
INSERT INTO `om_admin_menu` VALUES ('103', '6', '<b><font color=red>新手入门必看</font></b>', '', 'http://www.omooo.com/help/list-341.html', '', '99');
INSERT INTO `om_admin_menu` VALUES ('104', '25', '会员互动', 'member/admin/sns/index', '', '', '0');
INSERT INTO `om_admin_menu` VALUES ('105', '0', '内容相关', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('106', '105', '内容管理', '/', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('107', '106', '单页管理', 'admin/page/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('108', '106', '导航/baner/广告', 'admin/navigator/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('109', '106', '文本链接内容', 'admin/block/index', null, '', '0');
INSERT INTO `om_admin_menu` VALUES ('202', '201', '更新地址', 'midea/admin/home/url', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('201', '194', '相关功能', '', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('200', '195', '单页管理', 'midea/admin/page/index', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('199', '195', 'Tag标签', 'midea/admin/tag/index', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('198', '195', '栏目分类', 'midea/admin/category/index', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('197', '195', '待审核视频', 'midea/admin/home/verify', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('196', '195', '已通过视频', 'midea/admin/home/index', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('195', '194', '视频管理', '', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('194', '0', '视频中心', '', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('193', '190', '标签向导', 'news/admin/tpl/tag', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('190', '178', '模板风格', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('191', '190', '模板管理', 'news/admin/tpl/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('192', '190', '风格管理', 'news/admin/theme/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('211', '210', '文档管理', '', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('210', '0', '芯片选型', '', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('209', '206', '标签向导', 'midea/admin/tpl/tag', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('208', '206', '风格管理', 'midea/admin/theme/index', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('207', '206', '模板管理', 'midea/admin/tpl/index', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('206', '194', '模板风格', '', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('205', '201', '模块属性配置', 'admin/module/config/id/6', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('204', '201', '自定义字段', 'admin/field/index/rname/module/rid/6', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('203', '201', '生成静态', 'midea/admin/home/html', null, 'module-midea', '0');
INSERT INTO `om_admin_menu` VALUES ('225', '222', '标签向导', 'chip/admin/tpl/tag', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('224', '222', '风格管理', 'chip/admin/theme/index', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('223', '222', '模板管理', 'chip/admin/tpl/index', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('222', '210', '模板风格', '', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('221', '217', '模块属性配置', 'admin/module/config/id/7', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('220', '217', '自定义字段', 'admin/field/index/rname/module/rid/7', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('219', '217', '生成静态', 'chip/admin/home/html', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('218', '217', '更新地址', 'chip/admin/home/url', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('217', '210', '相关功能', '', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('216', '211', '单页管理', 'chip/admin/page/index', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('215', '211', 'Tag标签', 'chip/admin/tag/index', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('214', '211', '栏目分类', 'chip/admin/category/index', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('213', '211', '待审核文档', 'chip/admin/home/verify', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('212', '211', '已通过文档', 'chip/admin/home/index', null, 'module-chip', '0');
INSERT INTO `om_admin_menu` VALUES ('189', '185', '模块属性配置', 'admin/module/config/id/5', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('188', '185', '自定义字段', 'admin/field/index/rname/module/rid/5', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('187', '185', '生成静态', 'news/admin/home/html', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('186', '185', '更新地址', 'news/admin/home/url', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('185', '178', '相关功能', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('184', '179', '单页管理', 'news/admin/page/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('183', '179', 'Tag标签', 'news/admin/tag/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('182', '179', '栏目分类', 'news/admin/category/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('181', '179', '待审核文档', 'news/admin/home/verify', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('180', '179', '已通过文档', 'news/admin/home/index', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('179', '178', '文档管理', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('178', '0', '新闻资讯', '', null, 'module-news', '0');
INSERT INTO `om_admin_menu` VALUES ('289', '286', '标签向导', 'product/admin/tpl/tag', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('287', '286', '模板管理', 'product/admin/tpl/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('288', '286', '风格管理', 'product/admin/theme/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('286', '274', '模板风格', '', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('285', '281', '模块属性配置', 'admin/module/config/id/11', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('284', '281', '自定义字段', 'admin/field/index/rname/module/rid/11', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('283', '281', '生成静态', 'product/admin/home/html', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('282', '281', '更新地址', 'product/admin/home/url', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('281', '274', '相关功能', '', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('280', '275', '单页管理', 'product/admin/page/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('278', '275', '栏目分类', 'product/admin/category/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('279', '275', 'Tag标签', 'product/admin/tag/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('277', '275', '待审核文档', 'product/admin/home/verify', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('276', '275', '已通过文档', 'product/admin/home/index', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('275', '274', '文档管理', '', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('274', '0', '产品中心', '', null, 'module-product', '0');
INSERT INTO `om_admin_menu` VALUES ('290', '106', '表单管理', 'admin/form/index', '', null, '0');
INSERT INTO `om_admin_menu` VALUES ('291', '0', '商城', '', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('292', '291', '商品管理', '', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('293', '292', '商品列表', 'shop/admin/home/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('294', '292', '商品分类', 'shop/admin/category/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('295', '292', '属性规格', 'shop/admin/format/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('296', '292', 'Tag标签', 'shop/admin/tag/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('297', '292', '单页管理', 'shop/admin/page/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('298', '291', '交易管理', '', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('299', '298', '订单管理', 'shop/admin/order/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('300', '298', '订单查询', 'shop/admin/order/orderQuery', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('301', '298', '商店配置', 'shop/admin/mconfig/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('302', '298', '付款方式', 'shop/admin/mconfig/paytype', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('303', '298', '物流配置', 'shop/admin/mconfig/expresses', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('304', '291', '相关功能', '', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('305', '304', '更新地址', 'shop/admin/home/url', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('306', '304', '生成静态', 'shop/admin/home/html', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('307', '304', '自定义字段', 'admin/field/index/rname/module/rid/12', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('308', '291', '模板风格', '', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('309', '308', '模板管理', 'shop/admin/tpl/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('310', '308', '风格管理', 'shop/admin/theme/index', null, 'module-shop', '0');
INSERT INTO `om_admin_menu` VALUES ('311', '0', '开发工具', '', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('312', '311', '文档管理', '', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('313', '312', '已通过文档', 'development/admin/home/index', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('314', '312', '待审核文档', 'development/admin/home/verify', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('315', '312', '栏目分类', 'development/admin/category/index', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('316', '312', 'Tag标签', 'development/admin/tag/index', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('317', '312', '单页管理', 'development/admin/page/index', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('318', '311', '相关功能', '', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('319', '318', '更新地址', 'development/admin/home/url', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('320', '318', '生成静态', 'development/admin/home/html', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('321', '318', '自定义字段', 'admin/field/index/rname/module/rid/13', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('322', '318', '模块属性配置', 'admin/module/config/id/13', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('323', '311', '模板风格', '', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('324', '323', '模板管理', 'development/admin/tpl/index', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('325', '323', '风格管理', 'development/admin/theme/index', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('326', '323', '标签向导', 'development/admin/tpl/tag', null, 'module-development', '0');
INSERT INTO `om_admin_menu` VALUES ('327', '0', '解决方案', '', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('328', '327', '文档管理', '', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('329', '328', '已通过文档', 'solution/admin/home/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('330', '328', '待审核文档', 'solution/admin/home/verify', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('331', '328', '栏目分类', 'solution/admin/category/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('332', '328', 'Tag标签', 'solution/admin/tag/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('333', '328', '单页管理', 'solution/admin/page/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('334', '327', '相关功能', '', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('335', '334', '更新地址', 'solution/admin/home/url', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('336', '334', '生成静态', 'solution/admin/home/html', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('337', '334', '自定义字段', 'admin/field/index/rname/module/rid/14', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('338', '334', '模块属性配置', 'admin/module/config/id/14', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('339', '327', '模板风格', '', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('340', '339', '模板管理', 'solution/admin/tpl/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('341', '339', '风格管理', 'solution/admin/theme/index', null, 'module-solution', '0');
INSERT INTO `om_admin_menu` VALUES ('342', '339', '标签向导', 'solution/admin/tpl/tag', null, 'module-solution', '0');

-- ----------------------------
-- Table structure for om_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_role`;
CREATE TABLE `om_admin_role` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL COMMENT '允许管理的站点，序列化数组格式',
  `name` text NOT NULL COMMENT '角色组语言名称',
  `system` text NOT NULL COMMENT '系统权限',
  `module` text NOT NULL COMMENT '模块权限',
  `application` text NOT NULL COMMENT '应用权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台角色权限表';

-- ----------------------------
-- Records of om_admin_role
-- ----------------------------
INSERT INTO `om_admin_role` VALUES ('1', '', '超级管理员', '', '', '');
INSERT INTO `om_admin_role` VALUES ('2', '', '网站编辑员', '', '', '');

-- ----------------------------
-- Table structure for om_admin_verify
-- ----------------------------
DROP TABLE IF EXISTS `om_admin_verify`;
CREATE TABLE `om_admin_verify` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '名称',
  `verify` text NOT NULL COMMENT '审核部署',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='审核管理表';

-- ----------------------------
-- Records of om_admin_verify
-- ----------------------------
INSERT INTO `om_admin_verify` VALUES ('1', '审核一次', 'a:1:{i:1;a:2:{i:0;s:1:\\\"2\\\";i:1;s:1:\\\"3\\\";}}');

-- ----------------------------
-- Table structure for om_application
-- ----------------------------
DROP TABLE IF EXISTS `om_application`;
CREATE TABLE `om_application` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` text COMMENT '模块划分',
  `dirname` varchar(50) NOT NULL COMMENT '目录名称',
  `setting` text COMMENT '配置信息',
  `disabled` tinyint(1) DEFAULT '0' COMMENT '是否禁用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用表';

-- ----------------------------
-- Records of om_application
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment`;
CREATE TABLE `om_attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `siteid` tinyint(3) unsigned NOT NULL COMMENT '站点id',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `tableid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件副表id',
  `download` mediumint(8) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `filesize` int(10) unsigned NOT NULL COMMENT '文件大小',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filemd5` varchar(50) NOT NULL COMMENT '文件md5值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`),
  KEY `relatedtid` (`related`),
  KEY `fileext` (`fileext`),
  KEY `filemd5` (`filemd5`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of om_attachment
-- ----------------------------
INSERT INTO `om_attachment` VALUES ('1', '1', 'omooo', '1', 'om_1_page-9', '1', '0', '171753', 'jpg', '8c095c8f52e496d08f88fcbd22f162c3');
INSERT INTO `om_attachment` VALUES ('2', '1', 'omooo', '1', 'om_1_page-10', '1', '0', '138596', 'jpg', 'bf1cedf8dc94988de169ff9752773a5e');
INSERT INTO `om_attachment` VALUES ('3', '1', 'omooo', '1', 'om_1_page-11', '1', '0', '103371', 'jpg', '6b9b07d1a503f599ca348c5f508f3cfb');
INSERT INTO `om_attachment` VALUES ('4', '1', 'omooo', '1', 'om_1_midea-1', '1', '0', '8100', 'jpg', '90f29a4126ec5f491f4b3bad461d64d8');
INSERT INTO `om_attachment` VALUES ('5', '1', 'omooo', '1', 'om_1_chip-1', '1', '2', '5355', 'png', 'b96cfe67496a42ebc4707c35c56b77e9');
INSERT INTO `om_attachment` VALUES ('7', '1', 'omooo', '1', 'om_1_product-1', '1', '0', '45476', 'jpg', 'c1d2a9ce53c6ace4d989658c9e09f35e');
INSERT INTO `om_attachment` VALUES ('8', '1', 'omooo', '1', 'om_1_product-1', '1', '1', '45476', 'jpg', 'c1d2a9ce53c6ace4d989658c9e09f35e');
INSERT INTO `om_attachment` VALUES ('9', '1', 'omooo', '1', 'om_1_product-2', '1', '0', '1672468', 'jpg', '3082f38d95efcc67526cb1276753b362');
INSERT INTO `om_attachment` VALUES ('10', '1', 'omooo', '1', 'om_1_development-1', '1', '0', '63258', 'gif', 'a74ec411c720b31c16dfa3fda99c368b');
INSERT INTO `om_attachment` VALUES ('11', '1', 'omooo', '1', 'om_1_development-1', '1', '0', '24780', 'png', 'd1ee04e15db39c40784f3d387fa737b7');
INSERT INTO `om_attachment` VALUES ('12', '1', 'omooo', '1', 'om_1_development-2', '1', '0', '45804', 'jpg', 'f8819a6789a0c1ed145b41f9ebf229ae');
INSERT INTO `om_attachment` VALUES ('13', '1', 'omooo', '1', 'om_1_development-2', '1', '0', '82374', 'png', '66cba488a50a97562e71c1a9d6f49a2b');
INSERT INTO `om_attachment` VALUES ('14', '1', 'omooo', '1', 'om_1_development-3', '1', '0', '9224', 'png', '1e21c659e3a04f5081d5a22e15a2acad');
INSERT INTO `om_attachment` VALUES ('15', '1', 'omooo', '1', 'om_1_solution-1', '1', '0', '10999', 'png', 'ee5b7017ec4f1fe33487a4217467827e');
INSERT INTO `om_attachment` VALUES ('16', '1', 'omooo', '1', 'om_1_solution-1', '1', '0', '108542', 'jpg', '666c72e3bb9eacfed2e88407e8ffc123');
INSERT INTO `om_attachment` VALUES ('17', '1', 'omooo', '1', 'om_1_news-6', '1', '0', '62673', 'png', 'a68d966f3667f4b8a860df24bf96e6d0');
INSERT INTO `om_attachment` VALUES ('18', '1', 'omooo', '1', 'om_1_news-6', '1', '0', '71821', 'png', '34132badbb6f352bd94637e318fb0c34');
INSERT INTO `om_attachment` VALUES ('19', '1', 'omooo', '1', 'om_1_product_category-1', '1', '0', '42916', 'jpg', 'a7fb8fea2a29710aaa616da2d8b3f3b6');
INSERT INTO `om_attachment` VALUES ('20', '1', 'omooo', '1', 'om_1_solution_category-1', '1', '0', '31508', 'jpg', '3a3e0bd3054fec0752fbcaafe6f9e5bf');
INSERT INTO `om_attachment` VALUES ('21', '1', 'omooo', '1', 'om_1_chip_category-1', '1', '0', '38830', 'jpg', '3836bee65836c79035946096493d80ab');
INSERT INTO `om_attachment` VALUES ('22', '1', 'omooo', '1', 'om_1_development_category-1', '1', '0', '37243', 'jpg', '6ec2df6173bd8fc71396c608fe2371b2');
INSERT INTO `om_attachment` VALUES ('23', '1', 'omooo', '1', 'om_1_navigator-18', '1', '0', '193454', 'jpg', '70aa039025e4824b6c16f60dc391c44d');
INSERT INTO `om_attachment` VALUES ('24', '1', 'omooo', '1', 'om_1_navigator-19', '1', '0', '193454', 'jpg', '70aa039025e4824b6c16f60dc391c44d');
INSERT INTO `om_attachment` VALUES ('25', '1', 'omooo', '1', 'om_1_navigator-33', '1', '0', '254607', 'jpg', '84065ab94e6f4ff2e6de6681beb69fb1');
INSERT INTO `om_attachment` VALUES ('26', '1', 'omooo', '1', 'om_1_navigator-34', '1', '0', '456724', 'jpg', '876604ff33420b0be40536df75983ac0');
INSERT INTO `om_attachment` VALUES ('27', '1', 'omooo', '1', 'om_1_navigator-95', '1', '0', '222986', 'jpg', 'c8c2a99211684446d2f9bff6d92a43c1');
INSERT INTO `om_attachment` VALUES ('28', '1', 'omooo', '1', '', '0', '0', '56381', 'png', '760db27d5c390d3bd4049e70c7a01b11');
INSERT INTO `om_attachment` VALUES ('29', '1', 'omooo', '1', '', '0', '0', '62155', 'png', 'ba3f6dea63f9cc5b0d33943e2f318c7f');
INSERT INTO `om_attachment` VALUES ('30', '1', 'omooo', '1', 'om_1_chip-6', '1', '0', '38957', 'png', '0e810385ec4e5d6291f2f3a04f648b3c');
INSERT INTO `om_attachment` VALUES ('31', '1', 'omooo', '1', '', '0', '0', '38958', 'png', 'da03ba7715a0b34c2c54f1cd3efd26d8');
INSERT INTO `om_attachment` VALUES ('32', '1', 'omooo', '1', '', '0', '0', '7013', 'png', '8a0dcd4fdf7bb3fe971b12df3f8ed96f');
INSERT INTO `om_attachment` VALUES ('33', '1', 'omooo', '1', 'om_1_chip-5', '1', '0', '105749', 'png', '2635f3e7ed5066ffb6d63fce3c35a292');
INSERT INTO `om_attachment` VALUES ('34', '1', 'omooo', '1', '', '0', '0', '85421', 'png', '2390ef357825c0f487cd74eb9a0518f1');
INSERT INTO `om_attachment` VALUES ('35', '1', 'omooo', '1', 'om_1_chip-6', '1', '0', '37507', 'png', '1afcdd9fdb65a8c2a365d7ae61aaf418');
INSERT INTO `om_attachment` VALUES ('36', '1', 'omooo', '1', '', '0', '0', '20082', 'png', '7d28a6072bd83d550265f2ec9be4be8a');
INSERT INTO `om_attachment` VALUES ('37', '1', 'omooo', '1', '', '0', '0', '25891', 'png', '651fe9773b86fbce53e40b2e1efd3f6d');
INSERT INTO `om_attachment` VALUES ('38', '1', 'omooo', '1', 'om_1_chip-5', '1', '0', '17179', 'png', 'd22f9469937325a695fce048be68bca3');
INSERT INTO `om_attachment` VALUES ('39', '1', 'omooo', '1', '', '0', '0', '70495', 'png', '62fa76c21cdbcf0b45d6ad50e2f5a35b');
INSERT INTO `om_attachment` VALUES ('40', '1', 'omooo', '1', '', '0', '0', '46219', 'png', 'bf573df3997d10b080fe04b89f19bf7e');
INSERT INTO `om_attachment` VALUES ('41', '1', 'omooo', '1', 'om_1_chip-5', '1', '0', '70495', 'png', '62fa76c21cdbcf0b45d6ad50e2f5a35b');
INSERT INTO `om_attachment` VALUES ('42', '1', 'omooo', '1', '', '0', '0', '7013', 'png', '5e57732608e34d40ff5aa7c6c6c48843');
INSERT INTO `om_attachment` VALUES ('43', '1', 'omooo', '1', 'om_1_chip-3', '1', '0', '26877', 'jpg', '016b4d811dcd4e65acc166ffd06ad19f');
INSERT INTO `om_attachment` VALUES ('44', '1', 'omooo', '1', '', '0', '0', '70495', 'png', '62fa76c21cdbcf0b45d6ad50e2f5a35b');
INSERT INTO `om_attachment` VALUES ('45', '1', 'omooo', '1', 'om_1_chip-6', '1', '0', '12822', 'png', 'dab3f7274a5e5e85cda0f78418590773');
INSERT INTO `om_attachment` VALUES ('46', '1', 'omooo', '1', '', '0', '0', '8466', 'png', 'd4848359194055456b1d4ef9f2c88e72');
INSERT INTO `om_attachment` VALUES ('47', '1', 'omooo', '1', '', '0', '0', '50574', 'png', 'ad824c8c412e8c871dbfc3e526b6063a');
INSERT INTO `om_attachment` VALUES ('48', '1', 'omooo', '1', '', '0', '0', '4109', 'png', '60289298b87ed92986c39abb2deb1396');
INSERT INTO `om_attachment` VALUES ('49', '1', 'omooo', '1', 'om_1_chip-6', '1', '0', '65094', 'png', 'f22fd90ac5faf9df6c355225d8642cca');
INSERT INTO `om_attachment` VALUES ('50', '1', 'omooo', '1', 'om_1_chip-5', '1', '0', '18630', 'png', 'af10c03d20a744d653905c0ca6855b06');
INSERT INTO `om_attachment` VALUES ('51', '1', 'omooo', '1', 'om_1_navigator-43', '1', '0', '89777', 'png', '1d39697df953979152f10adcd808054a');
INSERT INTO `om_attachment` VALUES ('52', '1', 'omooo', '1', 'om_1_chip-4', '1', '0', '101393', 'png', '3af0b6dd8b860da2deeafc1d4751ac77');
INSERT INTO `om_attachment` VALUES ('53', '1', 'omooo', '1', '', '0', '0', '5563', 'png', '60a5dbbf1c135adc26c931a1ba155c2a');
INSERT INTO `om_attachment` VALUES ('54', '1', 'omooo', '1', '', '0', '0', '5561', 'png', '267f6f019ba862685661431b2c921632');
INSERT INTO `om_attachment` VALUES ('55', '1', 'omooo', '1', 'om_1_chip-5', '1', '0', '22985', 'png', 'eae7c6846f4ade337751ff22ab540b29');
INSERT INTO `om_attachment` VALUES ('56', '1', 'omooo', '1', 'om_1_navigator-68', '1', '0', '9919', 'png', 'ef5507ea24ca49198919ad726ef9e0bb');
INSERT INTO `om_attachment` VALUES ('57', '1', 'omooo', '1', '', '0', '0', '28795', 'png', 'e1c5e369d0a2d0055b640e4d4237e404');
INSERT INTO `om_attachment` VALUES ('58', '1', 'omooo', '1', 'om_1_chip-5', '1', '0', '27343', 'png', '7573b759dd5e14d5be59339db6ca8f12');
INSERT INTO `om_attachment` VALUES ('59', '1', 'omooo', '1', 'om_1_chip-6', '1', '0', '168185', 'png', '1f460b30d6266250ef6d7d900588fd27');
INSERT INTO `om_attachment` VALUES ('60', '1', 'omooo', '1', '', '0', '0', '1205', 'png', '30f537fdd9d7cafe783fba6c749a9970');
INSERT INTO `om_attachment` VALUES ('61', '1', 'omooo', '1', '', '0', '0', '24437', 'png', '692ae832456f5770fe415cd63e83dd12');
INSERT INTO `om_attachment` VALUES ('62', '1', 'omooo', '1', '', '0', '0', '325001', 'png', '78fb038383b0abcca102ef1a7fd4d397');
INSERT INTO `om_attachment` VALUES ('63', '1', 'omooo', '1', '', '0', '0', '5562', 'png', '7dc60bee11311f9b365b2d169a36f00e');
INSERT INTO `om_attachment` VALUES ('64', '1', 'omooo', '1', '', '0', '0', '9918', 'png', '007d3d30d51e24e8814cd5d8fb850b8a');
INSERT INTO `om_attachment` VALUES ('65', '1', 'omooo', '1', '', '0', '0', '37506', 'png', 'a2d26cd01742acc4c2fe5856c2ba8821');
INSERT INTO `om_attachment` VALUES ('66', '1', 'omooo', '1', 'om_1_chip-5', '1', '0', '198677', 'png', '76d891f0122e623c21111f150060bfa8');
INSERT INTO `om_attachment` VALUES ('67', '1', 'omooo', '1', 'om_1_chip-5', '1', '0', '82443', 'png', 'e8dceb62d98eee13a06760fae9b2cfc9');
INSERT INTO `om_attachment` VALUES ('68', '1', 'omooo', '1', 'om_1_chip-6', '1', '0', '8467', 'png', '4c562be1e8b2555788088ec1540f8868');
INSERT INTO `om_attachment` VALUES ('69', '1', 'omooo', '1', 'om_1_chip-6', '1', '0', '326256', 'png', '12298be8a0e4438996988adb405b1c89');
INSERT INTO `om_attachment` VALUES ('70', '1', 'omooo', '1', 'om_1_chip-6', '1', '0', '82443', 'png', 'e8dceb62d98eee13a06760fae9b2cfc9');
INSERT INTO `om_attachment` VALUES ('71', '1', 'omooo', '1', 'om_1_midea-2', '1', '0', '3410', 'png', '2dc85fe88f3104ba32511890f10a9f38');
INSERT INTO `om_attachment` VALUES ('72', '1', 'omooo', '1', 'om_1_midea-3', '1', '0', '187525', 'png', 'd345d4638888aef2022f1d4132846698');
INSERT INTO `om_attachment` VALUES ('73', '1', 'omooo', '1', 'om_1_midea-4', '1', '0', '249518', 'png', '27fdb6cf588de5761458b12e31ba45e1');
INSERT INTO `om_attachment` VALUES ('74', '1', 'omooo', '1', 'om_1_navigator-44', '1', '0', '42916', 'jpg', 'a7fb8fea2a29710aaa616da2d8b3f3b6');

-- ----------------------------
-- Table structure for om_attachment_0
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_0`;
CREATE TABLE `om_attachment_0` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表0';

-- ----------------------------
-- Records of om_attachment_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_1
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_1`;
CREATE TABLE `om_attachment_1` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表1';

-- ----------------------------
-- Records of om_attachment_1
-- ----------------------------
INSERT INTO `om_attachment_1` VALUES ('1', '1', 'omooo', 'om_1_page-9', 'jianjie', 'jpg', '171753', 'member/uploadfile/ueditor/201410/9c22ff509f.jpg', '0', '', '1413452980');
INSERT INTO `om_attachment_1` VALUES ('2', '1', 'omooo', 'om_1_page-10', 'wenhua', 'jpg', '138596', 'member/uploadfile/ueditor/201410/3b0e02b30d.jpg', '0', '', '1413453708');
INSERT INTO `om_attachment_1` VALUES ('3', '1', 'omooo', 'om_1_page-11', 'map', 'jpg', '103371', 'member/uploadfile/ueditor/201410/7558bc4409.jpg', '0', '', '1413453991');
INSERT INTO `om_attachment_1` VALUES ('4', '1', 'omooo', 'om_1_midea-1', 'thumb', 'jpg', '8100', 'member/uploadfile/201410/6b74ac4eaf.jpg', '0', '', '1413456764');
INSERT INTO `om_attachment_1` VALUES ('5', '1', 'omooo', 'om_1_chip-1', 'scrawl', 'png', '5355', 'member/uploadfile/ueditor/201410/41d5e2ca90.png', '0', '', '1413458192');
INSERT INTO `om_attachment_1` VALUES ('7', '1', 'omooo', 'om_1_product-1', 'mo', 'jpg', '45476', 'member/uploadfile/201410/f21a2e9ba0.jpg', '0', '', '1413461076');
INSERT INTO `om_attachment_1` VALUES ('8', '1', 'omooo', 'om_1_product-1', 'mo', 'jpg', '45476', 'member/uploadfile/201410/555d627518.jpg', '0', '', '1413461331');
INSERT INTO `om_attachment_1` VALUES ('9', '1', 'omooo', 'om_1_product-2', '阿萨阿', 'jpg', '1672468', 'member/uploadfile/201410/3ecb54e37a.jpg', '0', '', '1413507885');
INSERT INTO `om_attachment_1` VALUES ('10', '1', 'omooo', 'om_1_development-1', 'dc0b583580f255640b82f42f08755e81', 'gif', '63258', 'member/uploadfile/ueditor/201410/1ef21fa4ff.gif', '0', '', '1413523561');
INSERT INTO `om_attachment_1` VALUES ('11', '1', 'omooo', 'om_1_development-1', '9fa84d9c8ad02b785253ccbca1866696', 'png', '24780', 'member/uploadfile/ueditor/201410/2b17bb5303.png', '0', '', '1413523569');
INSERT INTO `om_attachment_1` VALUES ('13', '1', 'omooo', 'om_1_development-2', '83fef29e4b4d49692a3ddd0fca428623', 'png', '82374', 'member/uploadfile/ueditor/201410/2b2f662809.png', '0', '', '1413523678');
INSERT INTO `om_attachment_1` VALUES ('12', '1', 'omooo', 'om_1_development-2', '03927ae8ae0c889ccdf2e7dea1c892f0', 'jpg', '45804', 'member/uploadfile/ueditor/201410/15b451b4fe.jpg', '0', '', '1413523659');
INSERT INTO `om_attachment_1` VALUES ('14', '1', 'omooo', 'om_1_development-3', '6ba898992dbbb9b3a34f7382c7b3d077', 'png', '9224', 'member/uploadfile/ueditor/201410/73b434e566.png', '0', '', '1413523755');
INSERT INTO `om_attachment_1` VALUES ('16', '1', 'omooo', 'om_1_solution-1', 'd00cb2f0fd5a5f356a61e027bb6cc392', 'jpg', '108542', 'member/uploadfile/ueditor/201410/80cf71efea.jpg', '0', '', '1413523799');
INSERT INTO `om_attachment_1` VALUES ('15', '1', 'omooo', 'om_1_solution-1', '71c71e29a2f88bd6024d47bce5dcc048', 'png', '10999', 'member/uploadfile/ueditor/201410/497a53052f.png', '0', '', '1413523782');
INSERT INTO `om_attachment_1` VALUES ('18', '1', 'omooo', 'om_1_news-6', '2014-05-03_161139', 'png', '71821', 'member/uploadfile/ueditor/201410/08fec95510.png', '0', '', '1413525019');
INSERT INTO `om_attachment_1` VALUES ('17', '1', 'omooo', 'om_1_news-6', '2014-05-03_160624', 'png', '62673', 'member/uploadfile/ueditor/201410/342a49f761.png', '0', '', '1413525019');
INSERT INTO `om_attachment_1` VALUES ('19', '1', 'omooo', 'om_1_product_category-1', 'fan1', 'jpg', '42916', 'member/uploadfile/201410/b0222d7072.jpg', '0', '', '1413525899');
INSERT INTO `om_attachment_1` VALUES ('20', '1', 'omooo', 'om_1_solution_category-1', 'fan2', 'jpg', '31508', 'member/uploadfile/201410/d03092afa6.jpg', '0', '', '1413525918');
INSERT INTO `om_attachment_1` VALUES ('21', '1', 'omooo', 'om_1_chip_category-1', 'fan3', 'jpg', '38830', 'member/uploadfile/201410/d232367f84.jpg', '0', '', '1413525934');
INSERT INTO `om_attachment_1` VALUES ('22', '1', 'omooo', 'om_1_development_category-1', 'fan4', 'jpg', '37243', 'member/uploadfile/201410/a6a07df6cf.jpg', '0', '', '1413525952');
INSERT INTO `om_attachment_1` VALUES ('23', '1', 'omooo', 'om_1_navigator-18', 'ban1', 'jpg', '193454', 'member/uploadfile/201410/c39f7a50d4.jpg', '0', '', '1413526419');
INSERT INTO `om_attachment_1` VALUES ('24', '1', 'omooo', 'om_1_navigator-19', 'ban1', 'jpg', '193454', 'member/uploadfile/201410/92009dd595.jpg', '0', '', '1413526434');
INSERT INTO `om_attachment_1` VALUES ('25', '1', 'omooo', 'om_1_navigator-33', 'f2', 'jpg', '254607', 'member/uploadfile/201410/8769c2a55f.jpg', '0', '', '1413526474');
INSERT INTO `om_attachment_1` VALUES ('26', '1', 'omooo', 'om_1_navigator-34', 'f1', 'jpg', '456724', 'member/uploadfile/201410/fae003b2ed.jpg', '0', '', '1413526485');
INSERT INTO `om_attachment_1` VALUES ('27', '1', 'omooo', 'om_1_navigator-95', 'pagebaner', 'jpg', '222986', 'member/uploadfile/201410/3da0201e06.jpg', '0', '', '1413532954');
INSERT INTO `om_attachment_1` VALUES ('43', '1', 'omooo', 'om_1_chip-3', '614485', 'jpg', '26877', 'member/uploadfile/ueditor/201410/e7bed82bec.jpg', '0', '', '1413534444');
INSERT INTO `om_attachment_1` VALUES ('52', '1', 'omooo', 'om_1_chip-4', 'a16.png', 'png', '101393', 'member/uploadfile/201410/0bdb8d2440.png', '0', '', '1413534414');
INSERT INTO `om_attachment_1` VALUES ('33', '1', 'omooo', 'om_1_chip-5', 'a16.png', 'png', '105749', 'member/uploadfile/201410/e08233e841.png', '0', '', '1413534125');
INSERT INTO `om_attachment_1` VALUES ('38', '1', 'omooo', 'om_1_chip-5', 'a22.png', 'png', '17179', 'member/uploadfile/201410/bee3120237.png', '0', '', '1413534125');
INSERT INTO `om_attachment_1` VALUES ('41', '1', 'omooo', 'om_1_chip-5', '3.png', 'png', '70495', 'member/uploadfile/201410/c8999ca718.png', '0', '', '1413534125');
INSERT INTO `om_attachment_1` VALUES ('50', '1', 'omooo', 'om_1_chip-5', '4.png', 'png', '18630', 'member/uploadfile/201410/db8a0ea211.png', '0', '', '1413534125');
INSERT INTO `om_attachment_1` VALUES ('55', '1', 'omooo', 'om_1_chip-5', '5.png', 'png', '22985', 'member/uploadfile/201410/6f16451341.png', '0', '', '1413534125');
INSERT INTO `om_attachment_1` VALUES ('58', '1', 'omooo', 'om_1_chip-5', '6.png', 'png', '27343', 'member/uploadfile/201410/df765d7671.png', '0', '', '1413534125');
INSERT INTO `om_attachment_1` VALUES ('66', '1', 'omooo', 'om_1_chip-5', '%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7-2013-04-09-%E4%B8%8B%E5%8D%8812.09.09-1024x462.png', 'png', '198677', 'member/uploadfile/201410/1e41a94115.png', '0', '', '1413534125');
INSERT INTO `om_attachment_1` VALUES ('67', '1', 'omooo', 'om_1_chip-5', '7.png', 'png', '82443', 'member/uploadfile/201410/a03a1d2686.png', '0', '', '1413534125');
INSERT INTO `om_attachment_1` VALUES ('30', '1', 'omooo', 'om_1_chip-6', 'a16.png', 'png', '38957', 'member/uploadfile/201410/5ea4342530.png', '0', '', '1413534037');
INSERT INTO `om_attachment_1` VALUES ('35', '1', 'omooo', 'om_1_chip-6', 'a22.png', 'png', '37507', 'member/uploadfile/201410/b5ab1fb435.png', '0', '', '1413534037');
INSERT INTO `om_attachment_1` VALUES ('45', '1', 'omooo', 'om_1_chip-6', '3.png', 'png', '12822', 'member/uploadfile/201410/a26853b134.png', '0', '', '1413534037');
INSERT INTO `om_attachment_1` VALUES ('49', '1', 'omooo', 'om_1_chip-6', '4.png', 'png', '65094', 'member/uploadfile/201410/6a0427f411.png', '0', '', '1413534037');
INSERT INTO `om_attachment_1` VALUES ('70', '1', 'omooo', 'om_1_chip-6', '7.png', 'png', '82443', 'member/uploadfile/201410/672ea87650.png', '0', '', '1413534037');
INSERT INTO `om_attachment_1` VALUES ('59', '1', 'omooo', 'om_1_chip-6', '5.png', 'png', '168185', 'member/uploadfile/201410/1adcaa2849.png', '0', '', '1413534037');
INSERT INTO `om_attachment_1` VALUES ('69', '1', 'omooo', 'om_1_chip-6', '%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7-2013-04-09-%E4%B8%8B%E5%8D%8812.09.09-1024x462.png', 'png', '326256', 'member/uploadfile/201410/c634956941.png', '0', '', '1413534037');
INSERT INTO `om_attachment_1` VALUES ('68', '1', 'omooo', 'om_1_chip-6', '6.png', 'png', '8467', 'member/uploadfile/201410/1e41a94155.png', '0', '', '1413534037');
INSERT INTO `om_attachment_1` VALUES ('71', '1', 'omooo', 'om_1_midea-2', 'logo', 'png', '3410', 'member/uploadfile/201410/e4cffba387.png', '0', '', '1413535798');
INSERT INTO `om_attachment_1` VALUES ('72', '1', 'omooo', 'om_1_midea-3', '2014-10-17_165527', 'png', '187525', 'member/uploadfile/201410/ba3b5c0646.png', '0', '', '1413536154');
INSERT INTO `om_attachment_1` VALUES ('73', '1', 'omooo', 'om_1_midea-4', '2014-10-17_165538', 'png', '249518', 'member/uploadfile/201410/a23e19055d.png', '0', '', '1413536215');
INSERT INTO `om_attachment_1` VALUES ('74', '1', 'omooo', 'om_1_navigator-44', 'fan1', 'jpg', '42916', 'member/uploadfile/201410/415d5d2b6c.jpg', '0', '', '1413945136');
INSERT INTO `om_attachment_1` VALUES ('51', '1', 'omooo', 'om_1_navigator-43', 'a16', 'png', '89777', 'member/uploadfile/ueditor/201410/b7131a5705.png', '0', '', '1413534412');
INSERT INTO `om_attachment_1` VALUES ('56', '1', 'omooo', 'om_1_navigator-68', '6', 'png', '9919', 'member/uploadfile/ueditor/201410/0a48ceb644.png', '0', '', '1413534119');

-- ----------------------------
-- Table structure for om_attachment_2
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_2`;
CREATE TABLE `om_attachment_2` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表2';

-- ----------------------------
-- Records of om_attachment_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_3
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_3`;
CREATE TABLE `om_attachment_3` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表3';

-- ----------------------------
-- Records of om_attachment_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_4
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_4`;
CREATE TABLE `om_attachment_4` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表4';

-- ----------------------------
-- Records of om_attachment_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_5
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_5`;
CREATE TABLE `om_attachment_5` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表5';

-- ----------------------------
-- Records of om_attachment_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_6
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_6`;
CREATE TABLE `om_attachment_6` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表6';

-- ----------------------------
-- Records of om_attachment_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_7
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_7`;
CREATE TABLE `om_attachment_7` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表7';

-- ----------------------------
-- Records of om_attachment_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_8
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_8`;
CREATE TABLE `om_attachment_8` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表8';

-- ----------------------------
-- Records of om_attachment_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_9
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_9`;
CREATE TABLE `om_attachment_9` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表9';

-- ----------------------------
-- Records of om_attachment_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_attachment_unused
-- ----------------------------
DROP TABLE IF EXISTS `om_attachment_unused`;
CREATE TABLE `om_attachment_unused` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `siteid` tinyint(3) unsigned NOT NULL COMMENT '站点id',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程附件',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='未使用的附件表';

-- ----------------------------
-- Records of om_attachment_unused
-- ----------------------------
INSERT INTO `om_attachment_unused` VALUES ('29', '1', 'omooo', '1', 'a22', 'png', '62155', 'member/uploadfile/ueditor/201410/f82e54fc97.png', '0', '', '1413534036');
INSERT INTO `om_attachment_unused` VALUES ('28', '1', 'omooo', '1', 'a16', 'png', '56381', 'member/uploadfile/ueditor/201410/aa20245fb2.png', '0', '', '1413534036');
INSERT INTO `om_attachment_unused` VALUES ('31', '1', 'omooo', '1', '3', 'png', '38958', 'member/uploadfile/ueditor/201410/c154310e26.png', '0', '', '1413534036');
INSERT INTO `om_attachment_unused` VALUES ('32', '1', 'omooo', '1', 'a16', 'png', '7013', 'member/uploadfile/ueditor/201410/67c82ce8a1.png', '0', '', '1413534119');
INSERT INTO `om_attachment_unused` VALUES ('34', '1', 'omooo', '1', 'a16', 'png', '85421', 'member/uploadfile/ueditor/201410/d580cf38ec.png', '0', '', '1413534115');
INSERT INTO `om_attachment_unused` VALUES ('36', '1', 'omooo', '1', '4', 'png', '20082', 'member/uploadfile/ueditor/201410/e16866025e.png', '0', '', '1413534036');
INSERT INTO `om_attachment_unused` VALUES ('37', '1', 'omooo', '1', 'a22', 'png', '25891', 'member/uploadfile/ueditor/201410/3475001aa6.png', '0', '', '1413534119');
INSERT INTO `om_attachment_unused` VALUES ('39', '1', 'omooo', '1', '3', 'png', '70495', 'member/uploadfile/ueditor/201410/3b8817befb.png', '0', '', '1413534119');
INSERT INTO `om_attachment_unused` VALUES ('40', '1', 'omooo', '1', 'a22', 'png', '46219', 'member/uploadfile/ueditor/201410/baf1bc70a2.png', '0', '', '1413534115');
INSERT INTO `om_attachment_unused` VALUES ('42', '1', 'omooo', '1', '5', 'png', '7013', 'member/uploadfile/ueditor/201410/270ae58b60.png', '0', '', '1413534036');
INSERT INTO `om_attachment_unused` VALUES ('44', '1', 'omooo', '1', '3', 'png', '70495', 'member/uploadfile/ueditor/201410/a8c494237c.png', '0', '', '1413534115');
INSERT INTO `om_attachment_unused` VALUES ('46', '1', 'omooo', '1', '4', 'png', '8466', 'member/uploadfile/ueditor/201410/49db23f175.png', '0', '', '1413534119');
INSERT INTO `om_attachment_unused` VALUES ('47', '1', 'omooo', '1', '4', 'png', '50574', 'member/uploadfile/ueditor/201410/174f5b4d0a.png', '0', '', '1413534115');
INSERT INTO `om_attachment_unused` VALUES ('48', '1', 'omooo', '1', '5', 'png', '4109', 'member/uploadfile/ueditor/201410/469bbe6262.png', '0', '', '1413534119');
INSERT INTO `om_attachment_unused` VALUES ('53', '1', 'omooo', '1', '6', 'png', '5563', 'member/uploadfile/ueditor/201410/1e1cb2595f.png', '0', '', '1413534036');
INSERT INTO `om_attachment_unused` VALUES ('54', '1', 'omooo', '1', '5', 'png', '5561', 'member/uploadfile/ueditor/201410/1ccdb5292e.png', '0', '', '1413534115');
INSERT INTO `om_attachment_unused` VALUES ('57', '1', 'omooo', '1', '6', 'png', '28795', 'member/uploadfile/ueditor/201410/622c8c5ca0.png', '0', '', '1413534115');
INSERT INTO `om_attachment_unused` VALUES ('60', '1', 'omooo', '1', '%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7-2013-04-09-%E4%B8%8B%E5%8D%8812.09', 'png', '1205', 'member/uploadfile/ueditor/201410/f69440149a.png', '0', '', '1413534036');
INSERT INTO `om_attachment_unused` VALUES ('61', '1', 'omooo', '1', '%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7-2013-04-09-%E4%B8%8B%E5%8D%8812.09', 'png', '24437', 'member/uploadfile/ueditor/201410/fa8b360094.png', '0', '', '1413534119');
INSERT INTO `om_attachment_unused` VALUES ('62', '1', 'omooo', '1', '%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7-2013-04-09-%E4%B8%8B%E5%8D%8812.09', 'png', '325001', 'member/uploadfile/ueditor/201410/e6810d4514.png', '0', '', '1413534115');
INSERT INTO `om_attachment_unused` VALUES ('63', '1', 'omooo', '1', '7', 'png', '5562', 'member/uploadfile/ueditor/201410/949068c812.png', '0', '', '1413534119');
INSERT INTO `om_attachment_unused` VALUES ('64', '1', 'omooo', '1', '7', 'png', '9918', 'member/uploadfile/ueditor/201410/ccf0479080.png', '0', '', '1413534036');
INSERT INTO `om_attachment_unused` VALUES ('65', '1', 'omooo', '1', '7', 'png', '37506', 'member/uploadfile/ueditor/201410/efbceb7a3b.png', '0', '', '1413534115');

-- ----------------------------
-- Table structure for om_cron_queue
-- ----------------------------
DROP TABLE IF EXISTS `om_cron_queue`;
CREATE TABLE `om_cron_queue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) unsigned NOT NULL COMMENT '类型',
  `value` text NOT NULL COMMENT '值',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `error` varchar(255) NOT NULL COMMENT '错误信息',
  `updatetime` int(10) unsigned NOT NULL COMMENT '执行时间',
  `inputtime` int(10) unsigned NOT NULL COMMENT '写入时间',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='任务队列表';

-- ----------------------------
-- Records of om_cron_queue
-- ----------------------------

-- ----------------------------
-- Table structure for om_downservers
-- ----------------------------
DROP TABLE IF EXISTS `om_downservers`;
CREATE TABLE `om_downservers` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '服务器名',
  `server` varchar(255) NOT NULL COMMENT '服务器地址',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载镜像服务器';

-- ----------------------------
-- Records of om_downservers
-- ----------------------------

-- ----------------------------
-- Table structure for om_field
-- ----------------------------
DROP TABLE IF EXISTS `om_field`;
CREATE TABLE `om_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '字段别名语言',
  `fieldname` varchar(50) NOT NULL COMMENT '字段名称',
  `fieldtype` varchar(50) NOT NULL COMMENT '字段类型',
  `relatedid` smallint(5) unsigned NOT NULL COMMENT '相关id',
  `relatedname` varchar(20) NOT NULL COMMENT '相关表',
  `isedit` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改',
  `ismain` tinyint(1) unsigned NOT NULL COMMENT '是否主表',
  `issystem` tinyint(1) unsigned NOT NULL COMMENT '是否系统表',
  `ismember` tinyint(1) unsigned NOT NULL COMMENT '是否会员可见',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可搜索',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '禁用？',
  `setting` text NOT NULL COMMENT '配置信息',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `list` (`relatedid`,`disabled`,`issystem`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=utf8 COMMENT='字段表';

-- ----------------------------
-- Records of om_field
-- ----------------------------
INSERT INTO `om_field` VALUES ('1', '相关附件', 'attachment', 'Files', '1', 'page', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\"option\";a:5:{s:5:\"width\";s:3:\"80%\";s:4:\"size\";s:1:\"2\";s:5:\"count\";s:2:\"10\";s:3:\"ext\";s:31:\"jpg,gif,png,ppt,doc,xls,rar,zip\";s:10:\"uploadpath\";s:0:\"\";}s:8:\"validate\";a:9:{s:8:\"required\";s:1:\"0\";s:7:\"pattern\";s:0:\"\";s:9:\"errortips\";s:0:\"\";s:6:\"isedit\";s:1:\"0\";s:3:\"xss\";s:1:\"0\";s:5:\"check\";s:0:\"\";s:6:\"filter\";s:0:\"\";s:4:\"tips\";s:0:\"\";s:8:\"formattr\";s:0:\"\";}}', '0');
INSERT INTO `om_field` VALUES ('2', '单页内容', 'content', 'Ueditor', '1', 'page', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\"option\";a:7:{s:5:\"width\";s:3:\"90%\";s:6:\"height\";s:3:\"400\";s:4:\"mode\";s:1:\"1\";s:4:\"tool\";s:0:\"\";s:5:\"mode2\";s:1:\"1\";s:5:\"tool2\";s:0:\"\";s:5:\"value\";s:0:\"\";}s:8:\"validate\";a:9:{s:8:\"required\";s:1:\"1\";s:7:\"pattern\";s:0:\"\";s:9:\"errortips\";s:0:\"\";s:6:\"isedit\";s:1:\"0\";s:3:\"xss\";s:1:\"1\";s:5:\"check\";s:0:\"\";s:6:\"filter\";s:0:\"\";s:4:\"tips\";s:0:\"\";s:8:\"formattr\";s:0:\"\";}}', '0');
INSERT INTO `om_field` VALUES ('3', '名称', 'title', 'Text', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('4', '名称', 'title', 'Text', '2', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('5', '主题', 'title', 'Text', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('6', '名称', 'title', 'Text', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:34:\\\"onblur=\\\"get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('7', '内容', 'content', 'Ueditor', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('8', '链接地址', 'link', 'Redirect', '2', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:2:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('9', '内容', 'content', 'Ueditor', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('10', '图片集', 'image', 'Files', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"80%\\\";s:4:\\\"size\\\";s:2:\\\"10\\\";s:5:\\\"count\\\";s:2:\\\"50\\\";s:3:\\\"ext\\\";s:11:\\\"gif,png,jpg\\\";s:10:\\\"uploadpath\\\";s:25:\\\"{siteid}/photo/{y}{m}{d}/\\\";s:3:\\\"pan\\\";s:1:\\\"0\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('11', '简介', 'content', 'Ueditor', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:6:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:3:\\\"key\\\";s:0:\\\"\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '5');
INSERT INTO `om_field` VALUES ('12', '主题', 'title', 'Text', '5', 'space', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:4:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:4:\\\"tips\\\";N;s:9:\\\"errortips\\\";N;}}', '0');
INSERT INTO `om_field` VALUES ('13', '图片', 'image', 'File', '5', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:4:\\\"size\\\";s:2:\\\"10\\\";s:3:\\\"ext\\\";s:11:\\\"gif,png,jpg\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";s:3:\\\"pan\\\";s:1:\\\"0\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('14', '链接地址', 'link', 'Redirect', '5', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:2:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('15', '关键字', 'keywords', 'Text', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('16', '描述', 'description', 'Textarea', '1', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('17', '关键字', 'keywords', 'Text', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('18', '描述', 'description', 'Textarea', '3', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '3');
INSERT INTO `om_field` VALUES ('19', '关键字', 'keywords', 'Text', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '2');
INSERT INTO `om_field` VALUES ('20', '描述', 'description', 'Textarea', '4', 'space', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:6:\\\"height\\\";s:2:\\\"60\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"1\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";N;s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";s:4:\\\"tips\\\";N;s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '4');
INSERT INTO `om_field` VALUES ('21', '名称', 'name', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:300;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:4:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:4:\\\"tips\\\";N;s:9:\\\"errortips\\\";N;}}', '0');
INSERT INTO `om_field` VALUES ('22', 'Logo', 'logo', 'File', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"size\\\";s:1:\\\"2\\\";s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('23', '空间简介', 'introduction', 'Ueditor', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"200\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('24', 'SEO标题', 'title', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:0:\\\"\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('25', 'SEO关键字', 'keywords', 'Text', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:0:\\\"\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('26', 'SEO描述信息', 'description', 'Textarea', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('27', '第三方代码', 'code', 'Textarea', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"500\\\";s:6:\\\"height\\\";s:3:\\\"100\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('28', '底部信息', 'footer', 'Ueditor', '0', 'spacetable', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";s:3:\\\"200\\\";s:4:\\\"mode\\\";s:1:\\\"2\\\";s:4:\\\"tool\\\";s:29:\\\"\\\'bold\\\', \\\'italic\\\', \\\'underline\\\'\\\";s:5:\\\"value\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:3:\\\"xss\\\";s:1:\\\"0\\\";s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('111', '行业应用', 'industry', 'Ueditor', '11', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('112', '资料下载', 'docdown', 'File', '11', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"size\\\";s:2:\\\"50\\\";s:3:\\\"ext\\\";s:36:\\\"jpg,gif,png,exe,html,php,rar,zip,pdf\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('113', '商品名称', 'title', 'Text', '1', 'form-1', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"1\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('110', '软件资源', 'software', 'Ueditor', '11', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('108', '概述', 'content', 'Ueditor', '11', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('109', '硬件参数', 'hardware', 'Ueditor', '11', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('106', '关键字', 'keywords', 'Text', '11', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('107', '描述', 'description', 'Textarea', '11', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('104', '主题', 'title', 'Text', '11', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('105', '缩略图', 'thumb', 'File', '11', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('83', '文件下载', 'downpdf', 'File', '7', 'module', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"size\\\";s:2:\\\"50\\\";s:3:\\\"ext\\\";s:23:\\\"pdf,jpg,gif,png,rar,zip\\\";s:10:\\\"uploadpath\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"0\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('73', '主题', 'title', 'Text', '6', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('74', '缩略图', 'thumb', 'File', '6', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('75', '关键字', 'keywords', 'Text', '6', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('76', '描述', 'description', 'Textarea', '6', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('77', '内容', 'content', 'Ueditor', '6', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('78', '型号名称', 'title', 'Text', '7', 'module', '1', '1', '1', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";s:3:\\\"400\\\";s:6:\\\"unique\\\";s:1:\\\"0\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"1\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('79', '缩略图', 'thumb', 'File', '7', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('80', '关键字', 'keywords', 'Text', '7', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('81', '描述', 'description', 'Textarea', '7', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('82', '内容', 'content', 'Ueditor', '7', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '1');
INSERT INTO `om_field` VALUES ('118', '姓名', 'name', 'Text', '1', 'form-1', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('117', '数量', 'num', 'Text', '1', 'form-1', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('72', '内容', 'content', 'Ueditor', '5', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:1;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('71', '描述', 'description', 'Textarea', '5', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('70', '关键字', 'keywords', 'Text', '5', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('69', '缩略图', 'thumb', 'File', '5', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('68', '主题', 'title', 'Text', '5', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('119', '电话', 'tel', 'Text', '1', 'form-1', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:16:\\\"/^[0-9-]{6,13}$/\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('120', '邮箱', 'email', 'Text', '1', 'form-1', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:31:\\\"/^[\\\\w\\\\-\\\\.]+@[\\\\w\\\\-\\\\.]+(\\\\.\\\\w+)+$/\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('121', '收货地址', 'address', 'Text', '1', 'form-1', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('122', '商品标题', 'title', 'Text', '12', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '1');
INSERT INTO `om_field` VALUES ('123', '关键字', 'keywords', 'Text', '12', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:1:{s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '2');
INSERT INTO `om_field` VALUES ('124', '缩略图', 'thumb', 'File', '12', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";s:4:\\\"size\\\";i:10;s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";}}', '11');
INSERT INTO `om_field` VALUES ('125', '商品价格', 'price', 'Text', '12', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:150;s:9:\\\"fieldtype\\\";s:7:\\\"DECIMAL\\\";s:11:\\\"fieldlength\\\";s:4:\\\"10,2\\\";}}', '5');
INSERT INTO `om_field` VALUES ('126', '商品总量', 'quantity', 'Text', '12', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:150;s:9:\\\"fieldtype\\\";s:3:\\\"INT\\\";s:11:\\\"fieldlength\\\";s:2:\\\"10\\\";}}', '6');
INSERT INTO `om_field` VALUES ('127', '成交数量', 'volume', 'Text', '12', 'module', '1', '1', '1', '0', '1', '0', 'a:1:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:150;s:5:\\\"value\\\";i:0;s:9:\\\"fieldtype\\\";s:3:\\\"INT\\\";s:11:\\\"fieldlength\\\";s:2:\\\"10\\\";}}', '99');
INSERT INTO `om_field` VALUES ('128', '所在地', 'city', 'Linkage', '12', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:1:{s:7:\\\"linkage\\\";s:7:\\\"address\\\";}s:8:\\\"validate\\\";a:1:{s:8:\\\"required\\\";i:1;}}', '14');
INSERT INTO `om_field` VALUES ('129', '运费模式', 'freight', 'Freight', '12', 'module', '1', '1', '1', '1', '1', '0', '', '15');
INSERT INTO `om_field` VALUES ('130', '是否上架', 'onsale', 'Radio', '12', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"value\\\";i:1;s:7:\\\"options\\\";s:12:\\\"是|1\r\n否|0\\\";s:9:\\\"fieldtype\\\";s:7:\\\"TINYINT\\\";s:11:\\\"fieldlength\\\";s:1:\\\"3\\\";}s:8:\\\"validate\\\";a:1:{s:8:\\\"required\\\";i:1;}}', '99');
INSERT INTO `om_field` VALUES ('131', '内容', 'content', 'Ueditor', '12', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:400;s:4:\\\"mode\\\";i:2;}s:8:\\\"validate\\\";a:1:{s:8:\\\"required\\\";i:1;}}', '13');
INSERT INTO `om_field` VALUES ('132', '商品规格', 'format', 'Format', '12', 'module', '1', '0', '1', '1', '1', '0', 'a:1:{s:8:\\\"validate\\\";a:2:{s:5:\\\"check\\\";s:7:\\\"_format\\\";s:6:\\\"filter\\\";s:7:\\\"_format\\\";}}', '4');
INSERT INTO `om_field` VALUES ('133', '商品折扣', 'discount', 'Discount', '12', 'module', '1', '0', '1', '1', '1', '0', 'a:1:{s:8:\\\"validate\\\";a:1:{s:6:\\\"filter\\\";s:9:\\\"_discount\\\";}}', '8');
INSERT INTO `om_field` VALUES ('134', '商品编号', 'number', 'Text', '12', 'module', '1', '0', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:200;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:2:\\\"30\\\";}}', '7');
INSERT INTO `om_field` VALUES ('135', '商品图片', 'images', 'Files', '12', 'module', '1', '0', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:3:{s:4:\\\"size\\\";i:10;s:5:\\\"count\\\";i:10;s:3:\\\"ext\\\";s:11:\\\"gif,png,jpg\\\";}}', '12');
INSERT INTO `om_field` VALUES ('136', '联系人', 'lname', 'Text', '0', 'member', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:0:\\\"\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('137', '公司名称', 'cname', 'Text', '0', 'member', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:0:\\\"\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('138', '联系电话', 'tel', 'Text', '0', 'member', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:16:\\\"/^[0-9-]{6,13}$/\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('139', '主题', 'title', 'Text', '13', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('140', '缩略图', 'thumb', 'File', '13', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('141', '关键字', 'keywords', 'Text', '13', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('142', '描述', 'description', 'Textarea', '13', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('143', '概述', 'content', 'Ueditor', '13', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('144', '硬件参数', 'hardware', 'Ueditor', '13', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('145', '软件资源', 'software', 'Ueditor', '13', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('146', '行业应用', 'industry', 'Ueditor', '13', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('147', '主题', 'title', 'Text', '14', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:3:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;s:8:\\\"formattr\\\";s:48:\\\"onblur=\\\"check_title();get_keywords(\\\'keywords\\\');\\\"\\\";}}', '0');
INSERT INTO `om_field` VALUES ('148', '缩略图', 'thumb', 'File', '14', 'module', '1', '1', '1', '1', '1', '0', 'a:1:{s:6:\\\"option\\\";a:5:{s:3:\\\"ext\\\";s:11:\\\"jpg,gif,png\\\";s:4:\\\"size\\\";i:10;s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}}', '0');
INSERT INTO `om_field` VALUES ('149', '关键字', 'keywords', 'Text', '14', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:5:\\\"width\\\";i:400;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:4:\\\"tips\\\";s:43:\\\"多个关键字以小写分号“,”分隔\\\";}}', '0');
INSERT INTO `om_field` VALUES ('150', '描述', 'description', 'Textarea', '14', 'module', '1', '1', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";i:500;s:6:\\\"height\\\";i:60;s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:3:\\\"255\\\";}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:6:\\\"filter\\\";s:12:\\\"dr_clearhtml\\\";}}', '0');
INSERT INTO `om_field` VALUES ('151', '概述', 'content', 'Ueditor', '14', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('152', '硬件参数', 'hardware', 'Ueditor', '14', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('153', '软件资源', 'software', 'Ueditor', '14', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('154', '行业应用', 'industry', 'Ueditor', '14', 'module', '1', '0', '1', '1', '1', '0', 'a:2:{s:6:\\\"option\\\";a:3:{s:4:\\\"mode\\\";i:2;s:5:\\\"width\\\";s:3:\\\"90%\\\";s:6:\\\"height\\\";i:200;}s:8:\\\"validate\\\";a:2:{s:3:\\\"xss\\\";i:1;s:8:\\\"required\\\";i:1;}}', '0');
INSERT INTO `om_field` VALUES ('155', '备注', 'remarks', 'Text', '1', 'form-1', '1', '1', '0', '1', '0', '0', 'a:2:{s:6:\\\"option\\\";a:4:{s:5:\\\"width\\\";s:3:\\\"200\\\";s:5:\\\"value\\\";s:0:\\\"\\\";s:9:\\\"fieldtype\\\";s:7:\\\"VARCHAR\\\";s:11:\\\"fieldlength\\\";s:0:\\\"\\\";}s:8:\\\"validate\\\";a:9:{s:8:\\\"required\\\";s:1:\\\"1\\\";s:7:\\\"pattern\\\";s:0:\\\"\\\";s:9:\\\"errortips\\\";s:0:\\\"\\\";s:6:\\\"isedit\\\";s:1:\\\"0\\\";s:3:\\\"xss\\\";s:1:\\\"0\\\";s:5:\\\"check\\\";s:0:\\\"\\\";s:6:\\\"filter\\\";s:0:\\\"\\\";s:4:\\\"tips\\\";s:0:\\\"\\\";s:8:\\\"formattr\\\";s:0:\\\"\\\";}}', '0');

-- ----------------------------
-- Table structure for om_linkage
-- ----------------------------
DROP TABLE IF EXISTS `om_linkage`;
CREATE TABLE `om_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `type` tinyint(1) unsigned NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `module` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联动菜单表';

-- ----------------------------
-- Records of om_linkage
-- ----------------------------
INSERT INTO `om_linkage` VALUES ('1', '中国地区', '0', 'address');

-- ----------------------------
-- Table structure for om_linkage_data_1
-- ----------------------------
DROP TABLE IF EXISTS `om_linkage_data_1`;
CREATE TABLE `om_linkage_data_1` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumint(5) unsigned NOT NULL COMMENT '站点id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  `displayorder` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `list` (`site`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=1149 DEFAULT CHARSET=utf8 COMMENT='联动菜单数据表';

-- ----------------------------
-- Records of om_linkage_data_1
-- ----------------------------
INSERT INTO `om_linkage_data_1` VALUES ('1', '1', '0', '0', '北京市', '0', '1', '1');
INSERT INTO `om_linkage_data_1` VALUES ('2', '1', '0', '0', '天津市', '0', '2', '2');
INSERT INTO `om_linkage_data_1` VALUES ('3', '1', '0', '0', '河北省', '1', '3,65,66,67,68,69,70,71,72,73,74,75', '3');
INSERT INTO `om_linkage_data_1` VALUES ('4', '1', '0', '0', '山西省', '1', '4,248,259,271,277,291,298,305,317,331,346,364', '4');
INSERT INTO `om_linkage_data_1` VALUES ('5', '1', '0', '0', '辽宁省', '1', '5,491,505,516,524,532,539,546,554,561,569,577,582,590,598', '5');
INSERT INTO `om_linkage_data_1` VALUES ('6', '1', '0', '0', '吉林省', '1', '6,605,616,626,633,638,646,653,659,665', '6');
INSERT INTO `om_linkage_data_1` VALUES ('7', '1', '0', '0', '黑龙江省', '1', '7,674,693,710,720,729,738,748,766,777,782,793,800,811', '7');
INSERT INTO `om_linkage_data_1` VALUES ('8', '1', '0', '0', '江苏省', '1', '8,833,834,835,836,837,838,839,840,841,842,843,844,845', '9');
INSERT INTO `om_linkage_data_1` VALUES ('9', '1', '0', '0', '浙江省', '1', '9,846,847,848,849,850,851,852,853,854,855,856', '10');
INSERT INTO `om_linkage_data_1` VALUES ('10', '1', '0', '0', '安徽省', '1', '10,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872', '11');
INSERT INTO `om_linkage_data_1` VALUES ('11', '1', '0', '0', '福建省', '1', '11,873,874,875,876,877,878,879,880,881', '12');
INSERT INTO `om_linkage_data_1` VALUES ('12', '1', '0', '0', '江西省', '1', '12,882,883,884,885,886,887,888,889,890,891,892', '13');
INSERT INTO `om_linkage_data_1` VALUES ('13', '1', '0', '0', '山东省', '1', '13,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909', '14');
INSERT INTO `om_linkage_data_1` VALUES ('14', '1', '0', '0', '河南省', '1', '14,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926', '15');
INSERT INTO `om_linkage_data_1` VALUES ('15', '1', '0', '0', '湖北省', '1', '15,927,928,929,930,931,932,933,934,935,936,937,938,939', '16');
INSERT INTO `om_linkage_data_1` VALUES ('16', '1', '0', '0', '湖南省', '1', '16,940,941,942,943,944,945,946,947,948,949,950,951,952,953', '17');
INSERT INTO `om_linkage_data_1` VALUES ('17', '1', '0', '0', '广东省', '1', '17,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,972,973,974', '18');
INSERT INTO `om_linkage_data_1` VALUES ('18', '1', '0', '0', '海南省', '1', '18,990', '19');
INSERT INTO `om_linkage_data_1` VALUES ('19', '1', '0', '0', '重庆市', '0', '19', '20');
INSERT INTO `om_linkage_data_1` VALUES ('20', '1', '0', '0', '四川省', '1', '20,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,1057,1058,1059,1060,1061,1062,1063,1064,1065,1066', '21');
INSERT INTO `om_linkage_data_1` VALUES ('21', '1', '0', '0', '贵州省', '1', '21,1067,1068,1069,1070,1071,1072,1073,1074,1075', '22');
INSERT INTO `om_linkage_data_1` VALUES ('22', '1', '0', '0', '云南省', '1', '22,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,1090,1091', '23');
INSERT INTO `om_linkage_data_1` VALUES ('23', '1', '0', '0', '陕西省', '1', '23,1099,1100,1101,1102,1103,1104,1105,1106,1107,1108', '24');
INSERT INTO `om_linkage_data_1` VALUES ('24', '1', '0', '0', '甘肃省', '1', '24,1109,1110,1111,1112,1113,1114,1115,1116,1117,1118,1119,1120,1121', '25');
INSERT INTO `om_linkage_data_1` VALUES ('25', '1', '0', '0', '青海省', '1', '25,1122,1123,1124,1125,1126,1127,1128,1129', '26');
INSERT INTO `om_linkage_data_1` VALUES ('26', '1', '0', '0', '宁夏', '1', '26,1130,1131,1132,1133,1134', '27');
INSERT INTO `om_linkage_data_1` VALUES ('27', '1', '0', '0', '西藏', '1', '27,1092,1093,1094,1095,1096,1097,1098', '28');
INSERT INTO `om_linkage_data_1` VALUES ('28', '1', '0', '0', '新疆', '1', '28,1135,1136,1137,1138,1139,1140,1141,1142,1143,1144,1145,1146,1147,1148', '29');
INSERT INTO `om_linkage_data_1` VALUES ('29', '1', '0', '0', '内蒙古', '1', '29,378,388,398,402,415,424,433,447,455,467,474,487', '30');
INSERT INTO `om_linkage_data_1` VALUES ('30', '1', '0', '0', '香港', '0', '30', '31');
INSERT INTO `om_linkage_data_1` VALUES ('31', '1', '0', '0', '澳门', '0', '31', '32');
INSERT INTO `om_linkage_data_1` VALUES ('32', '1', '0', '0', '台湾', '0', '32', '33');
INSERT INTO `om_linkage_data_1` VALUES ('65', '1', '3', '0,3', '石家庄市', '0', '65', '0');
INSERT INTO `om_linkage_data_1` VALUES ('66', '1', '3', '0,3', '唐山市', '0', '66', '0');
INSERT INTO `om_linkage_data_1` VALUES ('67', '1', '3', '0,3', '秦皇岛市', '0', '67', '0');
INSERT INTO `om_linkage_data_1` VALUES ('68', '1', '3', '0,3', '邯郸市', '0', '68', '0');
INSERT INTO `om_linkage_data_1` VALUES ('69', '1', '3', '0,3', '邢台市', '0', '69', '0');
INSERT INTO `om_linkage_data_1` VALUES ('70', '1', '3', '0,3', '保定市', '0', '70', '0');
INSERT INTO `om_linkage_data_1` VALUES ('71', '1', '3', '0,3', '张家口市', '0', '71', '0');
INSERT INTO `om_linkage_data_1` VALUES ('72', '1', '3', '0,3', '承德市', '0', '72', '0');
INSERT INTO `om_linkage_data_1` VALUES ('73', '1', '3', '0,3', '沧州市', '0', '73', '0');
INSERT INTO `om_linkage_data_1` VALUES ('74', '1', '3', '0,3', '廊坊市', '0', '74', '0');
INSERT INTO `om_linkage_data_1` VALUES ('75', '1', '3', '0,3', '衡水市', '0', '75', '0');
INSERT INTO `om_linkage_data_1` VALUES ('248', '1', '4', '0,4', '太原市', '0', '248', '0');
INSERT INTO `om_linkage_data_1` VALUES ('259', '1', '4', '0,4', '大同市', '0', '259', '0');
INSERT INTO `om_linkage_data_1` VALUES ('271', '1', '4', '0,4', '阳泉市', '0', '271', '0');
INSERT INTO `om_linkage_data_1` VALUES ('277', '1', '4', '0,4', '长治市', '0', '277', '0');
INSERT INTO `om_linkage_data_1` VALUES ('291', '1', '4', '0,4', '晋城市', '0', '291', '0');
INSERT INTO `om_linkage_data_1` VALUES ('298', '1', '4', '0,4', '朔州市', '0', '298', '0');
INSERT INTO `om_linkage_data_1` VALUES ('305', '1', '4', '0,4', '晋中市', '0', '305', '0');
INSERT INTO `om_linkage_data_1` VALUES ('317', '1', '4', '0,4', '运城市', '0', '317', '0');
INSERT INTO `om_linkage_data_1` VALUES ('331', '1', '4', '0,4', '忻州市', '0', '331', '0');
INSERT INTO `om_linkage_data_1` VALUES ('346', '1', '4', '0,4', '临汾市', '0', '346', '0');
INSERT INTO `om_linkage_data_1` VALUES ('364', '1', '4', '0,4', '吕梁市', '0', '364', '0');
INSERT INTO `om_linkage_data_1` VALUES ('378', '1', '29', '0,29', '呼和浩特市', '0', '378', '0');
INSERT INTO `om_linkage_data_1` VALUES ('388', '1', '29', '0,29', '包头市', '0', '388', '0');
INSERT INTO `om_linkage_data_1` VALUES ('398', '1', '29', '0,29', '乌海市', '0', '398', '0');
INSERT INTO `om_linkage_data_1` VALUES ('402', '1', '29', '0,29', '赤峰市', '0', '402', '0');
INSERT INTO `om_linkage_data_1` VALUES ('415', '1', '29', '0,29', '通辽市', '0', '415', '0');
INSERT INTO `om_linkage_data_1` VALUES ('424', '1', '29', '0,29', '鄂尔多斯市', '0', '424', '0');
INSERT INTO `om_linkage_data_1` VALUES ('433', '1', '29', '0,29', '呼伦贝尔市', '0', '433', '0');
INSERT INTO `om_linkage_data_1` VALUES ('447', '1', '29', '0,29', '巴彦淖尔市', '0', '447', '0');
INSERT INTO `om_linkage_data_1` VALUES ('455', '1', '29', '0,29', '乌兰察布市', '0', '455', '0');
INSERT INTO `om_linkage_data_1` VALUES ('467', '1', '29', '0,29', '兴安盟', '0', '467', '0');
INSERT INTO `om_linkage_data_1` VALUES ('474', '1', '29', '0,29', '锡林郭勒盟', '0', '474', '0');
INSERT INTO `om_linkage_data_1` VALUES ('487', '1', '29', '0,29', '阿拉善盟', '0', '487', '0');
INSERT INTO `om_linkage_data_1` VALUES ('491', '1', '5', '0,5', '沈阳市', '0', '491', '0');
INSERT INTO `om_linkage_data_1` VALUES ('505', '1', '5', '0,5', '大连市', '0', '505', '0');
INSERT INTO `om_linkage_data_1` VALUES ('516', '1', '5', '0,5', '鞍山市', '0', '516', '0');
INSERT INTO `om_linkage_data_1` VALUES ('524', '1', '5', '0,5', '抚顺市', '0', '524', '0');
INSERT INTO `om_linkage_data_1` VALUES ('532', '1', '5', '0,5', '本溪市', '0', '532', '0');
INSERT INTO `om_linkage_data_1` VALUES ('539', '1', '5', '0,5', '丹东市', '0', '539', '0');
INSERT INTO `om_linkage_data_1` VALUES ('546', '1', '5', '0,5', '锦州市', '0', '546', '0');
INSERT INTO `om_linkage_data_1` VALUES ('554', '1', '5', '0,5', '营口市', '0', '554', '0');
INSERT INTO `om_linkage_data_1` VALUES ('561', '1', '5', '0,5', '阜新市', '0', '561', '0');
INSERT INTO `om_linkage_data_1` VALUES ('569', '1', '5', '0,5', '辽阳市', '0', '569', '0');
INSERT INTO `om_linkage_data_1` VALUES ('577', '1', '5', '0,5', '盘锦市', '0', '577', '0');
INSERT INTO `om_linkage_data_1` VALUES ('582', '1', '5', '0,5', '铁岭市', '0', '582', '0');
INSERT INTO `om_linkage_data_1` VALUES ('590', '1', '5', '0,5', '朝阳市', '0', '590', '0');
INSERT INTO `om_linkage_data_1` VALUES ('598', '1', '5', '0,5', '葫芦岛市', '0', '598', '0');
INSERT INTO `om_linkage_data_1` VALUES ('605', '1', '6', '0,6', '长春市', '0', '605', '0');
INSERT INTO `om_linkage_data_1` VALUES ('616', '1', '6', '0,6', '吉林市', '0', '616', '0');
INSERT INTO `om_linkage_data_1` VALUES ('626', '1', '6', '0,6', '四平市', '0', '626', '0');
INSERT INTO `om_linkage_data_1` VALUES ('633', '1', '6', '0,6', '辽源市', '0', '633', '0');
INSERT INTO `om_linkage_data_1` VALUES ('638', '1', '6', '0,6', '通化市', '0', '638', '0');
INSERT INTO `om_linkage_data_1` VALUES ('646', '1', '6', '0,6', '白山市', '0', '646', '0');
INSERT INTO `om_linkage_data_1` VALUES ('653', '1', '6', '0,6', '松原市', '0', '653', '0');
INSERT INTO `om_linkage_data_1` VALUES ('659', '1', '6', '0,6', '白城市', '0', '659', '0');
INSERT INTO `om_linkage_data_1` VALUES ('665', '1', '6', '0,6', '延边自治州', '0', '665', '0');
INSERT INTO `om_linkage_data_1` VALUES ('674', '1', '7', '0,7', '哈尔滨市', '0', '674', '0');
INSERT INTO `om_linkage_data_1` VALUES ('693', '1', '7', '0,7', '齐齐哈尔市', '0', '693', '0');
INSERT INTO `om_linkage_data_1` VALUES ('710', '1', '7', '0,7', '鸡西市', '0', '710', '0');
INSERT INTO `om_linkage_data_1` VALUES ('720', '1', '7', '0,7', '鹤岗市', '0', '720', '0');
INSERT INTO `om_linkage_data_1` VALUES ('729', '1', '7', '0,7', '双鸭山市', '0', '729', '0');
INSERT INTO `om_linkage_data_1` VALUES ('738', '1', '7', '0,7', '大庆市', '0', '738', '0');
INSERT INTO `om_linkage_data_1` VALUES ('748', '1', '7', '0,7', '伊春市', '0', '748', '0');
INSERT INTO `om_linkage_data_1` VALUES ('766', '1', '7', '0,7', '佳木斯市', '0', '766', '0');
INSERT INTO `om_linkage_data_1` VALUES ('777', '1', '7', '0,7', '七台河市', '0', '777', '0');
INSERT INTO `om_linkage_data_1` VALUES ('782', '1', '7', '0,7', '牡丹江市', '0', '782', '0');
INSERT INTO `om_linkage_data_1` VALUES ('793', '1', '7', '0,7', '黑河市', '0', '793', '0');
INSERT INTO `om_linkage_data_1` VALUES ('800', '1', '7', '0,7', '绥化市', '0', '800', '0');
INSERT INTO `om_linkage_data_1` VALUES ('811', '1', '7', '0,7', '大兴安岭地区', '0', '811', '0');
INSERT INTO `om_linkage_data_1` VALUES ('815', '1', '0', '0', '上海市', '0', '815', '8');
INSERT INTO `om_linkage_data_1` VALUES ('833', '1', '8', '0,8', '南京市', '0', '833', '0');
INSERT INTO `om_linkage_data_1` VALUES ('834', '1', '8', '0,8', '无锡市', '0', '834', '0');
INSERT INTO `om_linkage_data_1` VALUES ('835', '1', '8', '0,8', '徐州市', '0', '835', '0');
INSERT INTO `om_linkage_data_1` VALUES ('836', '1', '8', '0,8', '常州市', '0', '836', '0');
INSERT INTO `om_linkage_data_1` VALUES ('837', '1', '8', '0,8', '苏州市', '0', '837', '0');
INSERT INTO `om_linkage_data_1` VALUES ('838', '1', '8', '0,8', '南通市', '0', '838', '0');
INSERT INTO `om_linkage_data_1` VALUES ('839', '1', '8', '0,8', '连云港市', '0', '839', '0');
INSERT INTO `om_linkage_data_1` VALUES ('840', '1', '8', '0,8', '淮安市', '0', '840', '0');
INSERT INTO `om_linkage_data_1` VALUES ('841', '1', '8', '0,8', '盐城市', '0', '841', '0');
INSERT INTO `om_linkage_data_1` VALUES ('842', '1', '8', '0,8', '扬州市', '0', '842', '0');
INSERT INTO `om_linkage_data_1` VALUES ('843', '1', '8', '0,8', '镇江市', '0', '843', '0');
INSERT INTO `om_linkage_data_1` VALUES ('844', '1', '8', '0,8', '泰州市', '0', '844', '0');
INSERT INTO `om_linkage_data_1` VALUES ('845', '1', '8', '0,8', '宿迁市', '0', '845', '0');
INSERT INTO `om_linkage_data_1` VALUES ('846', '1', '9', '0,9', '杭州市', '0', '846', '0');
INSERT INTO `om_linkage_data_1` VALUES ('847', '1', '9', '0,9', '宁波市', '0', '847', '0');
INSERT INTO `om_linkage_data_1` VALUES ('848', '1', '9', '0,9', '温州市', '0', '848', '0');
INSERT INTO `om_linkage_data_1` VALUES ('849', '1', '9', '0,9', '嘉兴市', '0', '849', '0');
INSERT INTO `om_linkage_data_1` VALUES ('850', '1', '9', '0,9', '湖州市', '0', '850', '0');
INSERT INTO `om_linkage_data_1` VALUES ('851', '1', '9', '0,9', '绍兴市', '0', '851', '0');
INSERT INTO `om_linkage_data_1` VALUES ('852', '1', '9', '0,9', '金华市', '0', '852', '0');
INSERT INTO `om_linkage_data_1` VALUES ('853', '1', '9', '0,9', '衢州市', '0', '853', '0');
INSERT INTO `om_linkage_data_1` VALUES ('854', '1', '9', '0,9', '舟山市', '0', '854', '0');
INSERT INTO `om_linkage_data_1` VALUES ('855', '1', '9', '0,9', '台州市', '0', '855', '0');
INSERT INTO `om_linkage_data_1` VALUES ('856', '1', '9', '0,9', '丽水市', '0', '856', '0');
INSERT INTO `om_linkage_data_1` VALUES ('857', '1', '10', '0,10', '合肥市', '0', '857', '0');
INSERT INTO `om_linkage_data_1` VALUES ('858', '1', '10', '0,10', '芜湖市', '0', '858', '0');
INSERT INTO `om_linkage_data_1` VALUES ('859', '1', '10', '0,10', '蚌埠市', '0', '859', '0');
INSERT INTO `om_linkage_data_1` VALUES ('860', '1', '10', '0,10', '淮南市', '0', '860', '0');
INSERT INTO `om_linkage_data_1` VALUES ('861', '1', '10', '0,10', '马鞍山市', '0', '861', '0');
INSERT INTO `om_linkage_data_1` VALUES ('862', '1', '10', '0,10', '淮北市', '0', '862', '0');
INSERT INTO `om_linkage_data_1` VALUES ('863', '1', '10', '0,10', '铜陵市', '0', '863', '0');
INSERT INTO `om_linkage_data_1` VALUES ('864', '1', '10', '0,10', '安庆市', '0', '864', '0');
INSERT INTO `om_linkage_data_1` VALUES ('865', '1', '10', '0,10', '黄山市', '0', '865', '0');
INSERT INTO `om_linkage_data_1` VALUES ('866', '1', '10', '0,10', '滁州市', '0', '866', '0');
INSERT INTO `om_linkage_data_1` VALUES ('867', '1', '10', '0,10', '阜阳市', '0', '867', '0');
INSERT INTO `om_linkage_data_1` VALUES ('868', '1', '10', '0,10', '宿州市', '0', '868', '0');
INSERT INTO `om_linkage_data_1` VALUES ('869', '1', '10', '0,10', '六安市', '0', '869', '0');
INSERT INTO `om_linkage_data_1` VALUES ('870', '1', '10', '0,10', '亳州市', '0', '870', '0');
INSERT INTO `om_linkage_data_1` VALUES ('871', '1', '10', '0,10', '池州市', '0', '871', '0');
INSERT INTO `om_linkage_data_1` VALUES ('872', '1', '10', '0,10', '宣城市', '0', '872', '0');
INSERT INTO `om_linkage_data_1` VALUES ('873', '1', '11', '0,11', '福州市', '0', '873', '0');
INSERT INTO `om_linkage_data_1` VALUES ('874', '1', '11', '0,11', '厦门市', '0', '874', '0');
INSERT INTO `om_linkage_data_1` VALUES ('875', '1', '11', '0,11', '莆田市', '0', '875', '0');
INSERT INTO `om_linkage_data_1` VALUES ('876', '1', '11', '0,11', '三明市', '0', '876', '0');
INSERT INTO `om_linkage_data_1` VALUES ('877', '1', '11', '0,11', '泉州市', '0', '877', '0');
INSERT INTO `om_linkage_data_1` VALUES ('878', '1', '11', '0,11', '漳州市', '0', '878', '0');
INSERT INTO `om_linkage_data_1` VALUES ('879', '1', '11', '0,11', '南平市', '0', '879', '0');
INSERT INTO `om_linkage_data_1` VALUES ('880', '1', '11', '0,11', '龙岩市', '0', '880', '0');
INSERT INTO `om_linkage_data_1` VALUES ('881', '1', '11', '0,11', '宁德市', '0', '881', '0');
INSERT INTO `om_linkage_data_1` VALUES ('882', '1', '12', '0,12', '南昌市', '0', '882', '0');
INSERT INTO `om_linkage_data_1` VALUES ('883', '1', '12', '0,12', '景德镇市', '0', '883', '0');
INSERT INTO `om_linkage_data_1` VALUES ('884', '1', '12', '0,12', '萍乡市', '0', '884', '0');
INSERT INTO `om_linkage_data_1` VALUES ('885', '1', '12', '0,12', '九江市', '0', '885', '0');
INSERT INTO `om_linkage_data_1` VALUES ('886', '1', '12', '0,12', '新余市', '0', '886', '0');
INSERT INTO `om_linkage_data_1` VALUES ('887', '1', '12', '0,12', '鹰潭市', '0', '887', '0');
INSERT INTO `om_linkage_data_1` VALUES ('888', '1', '12', '0,12', '赣州市', '0', '888', '0');
INSERT INTO `om_linkage_data_1` VALUES ('889', '1', '12', '0,12', '吉安市', '0', '889', '0');
INSERT INTO `om_linkage_data_1` VALUES ('890', '1', '12', '0,12', '宜春市', '0', '890', '0');
INSERT INTO `om_linkage_data_1` VALUES ('891', '1', '12', '0,12', '抚州市', '0', '891', '0');
INSERT INTO `om_linkage_data_1` VALUES ('892', '1', '12', '0,12', '上饶市', '0', '892', '0');
INSERT INTO `om_linkage_data_1` VALUES ('893', '1', '13', '0,13', '济南市', '0', '893', '0');
INSERT INTO `om_linkage_data_1` VALUES ('894', '1', '13', '0,13', '青岛市', '0', '894', '0');
INSERT INTO `om_linkage_data_1` VALUES ('895', '1', '13', '0,13', '淄博市', '0', '895', '0');
INSERT INTO `om_linkage_data_1` VALUES ('896', '1', '13', '0,13', '枣庄市', '0', '896', '0');
INSERT INTO `om_linkage_data_1` VALUES ('897', '1', '13', '0,13', '东营市', '0', '897', '0');
INSERT INTO `om_linkage_data_1` VALUES ('898', '1', '13', '0,13', '烟台市', '0', '898', '0');
INSERT INTO `om_linkage_data_1` VALUES ('899', '1', '13', '0,13', '潍坊市', '0', '899', '0');
INSERT INTO `om_linkage_data_1` VALUES ('900', '1', '13', '0,13', '济宁市', '0', '900', '0');
INSERT INTO `om_linkage_data_1` VALUES ('901', '1', '13', '0,13', '泰安市', '0', '901', '0');
INSERT INTO `om_linkage_data_1` VALUES ('902', '1', '13', '0,13', '威海市', '0', '902', '0');
INSERT INTO `om_linkage_data_1` VALUES ('903', '1', '13', '0,13', '日照市', '0', '903', '0');
INSERT INTO `om_linkage_data_1` VALUES ('904', '1', '13', '0,13', '莱芜市', '0', '904', '0');
INSERT INTO `om_linkage_data_1` VALUES ('905', '1', '13', '0,13', '临沂市', '0', '905', '0');
INSERT INTO `om_linkage_data_1` VALUES ('906', '1', '13', '0,13', '德州市', '0', '906', '0');
INSERT INTO `om_linkage_data_1` VALUES ('907', '1', '13', '0,13', '聊城市', '0', '907', '0');
INSERT INTO `om_linkage_data_1` VALUES ('908', '1', '13', '0,13', '滨州市', '0', '908', '0');
INSERT INTO `om_linkage_data_1` VALUES ('909', '1', '13', '0,13', '菏泽市', '0', '909', '0');
INSERT INTO `om_linkage_data_1` VALUES ('910', '1', '14', '0,14', '郑州市', '0', '910', '0');
INSERT INTO `om_linkage_data_1` VALUES ('911', '1', '14', '0,14', '开封市', '0', '911', '0');
INSERT INTO `om_linkage_data_1` VALUES ('912', '1', '14', '0,14', '洛阳市', '0', '912', '0');
INSERT INTO `om_linkage_data_1` VALUES ('913', '1', '14', '0,14', '平顶山市', '0', '913', '0');
INSERT INTO `om_linkage_data_1` VALUES ('914', '1', '14', '0,14', '安阳市', '0', '914', '0');
INSERT INTO `om_linkage_data_1` VALUES ('915', '1', '14', '0,14', '鹤壁市', '0', '915', '0');
INSERT INTO `om_linkage_data_1` VALUES ('916', '1', '14', '0,14', '新乡市', '0', '916', '0');
INSERT INTO `om_linkage_data_1` VALUES ('917', '1', '14', '0,14', '焦作市', '0', '917', '0');
INSERT INTO `om_linkage_data_1` VALUES ('918', '1', '14', '0,14', '濮阳市', '0', '918', '0');
INSERT INTO `om_linkage_data_1` VALUES ('919', '1', '14', '0,14', '许昌市', '0', '919', '0');
INSERT INTO `om_linkage_data_1` VALUES ('920', '1', '14', '0,14', '漯河市', '0', '920', '0');
INSERT INTO `om_linkage_data_1` VALUES ('921', '1', '14', '0,14', '三门峡市', '0', '921', '0');
INSERT INTO `om_linkage_data_1` VALUES ('922', '1', '14', '0,14', '南阳市', '0', '922', '0');
INSERT INTO `om_linkage_data_1` VALUES ('923', '1', '14', '0,14', '商丘市', '0', '923', '0');
INSERT INTO `om_linkage_data_1` VALUES ('924', '1', '14', '0,14', '信阳市', '0', '924', '0');
INSERT INTO `om_linkage_data_1` VALUES ('925', '1', '14', '0,14', '周口市', '0', '925', '0');
INSERT INTO `om_linkage_data_1` VALUES ('926', '1', '14', '0,14', '驻马店市', '0', '926', '0');
INSERT INTO `om_linkage_data_1` VALUES ('927', '1', '15', '0,15', '武汉市', '0', '927', '0');
INSERT INTO `om_linkage_data_1` VALUES ('928', '1', '15', '0,15', '黄石市', '0', '928', '0');
INSERT INTO `om_linkage_data_1` VALUES ('929', '1', '15', '0,15', '十堰市', '0', '929', '0');
INSERT INTO `om_linkage_data_1` VALUES ('930', '1', '15', '0,15', '宜昌市', '0', '930', '0');
INSERT INTO `om_linkage_data_1` VALUES ('931', '1', '15', '0,15', '襄阳市', '0', '931', '0');
INSERT INTO `om_linkage_data_1` VALUES ('932', '1', '15', '0,15', '鄂州市', '0', '932', '0');
INSERT INTO `om_linkage_data_1` VALUES ('933', '1', '15', '0,15', '荆门市', '0', '933', '0');
INSERT INTO `om_linkage_data_1` VALUES ('934', '1', '15', '0,15', '孝感市', '0', '934', '0');
INSERT INTO `om_linkage_data_1` VALUES ('935', '1', '15', '0,15', '荆州市', '0', '935', '0');
INSERT INTO `om_linkage_data_1` VALUES ('936', '1', '15', '0,15', '黄冈市', '0', '936', '0');
INSERT INTO `om_linkage_data_1` VALUES ('937', '1', '15', '0,15', '咸宁市', '0', '937', '0');
INSERT INTO `om_linkage_data_1` VALUES ('938', '1', '15', '0,15', '随州市', '0', '938', '0');
INSERT INTO `om_linkage_data_1` VALUES ('939', '1', '15', '0,15', '恩施自治州', '0', '939', '0');
INSERT INTO `om_linkage_data_1` VALUES ('940', '1', '16', '0,16', '长沙市', '0', '940', '0');
INSERT INTO `om_linkage_data_1` VALUES ('941', '1', '16', '0,16', '株洲市', '0', '941', '0');
INSERT INTO `om_linkage_data_1` VALUES ('942', '1', '16', '0,16', '湘潭市', '0', '942', '0');
INSERT INTO `om_linkage_data_1` VALUES ('943', '1', '16', '0,16', '衡阳市', '0', '943', '0');
INSERT INTO `om_linkage_data_1` VALUES ('944', '1', '16', '0,16', '邵阳市', '0', '944', '0');
INSERT INTO `om_linkage_data_1` VALUES ('945', '1', '16', '0,16', '岳阳市', '0', '945', '0');
INSERT INTO `om_linkage_data_1` VALUES ('946', '1', '16', '0,16', '常德市', '0', '946', '0');
INSERT INTO `om_linkage_data_1` VALUES ('947', '1', '16', '0,16', '张家界市', '0', '947', '0');
INSERT INTO `om_linkage_data_1` VALUES ('948', '1', '16', '0,16', '益阳市', '0', '948', '0');
INSERT INTO `om_linkage_data_1` VALUES ('949', '1', '16', '0,16', '郴州市', '0', '949', '0');
INSERT INTO `om_linkage_data_1` VALUES ('950', '1', '16', '0,16', '永州市', '0', '950', '0');
INSERT INTO `om_linkage_data_1` VALUES ('951', '1', '16', '0,16', '怀化市', '0', '951', '0');
INSERT INTO `om_linkage_data_1` VALUES ('952', '1', '16', '0,16', '娄底市', '0', '952', '0');
INSERT INTO `om_linkage_data_1` VALUES ('953', '1', '16', '0,16', '湘西自治州', '0', '953', '0');
INSERT INTO `om_linkage_data_1` VALUES ('954', '1', '17', '0,17', '广州市', '0', '954', '0');
INSERT INTO `om_linkage_data_1` VALUES ('955', '1', '17', '0,17', '韶关市', '0', '955', '0');
INSERT INTO `om_linkage_data_1` VALUES ('956', '1', '17', '0,17', '深圳市', '0', '956', '0');
INSERT INTO `om_linkage_data_1` VALUES ('957', '1', '17', '0,17', '珠海市', '0', '957', '0');
INSERT INTO `om_linkage_data_1` VALUES ('958', '1', '17', '0,17', '汕头市', '0', '958', '0');
INSERT INTO `om_linkage_data_1` VALUES ('959', '1', '17', '0,17', '佛山市', '0', '959', '0');
INSERT INTO `om_linkage_data_1` VALUES ('960', '1', '17', '0,17', '江门市', '0', '960', '0');
INSERT INTO `om_linkage_data_1` VALUES ('961', '1', '17', '0,17', '湛江市', '0', '961', '0');
INSERT INTO `om_linkage_data_1` VALUES ('962', '1', '17', '0,17', '茂名市', '0', '962', '0');
INSERT INTO `om_linkage_data_1` VALUES ('963', '1', '17', '0,17', '肇庆市', '0', '963', '0');
INSERT INTO `om_linkage_data_1` VALUES ('964', '1', '17', '0,17', '惠州市', '0', '964', '0');
INSERT INTO `om_linkage_data_1` VALUES ('965', '1', '17', '0,17', '梅州市', '0', '965', '0');
INSERT INTO `om_linkage_data_1` VALUES ('966', '1', '17', '0,17', '汕尾市', '0', '966', '0');
INSERT INTO `om_linkage_data_1` VALUES ('967', '1', '17', '0,17', '河源市', '0', '967', '0');
INSERT INTO `om_linkage_data_1` VALUES ('968', '1', '17', '0,17', '阳江市', '0', '968', '0');
INSERT INTO `om_linkage_data_1` VALUES ('969', '1', '17', '0,17', '清远市', '0', '969', '0');
INSERT INTO `om_linkage_data_1` VALUES ('972', '1', '17', '0,17', '潮州市', '0', '972', '0');
INSERT INTO `om_linkage_data_1` VALUES ('973', '1', '17', '0,17', '揭阳市', '0', '973', '0');
INSERT INTO `om_linkage_data_1` VALUES ('974', '1', '17', '0,17', '云浮市', '0', '974', '0');
INSERT INTO `om_linkage_data_1` VALUES ('975', '1', '0', '0', '广西', '1', '975,976,977,978,979,980,981,982,983,984,985,986,987,988,989', '18');
INSERT INTO `om_linkage_data_1` VALUES ('976', '1', '975', '0,975', '南宁市', '0', '976', '0');
INSERT INTO `om_linkage_data_1` VALUES ('977', '1', '975', '0,975', '柳州市', '0', '977', '0');
INSERT INTO `om_linkage_data_1` VALUES ('978', '1', '975', '0,975', '桂林市', '0', '978', '0');
INSERT INTO `om_linkage_data_1` VALUES ('979', '1', '975', '0,975', '梧州市', '0', '979', '0');
INSERT INTO `om_linkage_data_1` VALUES ('980', '1', '975', '0,975', '北海市', '0', '980', '0');
INSERT INTO `om_linkage_data_1` VALUES ('981', '1', '975', '0,975', '防城港市', '0', '981', '0');
INSERT INTO `om_linkage_data_1` VALUES ('982', '1', '975', '0,975', '钦州市', '0', '982', '0');
INSERT INTO `om_linkage_data_1` VALUES ('983', '1', '975', '0,975', '贵港市', '0', '983', '0');
INSERT INTO `om_linkage_data_1` VALUES ('984', '1', '975', '0,975', '玉林市', '0', '984', '0');
INSERT INTO `om_linkage_data_1` VALUES ('985', '1', '975', '0,975', '百色市', '0', '985', '0');
INSERT INTO `om_linkage_data_1` VALUES ('986', '1', '975', '0,975', '贺州市', '0', '986', '0');
INSERT INTO `om_linkage_data_1` VALUES ('987', '1', '975', '0,975', '河池市', '0', '987', '0');
INSERT INTO `om_linkage_data_1` VALUES ('988', '1', '975', '0,975', '来宾市', '0', '988', '0');
INSERT INTO `om_linkage_data_1` VALUES ('989', '1', '975', '0,975', '崇左市', '0', '989', '0');
INSERT INTO `om_linkage_data_1` VALUES ('990', '1', '18', '0,18', '海口市', '0', '990', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1046', '1', '20', '0,20', '成都市', '0', '1046', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1047', '1', '20', '0,20', '自贡市', '0', '1047', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1048', '1', '20', '0,20', '攀枝花市', '0', '1048', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1049', '1', '20', '0,20', '泸州市', '0', '1049', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1050', '1', '20', '0,20', '德阳市', '0', '1050', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1051', '1', '20', '0,20', '绵阳市', '0', '1051', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1052', '1', '20', '0,20', '广元市', '0', '1052', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1053', '1', '20', '0,20', '遂宁市', '0', '1053', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1054', '1', '20', '0,20', '内江市', '0', '1054', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1055', '1', '20', '0,20', '乐山市', '0', '1055', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1056', '1', '20', '0,20', '南充市', '0', '1056', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1057', '1', '20', '0,20', '眉山市', '0', '1057', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1058', '1', '20', '0,20', '宜宾市', '0', '1058', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1059', '1', '20', '0,20', '广安市', '0', '1059', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1060', '1', '20', '0,20', '达州市', '0', '1060', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1061', '1', '20', '0,20', '雅安市', '0', '1061', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1062', '1', '20', '0,20', '巴中市', '0', '1062', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1063', '1', '20', '0,20', '资阳市', '0', '1063', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1064', '1', '20', '0,20', '阿坝自治州', '0', '1064', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1065', '1', '20', '0,20', '甘孜自治州', '0', '1065', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1066', '1', '20', '0,20', '凉山自治州', '0', '1066', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1067', '1', '21', '0,21', '贵阳市', '0', '1067', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1068', '1', '21', '0,21', '六盘水市', '0', '1068', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1069', '1', '21', '0,21', '遵义市', '0', '1069', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1070', '1', '21', '0,21', '安顺市', '0', '1070', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1071', '1', '21', '0,21', '毕节市', '0', '1071', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1072', '1', '21', '0,21', '铜仁市', '0', '1072', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1073', '1', '21', '0,21', '黔西南自治州', '0', '1073', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1074', '1', '21', '0,21', '黔东南自治州', '0', '1074', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1075', '1', '21', '0,21', '黔南自治州', '0', '1075', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1076', '1', '22', '0,22', '昆明市', '0', '1076', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1077', '1', '22', '0,22', '曲靖市', '0', '1077', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1078', '1', '22', '0,22', '玉溪市', '0', '1078', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1079', '1', '22', '0,22', '保山市', '0', '1079', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1080', '1', '22', '0,22', '昭通市', '0', '1080', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1081', '1', '22', '0,22', '丽江市', '0', '1081', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1082', '1', '22', '0,22', '普洱市', '0', '1082', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1083', '1', '22', '0,22', '临沧市', '0', '1083', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1084', '1', '22', '0,22', '楚雄自治州', '0', '1084', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1085', '1', '22', '0,22', '红河自治州', '0', '1085', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1086', '1', '22', '0,22', '文山自治州', '0', '1086', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1087', '1', '22', '0,22', '西双版纳自治州', '0', '1087', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1088', '1', '22', '0,22', '大理自治州', '0', '1088', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1089', '1', '22', '0,22', '德宏自治州', '0', '1089', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1090', '1', '22', '0,22', '怒江自治州', '0', '1090', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1091', '1', '22', '0,22', '迪庆自治州', '0', '1091', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1092', '1', '27', '0,27', '拉萨市', '0', '1092', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1093', '1', '27', '0,27', '昌都地区', '0', '1093', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1094', '1', '27', '0,27', '山南地区', '0', '1094', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1095', '1', '27', '0,27', '日喀则地区', '0', '1095', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1096', '1', '27', '0,27', '那曲地区', '0', '1096', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1097', '1', '27', '0,27', '阿里地区', '0', '1097', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1098', '1', '27', '0,27', '林芝地区', '0', '1098', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1099', '1', '23', '0,23', '西安市', '0', '1099', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1100', '1', '23', '0,23', '铜川市', '0', '1100', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1101', '1', '23', '0,23', '宝鸡市', '0', '1101', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1102', '1', '23', '0,23', '咸阳市', '0', '1102', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1103', '1', '23', '0,23', '渭南市', '0', '1103', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1104', '1', '23', '0,23', '延安市', '0', '1104', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1105', '1', '23', '0,23', '汉中市', '0', '1105', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1106', '1', '23', '0,23', '榆林市', '0', '1106', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1107', '1', '23', '0,23', '安康市', '0', '1107', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1108', '1', '23', '0,23', '商洛市', '0', '1108', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1109', '1', '24', '0,24', '兰州市', '0', '1109', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1110', '1', '24', '0,24', '嘉峪关市', '0', '1110', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1111', '1', '24', '0,24', '白银市', '0', '1111', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1112', '1', '24', '0,24', '天水市', '0', '1112', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1113', '1', '24', '0,24', '武威市', '0', '1113', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1114', '1', '24', '0,24', '张掖市', '0', '1114', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1115', '1', '24', '0,24', '平凉市', '0', '1115', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1116', '1', '24', '0,24', '酒泉市', '0', '1116', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1117', '1', '24', '0,24', '庆阳市', '0', '1117', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1118', '1', '24', '0,24', '定西市', '0', '1118', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1119', '1', '24', '0,24', '陇南市', '0', '1119', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1120', '1', '24', '0,24', '临夏自治州', '0', '1120', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1121', '1', '24', '0,24', '甘南自治州', '0', '1121', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1122', '1', '25', '0,25', '西宁市', '0', '1122', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1123', '1', '25', '0,25', '海东地区', '0', '1123', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1124', '1', '25', '0,25', '海北自治州', '0', '1124', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1125', '1', '25', '0,25', '黄南自治州', '0', '1125', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1126', '1', '25', '0,25', '海南自治州', '0', '1126', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1127', '1', '25', '0,25', '果洛自治州', '0', '1127', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1128', '1', '25', '0,25', '玉树自治州', '0', '1128', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1129', '1', '25', '0,25', '海西自治州', '0', '1129', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1130', '1', '26', '0,26', '银川市', '0', '1130', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1131', '1', '26', '0,26', '石嘴山市', '0', '1131', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1132', '1', '26', '0,26', '吴忠市', '0', '1132', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1133', '1', '26', '0,26', '固原市', '0', '1133', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1134', '1', '26', '0,26', '中卫市', '0', '1134', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1135', '1', '28', '0,28', '乌鲁木齐市', '0', '1135', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1136', '1', '28', '0,28', '克拉玛依市', '0', '1136', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1137', '1', '28', '0,28', '吐鲁番地区', '0', '1137', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1138', '1', '28', '0,28', '哈密地区', '0', '1138', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1139', '1', '28', '0,28', '昌吉自治州', '0', '1139', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1140', '1', '28', '0,28', '博尔塔拉自治州', '0', '1140', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1141', '1', '28', '0,28', '巴音郭楞自治州', '0', '1141', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1142', '1', '28', '0,28', '阿克苏地区', '0', '1142', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1143', '1', '28', '0,28', '克孜勒自治州', '0', '1143', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1144', '1', '28', '0,28', '喀什地区', '0', '1144', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1145', '1', '28', '0,28', '和田地区', '0', '1145', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1146', '1', '28', '0,28', '伊犁自治州', '0', '1146', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1147', '1', '28', '0,28', '塔城地区', '0', '1147', '0');
INSERT INTO `om_linkage_data_1` VALUES ('1148', '1', '28', '0,28', '阿勒泰地区', '0', '1148', '0');

-- ----------------------------
-- Table structure for om_mail_queue
-- ----------------------------
DROP TABLE IF EXISTS `om_mail_queue`;
CREATE TABLE `om_mail_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL COMMENT '邮件地址',
  `subject` varchar(255) NOT NULL COMMENT '邮件标题',
  `message` text NOT NULL COMMENT '邮件内容',
  `status` tinyint(1) unsigned NOT NULL COMMENT '发送状态',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `updatetime` (`updatetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件队列表';

-- ----------------------------
-- Records of om_mail_queue
-- ----------------------------

-- ----------------------------
-- Table structure for om_mail_smtp
-- ----------------------------
DROP TABLE IF EXISTS `om_mail_smtp`;
CREATE TABLE `om_mail_smtp` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `port` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='邮件账户表';

-- ----------------------------
-- Records of om_mail_smtp
-- ----------------------------
INSERT INTO `om_mail_smtp` VALUES ('1', 'smtp.163.com', 'kehuadmin@163.com', 'qq123456', '25');

-- ----------------------------
-- Table structure for om_member
-- ----------------------------
DROP TABLE IF EXISTS `om_member`;
CREATE TABLE `om_member` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` char(40) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '加密密码',
  `salt` char(10) NOT NULL COMMENT '随机加密码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` char(20) NOT NULL COMMENT '手机号码',
  `avatar` varchar(255) NOT NULL COMMENT '头像地址',
  `money` decimal(10,2) unsigned NOT NULL COMMENT 'RMB',
  `freeze` decimal(10,2) unsigned NOT NULL COMMENT '冻结RMB',
  `spend` decimal(10,2) unsigned NOT NULL COMMENT '消费RMB总额',
  `score` int(10) unsigned NOT NULL COMMENT '虚拟币',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值',
  `adminid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理组id',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `levelid` smallint(5) unsigned NOT NULL COMMENT '会员级别',
  `overdue` int(10) unsigned NOT NULL COMMENT '到期时间',
  `regip` varchar(15) NOT NULL COMMENT '注册ip',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `randcode` mediumint(6) unsigned NOT NULL COMMENT '随机验证码',
  `ismobile` tinyint(1) unsigned DEFAULT NULL COMMENT '手机认证标识',
  PRIMARY KEY (`uid`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`),
  KEY `adminid` (`adminid`),
  KEY `username` (`username`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of om_member
-- ----------------------------
INSERT INTO `om_member` VALUES ('1', 'kefu@omooo.com', 'omooo', 'f5948ebd5b4ea83a0c71b4c5cc70a0cf', 'f73b76ce89', '', '', '', '9999.00', '0.00', '0.00', '10000', '10020', '1', '3', '4', '0', '', '0', '0', '0');
INSERT INTO `om_member` VALUES ('2', 'onmi@163.com', 'onmi', '59a4f79f0247fe1e478f38aef65acf33', '8ebda540cb', '', '', '', '0.00', '0.00', '0.00', '0', '2', '0', '1', '0', '0', '127.0.0.1', '1413514354', '301114', '0');

-- ----------------------------
-- Table structure for om_member_address
-- ----------------------------
DROP TABLE IF EXISTS `om_member_address`;
CREATE TABLE `om_member_address` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `city` mediumint(8) unsigned NOT NULL COMMENT '城市id',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `zipcode` varchar(10) NOT NULL COMMENT '邮编',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `default` tinyint(1) unsigned NOT NULL COMMENT '是否默认',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`default`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员收货地址表';

-- ----------------------------
-- Records of om_member_address
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_data
-- ----------------------------
DROP TABLE IF EXISTS `om_member_data`;
CREATE TABLE `om_member_data` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `complete` tinyint(1) unsigned NOT NULL COMMENT '完善资料标识',
  `lname` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of om_member_data
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_group
-- ----------------------------
DROP TABLE IF EXISTS `om_member_group`;
CREATE TABLE `om_member_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '会员组名称',
  `theme` varchar(20) NOT NULL COMMENT '风格目录',
  `template` varchar(20) NOT NULL COMMENT '模板目录',
  `price` decimal(10,2) NOT NULL COMMENT '售价',
  `unit` tinyint(1) unsigned NOT NULL COMMENT '价格单位:1虚拟卡，2金钱',
  `limit` tinyint(1) unsigned NOT NULL COMMENT '售价限制：1月，2半年，3年',
  `overdue` smallint(5) unsigned NOT NULL COMMENT '过期后变成的组',
  `allowapply` tinyint(1) unsigned NOT NULL COMMENT '是否允许会员申请',
  `allowspace` tinyint(1) unsigned NOT NULL COMMENT '是否允许会员空间',
  `allowfield` text NOT NULL COMMENT '可用字段，序列化数组格式',
  `spacefield` text NOT NULL COMMENT '空间字段，序列化数组格式',
  `spacetemplate` varchar(50) DEFAULT NULL COMMENT '空间默认模板',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员组表';

-- ----------------------------
-- Records of om_member_group
-- ----------------------------
INSERT INTO `om_member_group` VALUES ('1', '待审核会员', 'default', 'default', '0.00', '1', '1', '0', '0', '0', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('2', 'OAuth会员', 'default', 'default', '0.00', '0', '0', '0', '0', '0', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('3', '普通会员', 'default', 'default', '0.00', '1', '1', '3', '0', '1', '', '', 'default', '0');
INSERT INTO `om_member_group` VALUES ('4', '商业会员', 'default', 'default', '10.00', '2', '1', '3', '1', '1', '', '', 'default', '0');

-- ----------------------------
-- Table structure for om_member_invite
-- ----------------------------
DROP TABLE IF EXISTS `om_member_invite`;
CREATE TABLE `om_member_invite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '邀请者',
  `rid` int(10) unsigned NOT NULL COMMENT '被邀请者',
  `rname` varchar(50) NOT NULL COMMENT '被邀请者名称',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='会员邀请注册表';

-- ----------------------------
-- Records of om_member_invite
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_level
-- ----------------------------
DROP TABLE IF EXISTS `om_member_level`;
CREATE TABLE `om_member_level` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '会员级别名称',
  `stars` tinyint(2) NOT NULL COMMENT '星星数量',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值要求',
  `allowupgrade` tinyint(1) NOT NULL COMMENT '允许自动升级',
  PRIMARY KEY (`id`),
  KEY `experience` (`experience`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员级别表';

-- ----------------------------
-- Records of om_member_level
-- ----------------------------
INSERT INTO `om_member_level` VALUES ('1', '3', '初级', '1', '0', '0');
INSERT INTO `om_member_level` VALUES ('2', '3', '中级', '5', '200', '0');
INSERT INTO `om_member_level` VALUES ('3', '3', '高级', '10', '500', '0');
INSERT INTO `om_member_level` VALUES ('4', '3', '元老', '15', '1000', '0');
INSERT INTO `om_member_level` VALUES ('5', '4', '普通', '16', '0', '0');
INSERT INTO `om_member_level` VALUES ('6', '4', '银牌', '23', '500', '0');
INSERT INTO `om_member_level` VALUES ('7', '4', '金牌', '35', '1000', '0');
INSERT INTO `om_member_level` VALUES ('8', '4', '钻石', '55', '2000', '0');

-- ----------------------------
-- Table structure for om_member_login
-- ----------------------------
DROP TABLE IF EXISTS `om_member_login`;
CREATE TABLE `om_member_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned DEFAULT NULL COMMENT '会员uid',
  `oauthid` varchar(30) NOT NULL COMMENT '快捷登录方式',
  `loginip` varchar(50) NOT NULL COMMENT '登录Ip',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `useragent` varchar(255) NOT NULL COMMENT '客户端信息',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `loginip` (`loginip`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='登录日志记录';

-- ----------------------------
-- Records of om_member_login
-- ----------------------------
INSERT INTO `om_member_login` VALUES ('1', '1', '', '127.0.0.1', '1413459004', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v36.0.1985.5');
INSERT INTO `om_member_login` VALUES ('2', '1', '', '127.0.0.1', '1413535126', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v36.0.1985.5');
INSERT INTO `om_member_login` VALUES ('3', '2', '', '127.0.0.1', '1413532675', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');
INSERT INTO `om_member_login` VALUES ('4', '2', '', '127.0.0.1', '1413879642', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');
INSERT INTO `om_member_login` VALUES ('5', '1', '', '127.0.0.1', '1413867522', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v38.0.2125.104');
INSERT INTO `om_member_login` VALUES ('6', '1', '', '127.0.0.1', '1413962625', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v38.0.2125.104');
INSERT INTO `om_member_login` VALUES ('7', '1', '', '127.0.0.1', '1414045326', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');
INSERT INTO `om_member_login` VALUES ('8', '1', '', '127.0.0.1', '1414402171', 'Windows 8.1&nbsp;&nbsp;&nbsp;&nbsp;Chrome v30.0.1599.101');

-- ----------------------------
-- Table structure for om_member_menu
-- ----------------------------
DROP TABLE IF EXISTS `om_member_menu`;
CREATE TABLE `om_member_menu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL COMMENT '上级菜单id',
  `name` text NOT NULL COMMENT '菜单名称',
  `uri` varchar(255) DEFAULT NULL COMMENT 'uri字符串',
  `url` varchar(255) DEFAULT NULL COMMENT 'url',
  `mark` varchar(50) DEFAULT NULL COMMENT '菜单标识',
  `target` tinyint(3) unsigned DEFAULT NULL COMMENT '新窗口',
  `displayorder` tinyint(3) unsigned DEFAULT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `list` (`pid`),
  KEY `displayorder` (`displayorder`),
  KEY `mark` (`mark`),
  KEY `uri` (`uri`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COMMENT='会员菜单表';

-- ----------------------------
-- Records of om_member_menu
-- ----------------------------
INSERT INTO `om_member_menu` VALUES ('1', '0', '账号', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('2', '0', '财务', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('3', '0', '空间', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('4', '0', '应用', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('5', '1', '基本管理', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('6', '5', '基本资料', 'account/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('7', '5', '收货地址', 'address/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('8', '5', '上传头像', 'account/avatar', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('9', '5', '附件管理', 'account/attachment', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('10', '1', '会员相关', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('11', '10', '修改密码', 'account/password', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('12', '10', '快捷登录', 'account/oauth', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('13', '10', '登录记录', 'account/login', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('14', '10', '会员升级', 'account/upgrade', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('15', '10', '会员权限', 'account/permission', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('16', '2', '充值', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('17', '2', '记录', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('18', '16', '网银充值', 'pay/add', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('19', '16', '卡密充值', 'pay/card', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('20', '16', '兑换服务', 'pay/convert', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('21', '17', '收入记录', 'pay/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('22', '17', '消费记录', 'pay/spend', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('23', '17', '经验值记录', 'pay/experience', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('24', '17', '虚拟币记录', 'pay/score', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('25', '3', '基本设置', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('26', '3', '内容管理', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('27', '25', '空间设置', 'space/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('28', '25', '模板设置', 'space/template', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('29', '26', '栏目分类', 'category/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('30', '4', '应用管理', '', '', '', '0', '99');
INSERT INTO `om_member_menu` VALUES ('31', '26', '文章管理', 'space1/index', '', 'space-1', '0', '0');
INSERT INTO `om_member_menu` VALUES ('32', '26', '外链管理', 'space2/index', '', 'space-2', '0', '0');
INSERT INTO `om_member_menu` VALUES ('33', '26', '日志管理', 'space3/index', '', 'space-3', '0', '0');
INSERT INTO `om_member_menu` VALUES ('34', '26', '相册管理', 'space4/index', '', 'space-4', '0', '0');
INSERT INTO `om_member_menu` VALUES ('35', '26', '幻灯管理', 'space5/index', '', 'space-5', '0', '0');
INSERT INTO `om_member_menu` VALUES ('36', '0', '互动', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('37', '36', '互动', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('38', '37', '我的动态', 'sns/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('39', '37', '我关注的', 'sns/follow', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('40', '37', '我的粉丝', 'sns/fans', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('41', '37', '互动设置', 'sns/config', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('42', '36', '通知', '', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('43', '42', '短消息', 'pm/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('44', '42', '系统提醒', 'notice/index', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('45', '42', '会员互动', 'notice/member', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('46', '42', '模块提醒', 'notice/module', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('47', '42', '应用提醒', 'notice/app', '', '', '0', '0');
INSERT INTO `om_member_menu` VALUES ('89', '86', '被退回的视频', 'midea/back/index', '', 'module-midea', '0', '0');
INSERT INTO `om_member_menu` VALUES ('88', '86', '待审核的视频', 'midea/verify/index', '', 'module-midea', '0', '0');
INSERT INTO `om_member_menu` VALUES ('87', '86', '已通过的视频', 'midea/home/index', '', 'module-midea', '0', '0');
INSERT INTO `om_member_menu` VALUES ('86', '85', '视频管理', '', '', 'module-midea', '0', '0');
INSERT INTO `om_member_menu` VALUES ('85', '0', '视频中心', '', '', 'module-midea', '0', '0');
INSERT INTO `om_member_menu` VALUES ('84', '78', '我购买的文档', 'news/home/buy', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('95', '94', '已通过的文档', 'chip/home/index', '', 'module-chip', '0', '0');
INSERT INTO `om_member_menu` VALUES ('94', '93', '文档管理', '', '', 'module-chip', '0', '0');
INSERT INTO `om_member_menu` VALUES ('93', '0', '芯片选型', '', '', 'module-chip', '0', '0');
INSERT INTO `om_member_menu` VALUES ('92', '86', '我购买的视频', 'midea/home/buy', '', 'module-midea', '0', '0');
INSERT INTO `om_member_menu` VALUES ('91', '86', '我收藏的视频', 'midea/home/favorite', '', 'module-midea', '0', '0');
INSERT INTO `om_member_menu` VALUES ('90', '86', '我推荐的视频', 'midea/home/flag', '', 'module-midea', '0', '0');
INSERT INTO `om_member_menu` VALUES ('97', '94', '被退回的文档', 'chip/back/index', '', 'module-chip', '0', '0');
INSERT INTO `om_member_menu` VALUES ('96', '94', '待审核的文档', 'chip/verify/index', '', 'module-chip', '0', '0');
INSERT INTO `om_member_menu` VALUES ('83', '78', '我收藏的文档', 'news/home/favorite', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('82', '78', '我推荐的文档', 'news/home/flag', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('81', '78', '被退回的文档', 'news/back/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('80', '78', '待审核的文档', 'news/verify/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('79', '78', '已通过的文档', 'news/home/index', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('78', '77', '文档管理', '', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('77', '0', '新闻资讯', '', '', 'module-news', '0', '0');
INSERT INTO `om_member_menu` VALUES ('98', '94', '我推荐的文档', 'chip/home/flag', '', 'module-chip', '0', '0');
INSERT INTO `om_member_menu` VALUES ('99', '94', '我收藏的文档', 'chip/home/favorite', '', 'module-chip', '0', '0');
INSERT INTO `om_member_menu` VALUES ('100', '94', '我购买的文档', 'chip/home/buy', '', 'module-chip', '0', '0');
INSERT INTO `om_member_menu` VALUES ('130', '126', '我推荐的文档', 'product/home/flag', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('132', '126', '我购买的文档', 'product/home/buy', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('131', '126', '我收藏的文档', 'product/home/favorite', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('129', '126', '被退回的文档', 'product/back/index', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('128', '126', '待审核的文档', 'product/verify/index', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('127', '126', '已通过的文档', 'product/home/index', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('126', '125', '文档管理', '', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('125', '0', '产品中心', '', '', 'module-product', '0', '0');
INSERT INTO `om_member_menu` VALUES ('133', '0', '商城', '', '', 'module-shop', '0', '0');
INSERT INTO `om_member_menu` VALUES ('134', '133', '我的交易', '', '', 'module-shop', '0', '0');
INSERT INTO `om_member_menu` VALUES ('135', '134', '我的订单', 'shop/order/index', '', 'module-shop', '0', '0');
INSERT INTO `om_member_menu` VALUES ('136', '134', '收货地址', 'shop/address/index', '', 'module-shop', '0', '0');
INSERT INTO `om_member_menu` VALUES ('137', '134', '我收藏的商品', 'shop/home/favorite', '', 'module-shop', '0', '0');
INSERT INTO `om_member_menu` VALUES ('138', '0', '开发工具', '', '', 'module-development', '0', '0');
INSERT INTO `om_member_menu` VALUES ('139', '138', '文档管理', '', '', 'module-development', '0', '0');
INSERT INTO `om_member_menu` VALUES ('140', '139', '已通过的文档', 'development/home/index', '', 'module-development', '0', '0');
INSERT INTO `om_member_menu` VALUES ('141', '139', '待审核的文档', 'development/verify/index', '', 'module-development', '0', '0');
INSERT INTO `om_member_menu` VALUES ('142', '139', '被退回的文档', 'development/back/index', '', 'module-development', '0', '0');
INSERT INTO `om_member_menu` VALUES ('143', '139', '我推荐的文档', 'development/home/flag', '', 'module-development', '0', '0');
INSERT INTO `om_member_menu` VALUES ('144', '139', '我收藏的文档', 'development/home/favorite', '', 'module-development', '0', '0');
INSERT INTO `om_member_menu` VALUES ('145', '139', '我购买的文档', 'development/home/buy', '', 'module-development', '0', '0');
INSERT INTO `om_member_menu` VALUES ('146', '0', '解决方案', '', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('147', '146', '文档管理', '', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('148', '147', '已通过的文档', 'solution/home/index', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('149', '147', '待审核的文档', 'solution/verify/index', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('150', '147', '被退回的文档', 'solution/back/index', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('151', '147', '我推荐的文档', 'solution/home/flag', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('152', '147', '我收藏的文档', 'solution/home/favorite', '', 'module-solution', '0', '0');
INSERT INTO `om_member_menu` VALUES ('153', '147', '我购买的文档', 'solution/home/buy', '', 'module-solution', '0', '0');

-- ----------------------------
-- Table structure for om_member_new_notice
-- ----------------------------
DROP TABLE IF EXISTS `om_member_new_notice`;
CREATE TABLE `om_member_new_notice` (
  `uid` smallint(8) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新通知提醒表';

-- ----------------------------
-- Records of om_member_new_notice
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_0`;
CREATE TABLE `om_member_notice_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_1`;
CREATE TABLE `om_member_notice_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_2`;
CREATE TABLE `om_member_notice_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_3`;
CREATE TABLE `om_member_notice_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_4`;
CREATE TABLE `om_member_notice_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_5`;
CREATE TABLE `om_member_notice_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_6`;
CREATE TABLE `om_member_notice_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_7`;
CREATE TABLE `om_member_notice_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_8`;
CREATE TABLE `om_member_notice_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_notice_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_notice_9`;
CREATE TABLE `om_member_notice_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '类型',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '通知者uid',
  `isnew` tinyint(1) unsigned NOT NULL COMMENT '新提醒',
  `content` text NOT NULL COMMENT '通知内容',
  `inputtime` int(10) unsigned NOT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`),
  KEY `isnew` (`isnew`),
  KEY `type` (`type`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员通知提醒表';

-- ----------------------------
-- Records of om_member_notice_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_oauth
-- ----------------------------
DROP TABLE IF EXISTS `om_member_oauth`;
CREATE TABLE `om_member_oauth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `oid` varchar(255) NOT NULL COMMENT 'OAuth返回id',
  `oauth` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `expire_at` int(10) unsigned NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员OAuth2授权表';

-- ----------------------------
-- Records of om_member_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paycard
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paycard`;
CREATE TABLE `om_member_paycard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card` char(20) NOT NULL COMMENT '卡号',
  `password` mediumint(6) unsigned NOT NULL COMMENT '密码',
  `money` decimal(10,2) NOT NULL COMMENT '金额',
  `inputtime` int(10) unsigned NOT NULL COMMENT '生成时间',
  `endtime` int(10) unsigned NOT NULL COMMENT '结束时间',
  `usetime` int(10) unsigned NOT NULL COMMENT '使用时间',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '使用人id',
  `username` varchar(50) NOT NULL COMMENT '使用人名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `card` (`card`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付卡表';

-- ----------------------------
-- Records of om_member_paycard
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_0`;
CREATE TABLE `om_member_paylog_0` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_1`;
CREATE TABLE `om_member_paylog_1` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_2`;
CREATE TABLE `om_member_paylog_2` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_3`;
CREATE TABLE `om_member_paylog_3` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_4`;
CREATE TABLE `om_member_paylog_4` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_5`;
CREATE TABLE `om_member_paylog_5` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_6`;
CREATE TABLE `om_member_paylog_6` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_7`;
CREATE TABLE `om_member_paylog_7` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_8`;
CREATE TABLE `om_member_paylog_8` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_paylog_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_paylog_9`;
CREATE TABLE `om_member_paylog_9` (
  `id` bigint(15) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL COMMENT '价格',
  `type` varchar(20) NOT NULL COMMENT '类型',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `order` int(10) unsigned NOT NULL COMMENT '订单号',
  `module` varchar(30) NOT NULL COMMENT '应用或模块目录',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `order` (`order`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of om_member_paylog_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_0
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_0`;
CREATE TABLE `om_member_scorelog_0` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_1
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_1`;
CREATE TABLE `om_member_scorelog_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_1
-- ----------------------------
INSERT INTO `om_member_scorelog_1` VALUES ('1', '1', '0', '5', 'login', 'lang,m-056', '1413452914');
INSERT INTO `om_member_scorelog_1` VALUES ('2', '1', '0', '5', 'login', 'lang,m-056', '1413507722');
INSERT INTO `om_member_scorelog_1` VALUES ('3', '1', '0', '5', 'login', 'lang,m-056', '1413945075');
INSERT INTO `om_member_scorelog_1` VALUES ('4', '1', '0', '5', 'login', 'lang,m-056', '1414406177');

-- ----------------------------
-- Table structure for om_member_scorelog_2
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_2`;
CREATE TABLE `om_member_scorelog_2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_2
-- ----------------------------
INSERT INTO `om_member_scorelog_2` VALUES ('1', '2', '0', '1', 'login', 'lang,m-056', '1413514378');
INSERT INTO `om_member_scorelog_2` VALUES ('2', '2', '0', '1', 'login', 'lang,m-056', '1413855147');

-- ----------------------------
-- Table structure for om_member_scorelog_3
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_3`;
CREATE TABLE `om_member_scorelog_3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_4
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_4`;
CREATE TABLE `om_member_scorelog_4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_5
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_5`;
CREATE TABLE `om_member_scorelog_5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_6
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_6`;
CREATE TABLE `om_member_scorelog_6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_7
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_7`;
CREATE TABLE `om_member_scorelog_7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_8
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_8`;
CREATE TABLE `om_member_scorelog_8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_scorelog_9
-- ----------------------------
DROP TABLE IF EXISTS `om_member_scorelog_9`;
CREATE TABLE `om_member_scorelog_9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL COMMENT '积分0,虚拟币1',
  `value` int(10) NOT NULL COMMENT '分数变化值',
  `mark` varchar(50) NOT NULL COMMENT '标记',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `mark` (`mark`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='得分日志';

-- ----------------------------
-- Records of om_member_scorelog_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_member_session
-- ----------------------------
DROP TABLE IF EXISTS `om_member_session`;
CREATE TABLE `om_member_session` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员Session会话表';

-- ----------------------------
-- Records of om_member_session
-- ----------------------------
INSERT INTO `om_member_session` VALUES ('ca40c8254d3489a9f3b17d13f327edfb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '1414478833', 'a:2:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";}', '1');
INSERT INTO `om_member_session` VALUES ('6e78d38f3161c5ee31496d64da4a5b0d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '1414402171', 'a:4:{s:7:\"user_id\";s:1:\"0\";s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";s:7:\"captcha\";s:4:\"bs5s\";}', '1');
INSERT INTO `om_member_session` VALUES ('bfe42fa06c70b5b63f7510301173265c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '1414394906', 'a:3:{s:3:\"uid\";s:1:\"1\";s:5:\"admin\";s:1:\"1\";s:7:\"captcha\";s:4:\"ugwr\";}', '1');

-- ----------------------------
-- Table structure for om_member_setting
-- ----------------------------
DROP TABLE IF EXISTS `om_member_setting`;
CREATE TABLE `om_member_setting` (
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员属性参数表';

-- ----------------------------
-- Records of om_member_setting
-- ----------------------------
INSERT INTO `om_member_setting` VALUES ('ucentercfg', '');
INSERT INTO `om_member_setting` VALUES ('domain', 'a:1:{i:1;s:0:\\\"\\\";}');
INSERT INTO `om_member_setting` VALUES ('pagesize', '10');
INSERT INTO `om_member_setting` VALUES ('regnotallow', 'omooo,OmWeb');
INSERT INTO `om_member_setting` VALUES ('ucenter', '0');
INSERT INTO `om_member_setting` VALUES ('regnamerule', '/^[0-9a-z]+$/i');
INSERT INTO `om_member_setting` VALUES ('register', '1');
INSERT INTO `om_member_setting` VALUES ('regcode', '1');
INSERT INTO `om_member_setting` VALUES ('regverify', '1');
INSERT INTO `om_member_setting` VALUES ('regiptime', '2');
INSERT INTO `om_member_setting` VALUES ('logincode', '1');
INSERT INTO `om_member_setting` VALUES ('permission', 'a:10:{i:1;a:13:{s:16:\\\"login_experience\\\";s:1:\\\"1\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"1\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:10:\\\"attachsize\\\";s:1:\\\"0\\\";}i:2;a:14:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"1\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:1:\\\"5\\\";}s:3:\\\"3_1\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"10\\\";}s:3:\\\"3_2\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"10\\\";}s:3:\\\"3_3\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:2:\\\"10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"2\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"20\\\";}s:3:\\\"3_4\\\";a:15:{s:16:\\\"login_experience\\\";s:1:\\\"5\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"3\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"30\\\";}s:3:\\\"4_5\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:2:\\\"10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"50\\\";}s:3:\\\"4_6\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:2:\\\"70\\\";}s:3:\\\"4_7\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:3:\\\"100\\\";}s:3:\\\"4_8\\\";a:15:{s:16:\\\"login_experience\\\";s:2:\\\"10\\\";s:11:\\\"login_score\\\";s:1:\\\"0\\\";s:17:\\\"avatar_experience\\\";s:2:\\\"10\\\";s:12:\\\"avatar_score\\\";s:1:\\\"0\\\";s:19:\\\"complete_experience\\\";s:2:\\\"10\\\";s:14:\\\"complete_score\\\";s:1:\\\"0\\\";s:15:\\\"bang_experience\\\";s:2:\\\"10\\\";s:10:\\\"bang_score\\\";s:1:\\\"0\\\";s:14:\\\"jie_experience\\\";s:3:\\\"-10\\\";s:9:\\\"jie_score\\\";s:1:\\\"0\\\";s:17:\\\"update_experience\\\";s:1:\\\"5\\\";s:12:\\\"update_score\\\";s:1:\\\"0\\\";s:9:\\\"is_upload\\\";s:1:\\\"1\\\";s:11:\\\"is_download\\\";s:1:\\\"1\\\";s:10:\\\"attachsize\\\";s:1:\\\"0\\\";}}');
INSERT INTO `om_member_setting` VALUES ('complete', '0');
INSERT INTO `om_member_setting` VALUES ('avatar', '0');
INSERT INTO `om_member_setting` VALUES ('pay', 'a:2:{s:6:\\\"tenpay\\\";a:3:{s:4:\\\"name\\\";s:9:\\\"财付通\\\";s:2:\\\"id\\\";s:0:\\\"\\\";s:3:\\\"key\\\";s:0:\\\"\\\";}s:6:\\\"alipay\\\";a:4:{s:4:\\\"name\\\";s:9:\\\"支付宝\\\";s:8:\\\"username\\\";s:0:\\\"\\\";s:2:\\\"id\\\";s:0:\\\"\\\";s:3:\\\"key\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_member_setting` VALUES ('space', 'a:9:{s:6:\\\"domain\\\";s:0:\\\"\\\";s:4:\\\"edit\\\";s:1:\\\"1\\\";s:6:\\\"verify\\\";s:1:\\\"0\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";s:7:\\\"seojoin\\\";s:1:\\\"_\\\";s:5:\\\"title\\\";s:41:\\\"会员空间_OmWeb自助建站平台！\\\";s:8:\\\"keywords\\\";s:0:\\\"\\\";s:11:\\\"description\\\";s:0:\\\"\\\";s:4:\\\"flag\\\";a:9:{i:1;a:1:{s:4:\\\"name\\\";s:12:\\\"达人空间\\\";}i:2;a:1:{s:4:\\\"name\\\";s:12:\\\"推荐空间\\\";}i:3;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:4;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:5;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:6;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:7;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:8;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}i:9;a:1:{s:4:\\\"name\\\";s:0:\\\"\\\";}}}');
INSERT INTO `om_member_setting` VALUES ('ismobile', '0');
INSERT INTO `om_member_setting` VALUES ('mobile', '0');
INSERT INTO `om_member_setting` VALUES ('regoauth', '0');
INSERT INTO `om_member_setting` VALUES ('field', '<tr id=\"dr_row_{name}\"><th>{text} </th><td>{value}</td></tr>');
INSERT INTO `om_member_setting` VALUES ('mbfield', '<tr id=\"dr_row_{name}\"><th>{text} </th><td>{value}</td></tr>');
INSERT INTO `om_member_setting` VALUES ('sns_post_time', '');

-- ----------------------------
-- Table structure for om_module
-- ----------------------------
DROP TABLE IF EXISTS `om_module`;
CREATE TABLE `om_module` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` text COMMENT '站点划分',
  `dirname` varchar(50) NOT NULL COMMENT '目录名称',
  `extend` tinyint(1) unsigned DEFAULT NULL COMMENT '是否是扩展模块',
  `sitemap` tinyint(1) unsigned DEFAULT NULL COMMENT '是否生成地图',
  `setting` text COMMENT '配置信息',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of om_module
-- ----------------------------
INSERT INTO `om_module` VALUES ('6', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";i:1;s:4:\\\"html\\\";i:0;s:5:\\\"theme\\\";s:5:\\\"jiaye\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";s:8:\\\"template\\\";s:8:\\\"jiayetpl\\\";}}', 'midea', '0', '1', '', '0', '0');
INSERT INTO `om_module` VALUES ('7', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";i:1;s:4:\\\"html\\\";i:0;s:5:\\\"theme\\\";s:5:\\\"jiaye\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";s:8:\\\"template\\\";s:8:\\\"jiayetpl\\\";}}', 'chip', '0', '1', '', '0', '0');
INSERT INTO `om_module` VALUES ('11', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:8:\\\"jiayetpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'product', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:12:\\\"首页更多\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');
INSERT INTO `om_module` VALUES ('12', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:7:\\\"default\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'shop', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:14:\\\"1F潮流服装\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:14:\\\"2F鞋包配饰\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:14:\\\"3F美容美妆\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:14:\\\"4F数码家电\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');
INSERT INTO `om_module` VALUES ('5', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";i:1;s:4:\\\"html\\\";i:0;s:5:\\\"theme\\\";s:5:\\\"jiaye\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";s:8:\\\"template\\\";s:8:\\\"jiayetpl\\\";}}', 'news', '0', '1', '', '0', '0');
INSERT INTO `om_module` VALUES ('13', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:8:\\\"jiayetpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'development', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:12:\\\"首页更多\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');
INSERT INTO `om_module` VALUES ('14', 'a:1:{i:1;a:5:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:5:\\\"theme\\\";s:7:\\\"default\\\";s:8:\\\"template\\\";s:8:\\\"jiayetpl\\\";s:4:\\\"html\\\";s:1:\\\"0\\\";s:6:\\\"domain\\\";s:0:\\\"\\\";}}', 'solution', '0', '1', 'a:6:{s:4:\\\"flag\\\";a:9:{i:1;a:9:{s:4:\\\"name\\\";s:12:\\\"首页更多\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:2;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:3;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:4;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:5;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:6;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:7;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:8;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}i:9;a:9:{s:4:\\\"name\\\";s:0:\\\"\\\";s:3:\\\"3_1\\\";s:1:\\\"0\\\";s:3:\\\"3_2\\\";s:1:\\\"0\\\";s:3:\\\"3_3\\\";s:1:\\\"0\\\";s:3:\\\"3_4\\\";s:1:\\\"0\\\";s:3:\\\"4_5\\\";s:1:\\\"0\\\";s:3:\\\"4_6\\\";s:1:\\\"0\\\";s:3:\\\"4_7\\\";s:1:\\\"0\\\";s:3:\\\"4_8\\\";s:1:\\\"0\\\";}}s:3:\\\"seo\\\";a:3:{s:12:\\\"module_title\\\";s:0:\\\"\\\";s:15:\\\"module_keywords\\\";s:0:\\\"\\\";s:18:\\\"module_description\\\";s:0:\\\"\\\";}s:3:\\\"tag\\\";a:3:{s:8:\\\"pagesize\\\";s:0:\\\"\\\";s:3:\\\"url\\\";s:0:\\\"\\\";s:8:\\\"url_page\\\";s:0:\\\"\\\";}s:6:\\\"search\\\";a:5:{s:5:\\\"close\\\";s:1:\\\"0\\\";s:5:\\\"cache\\\";s:5:\\\"10000\\\";s:5:\\\"total\\\";s:3:\\\"500\\\";s:6:\\\"length\\\";s:1:\\\"4\\\";s:7:\\\"rewrite\\\";s:1:\\\"0\\\";}s:10:\\\"show_cache\\\";s:5:\\\"10000\\\";s:10:\\\"postselect\\\";s:1:\\\"0\\\";}', '0', '0');

-- ----------------------------
-- Table structure for om_newpm
-- ----------------------------
DROP TABLE IF EXISTS `om_newpm`;
CREATE TABLE `om_newpm` (
  `uid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新消息数量表';

-- ----------------------------
-- Records of om_newpm
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_indexes
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_indexes`;
CREATE TABLE `om_pm_indexes` (
  `pmid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息索引表';

-- ----------------------------
-- Records of om_pm_indexes
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_lists
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_lists`;
CREATE TABLE `om_pm_lists` (
  `plid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(50) NOT NULL,
  `pmtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(80) NOT NULL,
  `members` smallint(5) unsigned NOT NULL DEFAULT '0',
  `min_max` varchar(17) NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `lastmessage` text NOT NULL,
  PRIMARY KEY (`plid`),
  KEY `pmtype` (`pmtype`),
  KEY `min_max` (`min_max`),
  KEY `authorid` (`authorid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息关系表';

-- ----------------------------
-- Records of om_pm_lists
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_members
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_members`;
CREATE TABLE `om_pm_members` (
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `isnew` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pmnum` int(10) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`plid`,`uid`),
  KEY `isnew` (`isnew`),
  KEY `lastdateline` (`uid`,`lastdateline`),
  KEY `lastupdate` (`uid`,`lastupdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息与会员关系表';

-- ----------------------------
-- Records of om_pm_members
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_0
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_0`;
CREATE TABLE `om_pm_messages_0` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_0
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_1
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_1`;
CREATE TABLE `om_pm_messages_1` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_1
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_2
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_2`;
CREATE TABLE `om_pm_messages_2` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_2
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_3
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_3`;
CREATE TABLE `om_pm_messages_3` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_3
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_4
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_4`;
CREATE TABLE `om_pm_messages_4` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_4
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_5
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_5`;
CREATE TABLE `om_pm_messages_5` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_5
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_6
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_6`;
CREATE TABLE `om_pm_messages_6` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_6
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_7
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_7`;
CREATE TABLE `om_pm_messages_7` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_7
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_8
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_8`;
CREATE TABLE `om_pm_messages_8` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_8
-- ----------------------------

-- ----------------------------
-- Table structure for om_pm_messages_9
-- ----------------------------
DROP TABLE IF EXISTS `om_pm_messages_9`;
CREATE TABLE `om_pm_messages_9` (
  `pmid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `plid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `delstatus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmid`),
  KEY `plid` (`plid`,`delstatus`,`dateline`),
  KEY `dateline` (`plid`,`dateline`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='短消息记录表';

-- ----------------------------
-- Records of om_pm_messages_9
-- ----------------------------

-- ----------------------------
-- Table structure for om_site
-- ----------------------------
DROP TABLE IF EXISTS `om_site`;
CREATE TABLE `om_site` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '站点名称',
  `domain` varchar(50) NOT NULL COMMENT '站点域名',
  `setting` text NOT NULL COMMENT '站点配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of om_site
-- ----------------------------
INSERT INTO `om_site` VALUES ('1', '佳晔', 'zan.jiaye.in', 'a:33:{s:9:\\\"SITE_NAME\\\";s:6:\\\"佳晔\\\";s:16:\\\"SITE_TIME_FORMAT\\\";s:9:\\\"Y-m-d H:i\\\";s:13:\\\"SITE_LANGUAGE\\\";s:5:\\\"zh-cn\\\";s:10:\\\"SITE_THEME\\\";s:5:\\\"jiaye\\\";s:13:\\\"SITE_TEMPLATE\\\";s:8:\\\"jiayetpl\\\";s:13:\\\"SITE_TIMEZONE\\\";s:1:\\\"8\\\";s:11:\\\"SITE_MOBILE\\\";s:0:\\\"\\\";s:16:\\\"SITE_MOBILE_OPEN\\\";s:1:\\\"0\\\";s:12:\\\"SITE_SEOJOIN\\\";s:1:\\\"_\\\";s:10:\\\"SITE_TITLE\\\";s:6:\\\"佳晔\\\";s:13:\\\"SITE_KEYWORDS\\\";s:6:\\\"佳晔\\\";s:16:\\\"SITE_DESCRIPTION\\\";s:6:\\\"佳晔\\\";s:18:\\\"SITE_ATTACH_REMOTE\\\";s:1:\\\"0\\\";s:6:\\\"remote\\\";a:3:{i:1;a:9:{s:16:\\\"SITE_ATTACH_HOST\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PORT\\\";s:0:\\\"\\\";s:20:\\\"SITE_ATTACH_USERNAME\\\";s:0:\\\"\\\";s:20:\\\"SITE_ATTACH_PASSWORD\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PATH\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_PASV\\\";s:1:\\\"0\\\";s:16:\\\"SITE_ATTACH_MODE\\\";s:4:\\\"auto\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}i:2;a:6:{s:2:\\\"ak\\\";s:0:\\\"\\\";s:2:\\\"sk\\\";s:0:\\\"\\\";s:6:\\\"bucket\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:4:\\\"host\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}i:3;a:6:{s:2:\\\"id\\\";s:0:\\\"\\\";s:6:\\\"secret\\\";s:0:\\\"\\\";s:6:\\\"bucket\\\";s:0:\\\"\\\";s:16:\\\"SITE_ATTACH_EXTS\\\";s:0:\\\"\\\";s:4:\\\"host\\\";s:0:\\\"\\\";s:15:\\\"SITE_ATTACH_URL\\\";s:0:\\\"\\\";}}s:16:\\\"SITE_IMAGE_RATIO\\\";s:1:\\\"0\\\";s:20:\\\"SITE_IMAGE_WATERMARK\\\";s:1:\\\"0\\\";s:17:\\\"SITE_IMAGE_REMOTE\\\";s:1:\\\"0\\\";s:18:\\\"SITE_IMAGE_CONTENT\\\";s:1:\\\"0\\\";s:19:\\\"SITE_IMAGE_VRTALIGN\\\";s:3:\\\"top\\\";s:19:\\\"SITE_IMAGE_HORALIGN\\\";s:4:\\\"left\\\";s:20:\\\"SITE_IMAGE_VRTOFFSET\\\";s:0:\\\"\\\";s:20:\\\"SITE_IMAGE_HOROFFSET\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_TYPE\\\";s:1:\\\"0\\\";s:18:\\\"SITE_IMAGE_OPACITY\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_FONT\\\";s:11:\\\"default.ttf\\\";s:16:\\\"SITE_IMAGE_COLOR\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_SIZE\\\";s:0:\\\"\\\";s:15:\\\"SITE_IMAGE_TEXT\\\";s:0:\\\"\\\";s:15:\\\"SITE_HOME_INDEX\\\";s:4:\\\"1099\\\";s:17:\\\"SITE_MODULE_INDEX\\\";s:3:\\\"999\\\";s:16:\\\"SITE_QUERY_CACHE\\\";s:1:\\\"0\\\";s:11:\\\"SITE_DOMAIN\\\";s:12:\\\"zan.jiaye.in\\\";s:14:\\\"SITE_NAVIGATOR\\\";s:66:\\\"主导航,首页幻灯,友情链接,内页图片广告banner,,,,,,\\\";}');

-- ----------------------------
-- Table structure for om_sns_comment
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_comment`;
CREATE TABLE `om_sns_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned NOT NULL COMMENT '动态表id',
  `uid` int(10) unsigned NOT NULL COMMENT '评论人id',
  `username` varchar(50) NOT NULL COMMENT '评论人',
  `comment` text NOT NULL COMMENT '评论内容',
  `inputip` varchar(50) NOT NULL COMMENT '录入ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入评论时间',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`,`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='动态评论';

-- ----------------------------
-- Records of om_sns_comment
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_config
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_config`;
CREATE TABLE `om_sns_config` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员uid',
  `show_all` tinyint(1) unsigned DEFAULT NULL COMMENT '是否全部人可查看我的动态',
  `show_follow` tinyint(1) unsigned DEFAULT NULL COMMENT '是否允许关注我的人访问',
  `show_fans` tinyint(1) unsigned DEFAULT NULL COMMENT '是否允许我的粉丝访问',
  UNIQUE KEY `uid` (`uid`),
  KEY `show_all` (`show_all`),
  KEY `show_fans` (`show_fans`),
  KEY `show_follow` (`show_follow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员互动配置';

-- ----------------------------
-- Records of om_sns_config
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed`;
CREATE TABLE `om_sns_feed` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '动态ID',
  `uid` int(10) unsigned NOT NULL COMMENT '产生动态的用户UID',
  `username` varchar(100) NOT NULL COMMENT '会员名称',
  `comment` int(10) unsigned DEFAULT '0' COMMENT '评论数',
  `repost` int(10) unsigned DEFAULT '0' COMMENT '分享数',
  `digg` int(10) unsigned DEFAULT '0' COMMENT '赞数量',
  `content` text NOT NULL COMMENT '内容',
  `repost_id` int(10) unsigned NOT NULL COMMENT '转发id',
  `source` varchar(100) NOT NULL COMMENT '来源名称',
  `images` varchar(255) NOT NULL COMMENT '图片',
  `inputip` varchar(50) NOT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ctime` (`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员动态表';

-- ----------------------------
-- Records of om_sns_feed
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed_digg
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed_digg`;
CREATE TABLE `om_sns_feed_digg` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `fid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='点赞表';

-- ----------------------------
-- Records of om_sns_feed_digg
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_feed_favorite
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_feed_favorite`;
CREATE TABLE `om_sns_feed_favorite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL,
  `fid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of om_sns_feed_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_follow
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_follow`;
CREATE TABLE `om_sns_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` int(11) NOT NULL COMMENT '被关注者ID',
  `username` varchar(50) NOT NULL COMMENT '被关注者名称',
  `gid` int(11) unsigned NOT NULL COMMENT '分组表',
  `fid` int(11) NOT NULL COMMENT '关注者ID',
  `isdouble` tinyint(1) unsigned NOT NULL COMMENT '是否互粉',
  `remark` varchar(50) NOT NULL COMMENT '备注',
  `ctime` int(11) NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid-fid` (`uid`,`fid`),
  UNIQUE KEY `fid-uid` (`fid`,`uid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注表';

-- ----------------------------
-- Records of om_sns_follow
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_follow_group
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_follow_group`;
CREATE TABLE `om_sns_follow_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关注组ID',
  `uid` int(11) NOT NULL COMMENT '用户UID',
  `title` varchar(255) NOT NULL COMMENT '组名称',
  `ctime` int(11) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关注组表';

-- ----------------------------
-- Records of om_sns_follow_group
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_topic
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_topic`;
CREATE TABLE `om_sns_topic` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '话题名称',
  `uid` int(10) NOT NULL COMMENT '发起人',
  `username` varchar(100) NOT NULL COMMENT '发起人名称',
  `count` int(10) unsigned NOT NULL COMMENT '关联动态数量',
  `inputtime` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `uid` (`uid`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='话题表';

-- ----------------------------
-- Records of om_sns_topic
-- ----------------------------

-- ----------------------------
-- Table structure for om_sns_topic_index
-- ----------------------------
DROP TABLE IF EXISTS `om_sns_topic_index`;
CREATE TABLE `om_sns_topic_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(10) unsigned NOT NULL COMMENT '话题id',
  `fid` int(10) unsigned NOT NULL COMMENT '动态id',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`,`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='话题关联表';

-- ----------------------------
-- Records of om_sns_topic_index
-- ----------------------------

-- ----------------------------
-- Table structure for om_space
-- ----------------------------
DROP TABLE IF EXISTS `om_space`;
CREATE TABLE `om_space` (
  `uid` mediumint(8) unsigned NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '空间名称',
  `logo` varchar(255) DEFAULT NULL COMMENT '空间logo',
  `style` varchar(30) DEFAULT NULL COMMENT '空间风格',
  `title` varchar(255) DEFAULT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'SEO关键字',
  `description` text COMMENT 'SEO描述',
  `introduction` text COMMENT '空间简介',
  `code` text COMMENT '第三方代码',
  `footer` text COMMENT '底部信息',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `displayorder` tinyint(3) DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`uid`),
  KEY `hits` (`hits`),
  KEY `status` (`status`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间表';

-- ----------------------------
-- Records of om_space
-- ----------------------------
INSERT INTO `om_space` VALUES ('1', 'omWeb团队', 'http://www.omooo.com/member/statics/default/images/logo_new.png', 'default', 'omWeb团队-专业技术团队', 'OmWeb,网站建设,内容管理系统', 'OmWeb v2（简称v2）是一款开源的跨平台网站内容管理系统，以“实用+好用”为基本产品理念，提供从内容发布、组织、传播、互动和数据挖掘的网站一体化解决方案', '<p>OmWeb v2（简称v2）是一款开源的跨平台网站内容管理系统，以“实用+好用”为基本产品理念，提供从内容发布、组织、传播、互动和数据挖掘的网站一体化解决方案。系统基于CodeIgniter框架，具有良好扩展性和管理性，可以帮助您在各种操作系统与运行环境中搭建各种网站模型而不需要对复杂繁琐的编程语言有太多的专业知识，系统采用UTF-8编码，采取(语言-代码-程序)两两分离的技术模式，全面使用了模板包与语言包结构，为用户的修改提供方便，网站内容的每一个角落都可以在后台予以管理，是一套非常适合用做系统建站或者进行二次开发的程序核心。</p>', '<script type=\"text/javascript\">var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cdiv id=\'cnzz_stat_icon_5629330\'%3E%3C/div%3E%3Cscript src=\'\" + cnzz_protocol + \"s9.cnzz.com/stat.php%3Fid%3D5629330%26show%3Dpic2\' type=\'text/javascript\'%3E%3C/script%3E\"));</script>', '<p>扣扣咨询：135977378 电子邮箱：OmWeb@qq.com</p>某某某公司版权所有，ICP备案0000001<p><br /></p>', '888888', '1', '1377949585', '0');

-- ----------------------------
-- Table structure for om_space_category
-- ----------------------------
DROP TABLE IF EXISTS `om_space_category`;
CREATE TABLE `om_space_category` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '0外链，1模型，2单页',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `body` text COMMENT '单页内容',
  `showid` tinyint(1) unsigned NOT NULL COMMENT '0不显示,1顶部,2底部,3都显示',
  `modelid` smallint(5) unsigned NOT NULL COMMENT '模型id',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  `title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `keywords` varchar(255) NOT NULL COMMENT '关键字',
  `description` text NOT NULL COMMENT '描述信息',
  `displayorder` tinyint(3) DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  KEY `showid` (`showid`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of om_space_category
-- ----------------------------
INSERT INTO `om_space_category` VALUES ('1', '1', '0', '0', '2', '关于我们', '', '', '3', '0', '1', '1,2,3', '', '', '', '0');
INSERT INTO `om_space_category` VALUES ('2', '1', '1', '0,1', '2', '空间简介', '', '<p>OmWeb v2（简称v2）是一款开源的跨平台网站内容管理系统，以“实用+好用”为基本产品理念，提供从内容发布、组织、传播、互动和数据挖掘的网站一体化解决方案。系统基于CodeIgniter框架，具有良好扩展性和管理性，可以帮助您在各种操作系统与运行环境中搭建各种网站模型而不需要对复杂繁琐的编程语言有太多的专业知识，系统采用UTF-8编码，采取(语言-代码-程序)两两分离的技术模式，全面使用了模板包与语言包结构，为用户的修改提供方便，网站内容的每一个角落都可以在后台予以管理，是一套非常适合用做系统建站或者进行二次开发的程序核心。<br /></p>', '3', '0', '0', '2', '', '', '', '0');
INSERT INTO `om_space_category` VALUES ('3', '1', '1', '0,1', '2', '联系我们', '', '<p><img src=\"http://api.map.baidu.com/staticimage?center=104.077889,30.551305&zoom=18&width=530&height=340&markers=104.076658,30.551693\" height=\"340\" width=\"530\" /></p><p>扣扣咨询：135977378<br />电子邮箱：OmWeb@qq.com</p>', '3', '0', '0', '3', '', '', '', '0');
INSERT INTO `om_space_category` VALUES ('4', '1', '0', '0', '1', '新闻资讯', '', '', '3', '1', '0', '4', '', '', '', '0');
INSERT INTO `om_space_category` VALUES ('5', '1', '0', '0', '1', '我的日志', '', '', '3', '3', '0', '5', '', '', '', '0');
INSERT INTO `om_space_category` VALUES ('6', '1', '0', '0', '1', '精彩图片', '', '', '3', '4', '0', '6', '', '', '', '0');
INSERT INTO `om_space_category` VALUES ('7', '1', '0', '0', '1', '首页幻灯', '', '', '0', '5', '0', '7', '', '', '', '0');
INSERT INTO `om_space_category` VALUES ('8', '1', '0', '0', '1', '友情链接', '', '', '3', '2', '0', '8', '', '', '', '0');
INSERT INTO `om_space_category` VALUES ('9', '1', '0', '0', '0', '技术支持', 'http://www.omooo.com', '', '3', '0', '0', '9', '', '', '0', '0');

-- ----------------------------
-- Table structure for om_space_category_init
-- ----------------------------
DROP TABLE IF EXISTS `om_space_category_init`;
CREATE TABLE `om_space_category_init` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `gid` mediumint(8) unsigned NOT NULL COMMENT '会员组id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '0外链，1模型，2单页',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `link` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `showid` tinyint(1) unsigned NOT NULL COMMENT '0不显示,1顶部,2底部,3都显示',
  `modelid` smallint(5) unsigned NOT NULL COMMENT '模型id',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `childids` text COMMENT '下级所有id',
  PRIMARY KEY (`id`),
  KEY `uid` (`gid`),
  KEY `pid` (`pid`),
  KEY `showid` (`showid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='空间栏目表初始化表';

-- ----------------------------
-- Records of om_space_category_init
-- ----------------------------
INSERT INTO `om_space_category_init` VALUES ('1', '1', '0', '0', '2', '关于我们', '', '3', '0', '1', '1,2,3');
INSERT INTO `om_space_category_init` VALUES ('2', '1', '1', '0,1', '2', '空间简介', '', '3', '0', '0', '2');
INSERT INTO `om_space_category_init` VALUES ('3', '1', '1', '0,1', '2', '联系我们', '', '3', '0', '0', '3');
INSERT INTO `om_space_category_init` VALUES ('4', '1', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '4');
INSERT INTO `om_space_category_init` VALUES ('5', '1', '0', '0', '1', '我的日志', '', '3', '3', '0', '5');
INSERT INTO `om_space_category_init` VALUES ('6', '1', '0', '0', '1', '精彩图片', '', '3', '4', '0', '6');
INSERT INTO `om_space_category_init` VALUES ('7', '1', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '7');
INSERT INTO `om_space_category_init` VALUES ('8', '1', '0', '0', '1', '友情链接', '', '3', '2', '0', '8');
INSERT INTO `om_space_category_init` VALUES ('9', '1', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '9');
INSERT INTO `om_space_category_init` VALUES ('10', '2', '0', '0', '2', '关于我们', '', '3', '0', '1', '10,11,12');
INSERT INTO `om_space_category_init` VALUES ('11', '2', '10', '0,10', '2', '空间简介', '', '3', '0', '0', '11');
INSERT INTO `om_space_category_init` VALUES ('12', '2', '10', '0,10', '2', '联系我们', '', '3', '0', '0', '12');
INSERT INTO `om_space_category_init` VALUES ('13', '2', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '13');
INSERT INTO `om_space_category_init` VALUES ('14', '2', '0', '0', '1', '我的日志', '', '3', '3', '0', '14');
INSERT INTO `om_space_category_init` VALUES ('15', '2', '0', '0', '1', '精彩图片', '', '3', '4', '0', '15');
INSERT INTO `om_space_category_init` VALUES ('16', '2', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '16');
INSERT INTO `om_space_category_init` VALUES ('17', '2', '0', '0', '1', '友情链接', '', '3', '2', '0', '17');
INSERT INTO `om_space_category_init` VALUES ('18', '2', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '18');
INSERT INTO `om_space_category_init` VALUES ('19', '3', '0', '0', '2', '关于我们', '', '3', '0', '1', '19,20,21');
INSERT INTO `om_space_category_init` VALUES ('20', '3', '19', '0,19', '2', '空间简介', '', '3', '0', '0', '20');
INSERT INTO `om_space_category_init` VALUES ('21', '3', '19', '0,19', '2', '联系我们', '', '3', '0', '0', '21');
INSERT INTO `om_space_category_init` VALUES ('22', '3', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '22');
INSERT INTO `om_space_category_init` VALUES ('23', '3', '0', '0', '1', '我的日志', '', '3', '3', '0', '23');
INSERT INTO `om_space_category_init` VALUES ('24', '3', '0', '0', '1', '精彩图片', '', '3', '4', '0', '24');
INSERT INTO `om_space_category_init` VALUES ('25', '3', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '25');
INSERT INTO `om_space_category_init` VALUES ('26', '3', '0', '0', '1', '友情链接', '', '3', '2', '0', '26');
INSERT INTO `om_space_category_init` VALUES ('27', '3', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '27');
INSERT INTO `om_space_category_init` VALUES ('28', '4', '0', '0', '2', '关于我们', '', '3', '0', '1', '28,29,30');
INSERT INTO `om_space_category_init` VALUES ('29', '4', '28', '0,28', '2', '空间简介', '', '3', '0', '0', '29');
INSERT INTO `om_space_category_init` VALUES ('30', '4', '28', '0,28', '2', '联系我们', '', '3', '0', '0', '30');
INSERT INTO `om_space_category_init` VALUES ('31', '4', '0', '0', '1', '新闻资讯', '', '3', '1', '0', '31');
INSERT INTO `om_space_category_init` VALUES ('32', '4', '0', '0', '1', '我的日志', '', '3', '3', '0', '32');
INSERT INTO `om_space_category_init` VALUES ('33', '4', '0', '0', '1', '精彩图片', '', '3', '4', '0', '33');
INSERT INTO `om_space_category_init` VALUES ('34', '4', '0', '0', '1', '首页幻灯', '', '0', '5', '0', '34');
INSERT INTO `om_space_category_init` VALUES ('35', '4', '0', '0', '1', '友情链接', '', '3', '2', '0', '35');
INSERT INTO `om_space_category_init` VALUES ('36', '4', '0', '0', '0', '技术支持', 'http://www.omooo.com', '3', '0', '0', '36');

-- ----------------------------
-- Table structure for om_space_flag
-- ----------------------------
DROP TABLE IF EXISTS `om_space_flag`;
CREATE TABLE `om_space_flag` (
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '标记id',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  KEY `flag` (`flag`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标记表';

-- ----------------------------
-- Records of om_space_flag
-- ----------------------------
INSERT INTO `om_space_flag` VALUES ('1', '1');
INSERT INTO `om_space_flag` VALUES ('2', '1');

-- ----------------------------
-- Table structure for om_space_link
-- ----------------------------
DROP TABLE IF EXISTS `om_space_link`;
CREATE TABLE `om_space_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间外链模型表';

-- ----------------------------
-- Records of om_space_link
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_log
-- ----------------------------
DROP TABLE IF EXISTS `om_space_log`;
CREATE TABLE `om_space_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间日志模型表';

-- ----------------------------
-- Records of om_space_log
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_model
-- ----------------------------
DROP TABLE IF EXISTS `om_space_model`;
CREATE TABLE `om_space_model` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `table` varchar(50) NOT NULL COMMENT '表名',
  `setting` text NOT NULL COMMENT '配置信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='会员模型表';

-- ----------------------------
-- Records of om_space_model
-- ----------------------------
INSERT INTO `om_space_model` VALUES ('1', '文章', 'news', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('2', '外链', 'link', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('3', '日志', 'log', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"5\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"6\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"7\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"8\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('4', '相册', 'photo', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"1\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"2\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"3\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:1:\\\"4\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');
INSERT INTO `om_space_model` VALUES ('5', '幻灯', 'slides', 'a:8:{s:3:\\\"3_1\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_2\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_3\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"3_4\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_5\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_6\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_7\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}s:3:\\\"4_8\\\";a:3:{s:3:\\\"use\\\";s:1:\\\"1\\\";s:10:\\\"experience\\\";s:0:\\\"\\\";s:5:\\\"score\\\";s:0:\\\"\\\";}}');

-- ----------------------------
-- Table structure for om_space_news
-- ----------------------------
DROP TABLE IF EXISTS `om_space_news`;
CREATE TABLE `om_space_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间单页模型表';

-- ----------------------------
-- Records of om_space_news
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_photo
-- ----------------------------
DROP TABLE IF EXISTS `om_space_photo`;
CREATE TABLE `om_space_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `description` text COMMENT '描述',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `image` text,
  `content` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员空间相册模型表';

-- ----------------------------
-- Records of om_space_photo
-- ----------------------------

-- ----------------------------
-- Table structure for om_space_slides
-- ----------------------------
DROP TABLE IF EXISTS `om_space_slides`;
CREATE TABLE `om_space_slides` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` mediumint(8) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `hits` int(10) unsigned NOT NULL COMMENT '点击量',
  `status` tinyint(1) unsigned NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hits` (`hits`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员空间幻灯模型表';

-- ----------------------------
-- Records of om_space_slides
-- ----------------------------
INSERT INTO `om_space_slides` VALUES ('1', '7', '应用开放平台', '1', 'admin', '0', '1', '1377949237', '1377949237', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner1.jpg', 'http://store.omooo.com');
INSERT INTO `om_space_slides` VALUES ('2', '7', '群站多语言管理', '1', 'admin', '0', '1', '1377949258', '1377949258', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner2.jpg', 'http://web.omooo.com/');
INSERT INTO `om_space_slides` VALUES ('3', '7', 'OmWeb 一套神奇的系统', '1', 'admin', '0', '1', '1377949306', '1377949306', '0', 'http://www.omooo.com/omooo/statics/omooo/images/index_banner3.jpg', 'http://www.omooo.com/');

-- ----------------------------
-- Table structure for om_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `om_urlrule`;
CREATE TABLE `om_urlrule` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '规则类型',
  `name` varchar(50) NOT NULL COMMENT '规则名称',
  `value` text NOT NULL COMMENT '详细规则',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='URL规则表';

-- ----------------------------
-- Records of om_urlrule
-- ----------------------------
INSERT INTO `om_urlrule` VALUES ('1', '0', '单页默认规则（不能用于模块）', 'a:8:{s:4:\\\"page\\\";s:11:\\\"{pdirname}/\\\";s:9:\\\"page_page\\\";s:22:\\\"{pdirname}/{page}.html\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:6:\\\"extend\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}');
INSERT INTO `om_urlrule` VALUES ('2', '0', '单页默认规则（用于模块）', 'a:8:{s:4:\\\"page\\\";s:16:\\\"page/{pdirname}/\\\";s:9:\\\"page_page\\\";s:27:\\\"page/{pdirname}/{page}.html\\\";s:4:\\\"list\\\";s:0:\\\"\\\";s:9:\\\"list_page\\\";s:0:\\\"\\\";s:4:\\\"show\\\";s:0:\\\"\\\";s:9:\\\"show_page\\\";s:0:\\\"\\\";s:6:\\\"extend\\\";s:0:\\\"\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}');
INSERT INTO `om_urlrule` VALUES ('3', '1', '模块默认规则', 'a:8:{s:4:\\\"page\\\";s:0:\\\"\\\";s:9:\\\"page_page\\\";s:0:\\\"\\\";s:4:\\\"list\\\";s:11:\\\"{pdirname}/\\\";s:9:\\\"list_page\\\";s:23:\\\"{pdirname}/p{page}.html\\\";s:4:\\\"show\\\";s:28:\\\"{pdirname}/{y}/{m}/{id}.html\\\";s:9:\\\"show_page\\\";s:35:\\\"{pdirname}/{y}/{m}/{id}/{page}.html\\\";s:6:\\\"extend\\\";s:25:\\\"{pdirname}/read/{id}.html\\\";s:7:\\\"catjoin\\\";s:1:\\\"/\\\";}');
