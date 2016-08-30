/*
Navicat MySQL Data Transfer

Source Server         : 192.168.2.11
Source Server Version : 50533
Source Host           : 192.168.2.11:3306
Source Database       : player

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2016-03-31 23:48:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gemisavasi`
-- ----------------------------
DROP TABLE IF EXISTS `gemisavasi`;
CREATE TABLE `gemisavasi` (
  `id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gemisavasi
-- ----------------------------
