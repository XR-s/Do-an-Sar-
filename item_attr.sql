/*
Navicat MySQL Data Transfer

Source Server         : 178.20.224.147
Source Server Version : 50538
Source Host           : 178.20.224.147:3306
Source Database       : player

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-03-17 23:08:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `item_attr`
-- ----------------------------
DROP TABLE IF EXISTS `item_attr`;
CREATE TABLE `item_attr` (
  `apply` enum('MAX_HP','MAX_SP','CON','INT','STR','DEX','ATT_SPEED','MOV_SPEED','CAST_SPEED','HP_REGEN','SP_REGEN','POISON_PCT','STUN_PCT','SLOW_PCT','CRITICAL_PCT','PENETRATE_PCT','ATTBONUS_HUMAN','ATTBONUS_ANIMAL','ATTBONUS_ORC','ATTBONUS_MILGYO','ATTBONUS_UNDEAD','ATTBONUS_DEVIL','STEAL_HP','STEAL_SP','MANA_BURN_PCT','DAMAGE_SP_RECOVER','BLOCK','DODGE','RESIST_SWORD','RESIST_TWOHAND','RESIST_DAGGER','RESIST_BELL','RESIST_FAN','RESIST_BOW','RESIST_FIRE','RESIST_ELEC','RESIST_MAGIC','RESIST_WIND','REFLECT_MELEE','REFLECT_CURSE','POISON_REDUCE','KILL_SP_RECOVER','EXP_DOUBLE_BONUS','GOLD_DOUBLE_BONUS','ITEM_DROP_BONUS','POTION_BONUS','KILL_HP_RECOVER','IMMUNE_STUN','IMMUNE_SLOW','IMMUNE_FALL','SKILL','BOW_DISTANCE','ATT_GRADE_BONUS','DEF_GRADE_BONUS','MAGIC_ATT_GRADE','MAGIC_DEF_GRADE','CURSE_PCT','MAX_STAMINA') NOT NULL DEFAULT 'MAX_HP',
  `prob` varchar(100) NOT NULL DEFAULT '',
  `lv1` varchar(100) NOT NULL DEFAULT '',
  `lv2` varchar(100) NOT NULL DEFAULT '',
  `lv3` varchar(100) NOT NULL DEFAULT '',
  `lv4` varchar(100) NOT NULL DEFAULT '',
  `lv5` varchar(100) NOT NULL DEFAULT '',
  `weapon` varchar(100) NOT NULL DEFAULT '',
  `body` varchar(100) NOT NULL DEFAULT '',
  `wrist` varchar(100) NOT NULL DEFAULT '',
  `foots` varchar(100) NOT NULL DEFAULT '',
  `neck` varchar(100) NOT NULL DEFAULT '',
  `head` varchar(100) NOT NULL DEFAULT '',
  `shield` varchar(100) NOT NULL DEFAULT '',
  `ear` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of item_attr
-- ----------------------------
INSERT INTO `item_attr` VALUES ('STR', '1', '10', '10', '10', '15', '15', '5', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `item_attr` VALUES ('INT', '1', '10', '10', '10', '15', '15', '5', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `item_attr` VALUES ('CON', '1', '10', '10', '10', '15', '15', '5', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `item_attr` VALUES ('MAX_SP', '1', '100', '100', '100', '100', '100', '0', '0', '5', '5', '5', '0', '0', '0');
INSERT INTO `item_attr` VALUES ('MAX_HP', '1', '2000', '2500', '2500', '3000', '3000', '0', '5', '5', '5', '5', '0', '0', '0');
INSERT INTO `item_attr` VALUES ('DEX', '1', '12', '12', '12', '12', '12', '5', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `item_attr` VALUES ('ATT_SPEED', '1', '8', '8', '8', '8', '8', '0', '0', '0', '5', '0', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('CAST_SPEED', '1', '20', '20', '20', '20', '20', '5', '5', '0', '0', '0', '0', '0', '0');
INSERT INTO `item_attr` VALUES ('HP_REGEN', '1', '30', '30', '30', '30', '30', '0', '0', '0', '0', '5', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('SP_REGEN', '1', '30', '30', '30', '30', '30', '0', '0', '0', '0', '5', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('POISON_PCT', '1', '8', '8', '8', '8', '8', '5', '0', '0', '0', '0', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('STUN_PCT', '1', '8', '8', '8', '8', '8', '5', '0', '0', '5', '5', '0', '0', '0');
INSERT INTO `item_attr` VALUES ('SLOW_PCT', '1', '8', '8', '8', '8', '8', '5', '0', '0', '5', '0', '0', '0', '0');
INSERT INTO `item_attr` VALUES ('CRITICAL_PCT', '1', '10', '10', '10', '15', '15', '5', '0', '0', '5', '5', '0', '0', '0');
INSERT INTO `item_attr` VALUES ('PENETRATE_PCT', '1', '10', '10', '10', '15', '15', '5', '0', '5', '0', '5', '0', '0', '0');
INSERT INTO `item_attr` VALUES ('ATTBONUS_HUMAN', '1', '10', '10', '10', '15', '15', '5', '0', '5', '0', '0', '5', '5', '5');
INSERT INTO `item_attr` VALUES ('STEAL_HP', '1', '10', '10', '10', '10', '10', '0', '5', '5', '0', '0', '0', '0', '0');
INSERT INTO `item_attr` VALUES ('STEAL_SP', '1', '10', '10', '10', '10', '10', '0', '5', '0', '0', '5', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('MANA_BURN_PCT', '1', '10', '10', '10', '10', '10', '0', '0', '5', '0', '0', '0', '0', '5');
INSERT INTO `item_attr` VALUES ('BLOCK', '1', '15', '15', '15', '15', '15', '0', '0', '0', '0', '0', '0', '5', '0');
INSERT INTO `item_attr` VALUES ('DODGE', '1', '15', '15', '15', '15', '15', '0', '0', '0', '5', '0', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('RESIST_SWORD', '1', '15', '15', '15', '15', '15', '0', '5', '0', '5', '5', '0', '0', '5');
INSERT INTO `item_attr` VALUES ('RESIST_TWOHAND', '1', '15', '15', '15', '15', '15', '0', '5', '0', '5', '5', '0', '0', '5');
INSERT INTO `item_attr` VALUES ('RESIST_DAGGER', '1', '15', '15', '15', '15', '15', '0', '5', '0', '5', '5', '0', '0', '5');
INSERT INTO `item_attr` VALUES ('RESIST_BELL', '1', '15', '15', '15', '15', '15', '0', '5', '0', '5', '5', '0', '0', '5');
INSERT INTO `item_attr` VALUES ('RESIST_FAN', '1', '15', '15', '15', '15', '15', '0', '5', '0', '5', '5', '0', '0', '5');
INSERT INTO `item_attr` VALUES ('RESIST_BOW', '1', '15', '15', '15', '15', '15', '0', '5', '0', '5', '5', '0', '0', '5');
INSERT INTO `item_attr` VALUES ('RESIST_FIRE', '1', '15', '15', '15', '15', '15', '0', '5', '5', '0', '0', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('RESIST_ELEC', '1', '15', '15', '15', '15', '15', '0', '5', '5', '0', '0', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('RESIST_MAGIC', '1', '15', '15', '15', '15', '15', '0', '5', '5', '0', '0', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('RESIST_WIND', '1', '15', '15', '15', '15', '15', '0', '5', '5', '0', '0', '5', '0', '0');
INSERT INTO `item_attr` VALUES ('REFLECT_MELEE', '1', '15', '15', '15', '15', '15', '0', '5', '0', '0', '0', '0', '5', '0');
INSERT INTO `item_attr` VALUES ('POISON_REDUCE', '1', '8', '8', '8', '8', '8', '0', '0', '0', '0', '0', '0', '0', '5');
INSERT INTO `item_attr` VALUES ('IMMUNE_STUN', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO `item_attr` VALUES ('IMMUNE_SLOW', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '1', '0');
