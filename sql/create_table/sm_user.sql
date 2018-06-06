/*
Navicat MySQL Data Transfer

Source Server         : Stanley
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_stanley

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-06-02 20:45:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sm_user
-- ----------------------------
DROP TABLE IF EXISTS `sm_user`;
CREATE TABLE `sm_user` (
  `cuserid` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dr` tinyint(4) DEFAULT NULL,
  `user_type` tinyint(4) DEFAULT NULL,
  `is_lock` tinyint(4) DEFAULT NULL,
  `is_online` tinyint(4) DEFAULT NULL,
  `head_img` longtext,
  `last_time` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
