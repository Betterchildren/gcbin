/*
Navicat MySQL Data Transfer

Source Server         : Stanley
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_stanley

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-02 20:47:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for rolegroup_info
-- ----------------------------
DROP TABLE IF EXISTS `rolegroup_info`;
CREATE TABLE `rolegroup_info` (
  `pk_rolegroup` char(20) NOT NULL,
  `groupname` varchar(50) DEFAULT NULL,
  `groupcode` varchar(50) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  `pk_group` char(20) DEFAULT NULL,
  `pk_org` char(20) DEFAULT NULL,
  `creator` char(20) DEFAULT NULL,
  `creationtime` char(19) DEFAULT NULL,
  `modifier` char(20) DEFAULT NULL,
  `modifiedtime` char(19) DEFAULT NULL,
  `ts` char(19) DEFAULT NULL,
  `dr` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_rolegroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
