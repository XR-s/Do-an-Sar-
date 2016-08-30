/*
Navicat MySQL Data Transfer

Source Server         : 178.20.224.147
Source Server Version : 50538
Source Host           : 178.20.224.147:3306
Source Database       : player

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2015-03-17 23:08:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `shop_item`
-- ----------------------------
DROP TABLE IF EXISTS `shop_item`;
CREATE TABLE `shop_item` (
  `shop_vnum` int(11) NOT NULL DEFAULT '0',
  `item_vnum` int(11) NOT NULL DEFAULT '0',
  `count` tinyint(4) unsigned NOT NULL DEFAULT '1',
  UNIQUE KEY `vnum_unique` (`shop_vnum`,`item_vnum`,`count`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shop_item
-- ----------------------------
INSERT INTO `shop_item` VALUES ('1', '59', '1');
INSERT INTO `shop_item` VALUES ('1', '109', '1');
INSERT INTO `shop_item` VALUES ('1', '299', '1');
INSERT INTO `shop_item` VALUES ('1', '1029', '1');
INSERT INTO `shop_item` VALUES ('1', '1069', '1');
INSERT INTO `shop_item` VALUES ('1', '1179', '1');
INSERT INTO `shop_item` VALUES ('1', '2049', '1');
INSERT INTO `shop_item` VALUES ('1', '2099', '1');
INSERT INTO `shop_item` VALUES ('1', '3049', '1');
INSERT INTO `shop_item` VALUES ('1', '3099', '1');
INSERT INTO `shop_item` VALUES ('1', '3219', '1');
INSERT INTO `shop_item` VALUES ('1', '5029', '1');
INSERT INTO `shop_item` VALUES ('1', '5059', '1');
INSERT INTO `shop_item` VALUES ('1', '5119', '1');
INSERT INTO `shop_item` VALUES ('1', '7049', '1');
INSERT INTO `shop_item` VALUES ('1', '7099', '1');
INSERT INTO `shop_item` VALUES ('1', '8005', '250');
INSERT INTO `shop_item` VALUES ('1', '8006', '250');
INSERT INTO `shop_item` VALUES ('1', '8007', '250');
INSERT INTO `shop_item` VALUES ('1', '8008', '250');
INSERT INTO `shop_item` VALUES ('1', '8009', '250');
INSERT INTO `shop_item` VALUES ('2', '27400', '1');
INSERT INTO `shop_item` VALUES ('2', '27600', '1');
INSERT INTO `shop_item` VALUES ('2', '27610', '1');
INSERT INTO `shop_item` VALUES ('2', '27800', '5');
INSERT INTO `shop_item` VALUES ('2', '27800', '25');
INSERT INTO `shop_item` VALUES ('2', '27801', '250');
INSERT INTO `shop_item` VALUES ('3', '25040', '1');
INSERT INTO `shop_item` VALUES ('3', '27003', '250');
INSERT INTO `shop_item` VALUES ('3', '27006', '250');
INSERT INTO `shop_item` VALUES ('3', '27102', '250');
INSERT INTO `shop_item` VALUES ('3', '27799', '1');
INSERT INTO `shop_item` VALUES ('3', '27987', '1');
INSERT INTO `shop_item` VALUES ('3', '27989', '1');
INSERT INTO `shop_item` VALUES ('3', '27992', '1');
INSERT INTO `shop_item` VALUES ('3', '27993', '1');
INSERT INTO `shop_item` VALUES ('3', '27994', '1');
INSERT INTO `shop_item` VALUES ('3', '30190', '1');
INSERT INTO `shop_item` VALUES ('3', '39004', '50');
INSERT INTO `shop_item` VALUES ('3', '40004', '1');
INSERT INTO `shop_item` VALUES ('3', '50056', '1');
INSERT INTO `shop_item` VALUES ('3', '50200', '1');
INSERT INTO `shop_item` VALUES ('3', '70038', '1');
INSERT INTO `shop_item` VALUES ('3', '70058', '1');
INSERT INTO `shop_item` VALUES ('3', '70102', '5');
INSERT INTO `shop_item` VALUES ('3', '70301', '1');
INSERT INTO `shop_item` VALUES ('3', '71001', '250');
INSERT INTO `shop_item` VALUES ('3', '71002', '1');
INSERT INTO `shop_item` VALUES ('3', '71003', '1');
INSERT INTO `shop_item` VALUES ('3', '71011', '1');
INSERT INTO `shop_item` VALUES ('3', '71012', '1');
INSERT INTO `shop_item` VALUES ('3', '71027', '250');
INSERT INTO `shop_item` VALUES ('3', '71028', '250');
INSERT INTO `shop_item` VALUES ('3', '71029', '250');
INSERT INTO `shop_item` VALUES ('3', '71030', '250');
INSERT INTO `shop_item` VALUES ('3', '71044', '250');
INSERT INTO `shop_item` VALUES ('3', '71045', '250');
INSERT INTO `shop_item` VALUES ('3', '71048', '1');
INSERT INTO `shop_item` VALUES ('3', '71050', '250');
INSERT INTO `shop_item` VALUES ('3', '71054', '1');
INSERT INTO `shop_item` VALUES ('3', '71083', '1');
INSERT INTO `shop_item` VALUES ('3', '71084', '250');
INSERT INTO `shop_item` VALUES ('3', '71085', '250');
INSERT INTO `shop_item` VALUES ('3', '71094', '250');
INSERT INTO `shop_item` VALUES ('3', '71095', '2');
INSERT INTO `shop_item` VALUES ('3', '71110', '1');
INSERT INTO `shop_item` VALUES ('3', '72702', '1');
INSERT INTO `shop_item` VALUES ('4', '11229', '1');
INSERT INTO `shop_item` VALUES ('4', '11249', '1');
INSERT INTO `shop_item` VALUES ('4', '11259', '1');
INSERT INTO `shop_item` VALUES ('4', '11429', '1');
INSERT INTO `shop_item` VALUES ('4', '11449', '1');
INSERT INTO `shop_item` VALUES ('4', '11459', '1');
INSERT INTO `shop_item` VALUES ('4', '11629', '1');
INSERT INTO `shop_item` VALUES ('4', '11649', '1');
INSERT INTO `shop_item` VALUES ('4', '11659', '1');
INSERT INTO `shop_item` VALUES ('4', '11829', '1');
INSERT INTO `shop_item` VALUES ('4', '11849', '1');
INSERT INTO `shop_item` VALUES ('4', '11859', '1');
INSERT INTO `shop_item` VALUES ('4', '12209', '1');
INSERT INTO `shop_item` VALUES ('4', '12349', '1');
INSERT INTO `shop_item` VALUES ('4', '12489', '1');
INSERT INTO `shop_item` VALUES ('4', '12629', '1');
INSERT INTO `shop_item` VALUES ('4', '13009', '1');
INSERT INTO `shop_item` VALUES ('4', '13049', '1');
INSERT INTO `shop_item` VALUES ('4', '14009', '1');
INSERT INTO `shop_item` VALUES ('4', '15009', '1');
INSERT INTO `shop_item` VALUES ('4', '16009', '1');
INSERT INTO `shop_item` VALUES ('4', '17009', '1');
INSERT INTO `shop_item` VALUES ('7', '80003', '1');
INSERT INTO `shop_item` VALUES ('7', '80004', '1');
INSERT INTO `shop_item` VALUES ('7', '80005', '1');
INSERT INTO `shop_item` VALUES ('7', '80006', '1');
INSERT INTO `shop_item` VALUES ('7', '80007', '1');
INSERT INTO `shop_item` VALUES ('8', '25100', '1');
INSERT INTO `shop_item` VALUES ('8', '28430', '1');
INSERT INTO `shop_item` VALUES ('8', '28431', '1');
INSERT INTO `shop_item` VALUES ('8', '28432', '1');
INSERT INTO `shop_item` VALUES ('8', '28433', '1');
INSERT INTO `shop_item` VALUES ('8', '28434', '1');
INSERT INTO `shop_item` VALUES ('8', '28435', '1');
INSERT INTO `shop_item` VALUES ('8', '28436', '1');
INSERT INTO `shop_item` VALUES ('8', '28437', '1');
INSERT INTO `shop_item` VALUES ('8', '28438', '1');
INSERT INTO `shop_item` VALUES ('8', '28439', '1');
INSERT INTO `shop_item` VALUES ('8', '28441', '1');
INSERT INTO `shop_item` VALUES ('8', '28442', '1');
INSERT INTO `shop_item` VALUES ('8', '28443', '1');
INSERT INTO `shop_item` VALUES ('8', '50059', '1');
INSERT INTO `shop_item` VALUES ('8', '50621', '1');
INSERT INTO `shop_item` VALUES ('8', '50623', '1');
INSERT INTO `shop_item` VALUES ('8', '50624', '1');
INSERT INTO `shop_item` VALUES ('8', '50625', '1');
INSERT INTO `shop_item` VALUES ('8', '50626', '1');
INSERT INTO `shop_item` VALUES ('8', '50627', '1');
INSERT INTO `shop_item` VALUES ('8', '50628', '1');
INSERT INTO `shop_item` VALUES ('8', '50629', '1');
INSERT INTO `shop_item` VALUES ('8', '50630', '1');
INSERT INTO `shop_item` VALUES ('8', '50631', '1');
INSERT INTO `shop_item` VALUES ('8', '50632', '1');
INSERT INTO `shop_item` VALUES ('8', '50633', '1');
INSERT INTO `shop_item` VALUES ('8', '50814', '250');
INSERT INTO `shop_item` VALUES ('8', '50815', '250');
INSERT INTO `shop_item` VALUES ('8', '50817', '250');
INSERT INTO `shop_item` VALUES ('8', '50818', '250');
INSERT INTO `shop_item` VALUES ('8', '50820', '250');
INSERT INTO `shop_item` VALUES ('8', '71083', '1');
INSERT INTO `shop_item` VALUES ('9', '11901', '1');
INSERT INTO `shop_item` VALUES ('9', '11902', '1');
INSERT INTO `shop_item` VALUES ('9', '11903', '1');
INSERT INTO `shop_item` VALUES ('9', '11904', '1');
INSERT INTO `shop_item` VALUES ('9', '70024', '1');
INSERT INTO `shop_item` VALUES ('9', '70035', '1');
INSERT INTO `shop_item` VALUES ('10', '29101', '1');
INSERT INTO `shop_item` VALUES ('9010', '30005', '1');
INSERT INTO `shop_item` VALUES ('9010', '30007', '1');
INSERT INTO `shop_item` VALUES ('9010', '30008', '1');
INSERT INTO `shop_item` VALUES ('9010', '30009', '1');
INSERT INTO `shop_item` VALUES ('9010', '30014', '1');
INSERT INTO `shop_item` VALUES ('9010', '30016', '1');
INSERT INTO `shop_item` VALUES ('9010', '30019', '1');
INSERT INTO `shop_item` VALUES ('9010', '30021', '1');
INSERT INTO `shop_item` VALUES ('9010', '30022', '1');
INSERT INTO `shop_item` VALUES ('9010', '30025', '1');
INSERT INTO `shop_item` VALUES ('9010', '30030', '1');
INSERT INTO `shop_item` VALUES ('9010', '30039', '1');
INSERT INTO `shop_item` VALUES ('9010', '30040', '1');
INSERT INTO `shop_item` VALUES ('9010', '30042', '1');
INSERT INTO `shop_item` VALUES ('9010', '30046', '1');
INSERT INTO `shop_item` VALUES ('9010', '30048', '1');
INSERT INTO `shop_item` VALUES ('9010', '30049', '1');
INSERT INTO `shop_item` VALUES ('9010', '30051', '1');
INSERT INTO `shop_item` VALUES ('9010', '30055', '1');
INSERT INTO `shop_item` VALUES ('9010', '30056', '1');
INSERT INTO `shop_item` VALUES ('9010', '30057', '1');
INSERT INTO `shop_item` VALUES ('9010', '30059', '1');
INSERT INTO `shop_item` VALUES ('9010', '30060', '1');
INSERT INTO `shop_item` VALUES ('9010', '30061', '1');
INSERT INTO `shop_item` VALUES ('9010', '30067', '1');
INSERT INTO `shop_item` VALUES ('9010', '30075', '1');
INSERT INTO `shop_item` VALUES ('9010', '30076', '1');
INSERT INTO `shop_item` VALUES ('9010', '30077', '1');
INSERT INTO `shop_item` VALUES ('9010', '30078', '1');
INSERT INTO `shop_item` VALUES ('9010', '30079', '1');
INSERT INTO `shop_item` VALUES ('9010', '30080', '1');
INSERT INTO `shop_item` VALUES ('9010', '30081', '1');
INSERT INTO `shop_item` VALUES ('9010', '30082', '1');
INSERT INTO `shop_item` VALUES ('9010', '30083', '1');
INSERT INTO `shop_item` VALUES ('9010', '30085', '1');
INSERT INTO `shop_item` VALUES ('9010', '30086', '1');
INSERT INTO `shop_item` VALUES ('9010', '30087', '1');
INSERT INTO `shop_item` VALUES ('9010', '30088', '1');
INSERT INTO `shop_item` VALUES ('9010', '30089', '1');
INSERT INTO `shop_item` VALUES ('9010', '30090', '1');
INSERT INTO `shop_item` VALUES ('9010', '30091', '1');
INSERT INTO `shop_item` VALUES ('20001', '74017', '1');
INSERT INTO `shop_item` VALUES ('20001', '74018', '1');
INSERT INTO `shop_item` VALUES ('20001', '74019', '1');
INSERT INTO `shop_item` VALUES ('20001', '74020', '1');
INSERT INTO `shop_item` VALUES ('20001', '74267', '1');
INSERT INTO `shop_item` VALUES ('20001', '74268', '1');
INSERT INTO `shop_item` VALUES ('20001', '74269', '1');
INSERT INTO `shop_item` VALUES ('20001', '74270', '1');
INSERT INTO `shop_item` VALUES ('20001', '74517', '1');
INSERT INTO `shop_item` VALUES ('20001', '74518', '1');
INSERT INTO `shop_item` VALUES ('20001', '74519', '1');
INSERT INTO `shop_item` VALUES ('20001', '74520', '1');
INSERT INTO `shop_item` VALUES ('20001', '74767', '1');
INSERT INTO `shop_item` VALUES ('20001', '74768', '1');
INSERT INTO `shop_item` VALUES ('20001', '74769', '1');
INSERT INTO `shop_item` VALUES ('20001', '74770', '1');
INSERT INTO `shop_item` VALUES ('20001', '75017', '1');
INSERT INTO `shop_item` VALUES ('20001', '75018', '1');
INSERT INTO `shop_item` VALUES ('20001', '75019', '1');
INSERT INTO `shop_item` VALUES ('20001', '75020', '1');
INSERT INTO `shop_item` VALUES ('20001', '75217', '1');
INSERT INTO `shop_item` VALUES ('20001', '75218', '1');
INSERT INTO `shop_item` VALUES ('20001', '75219', '1');
INSERT INTO `shop_item` VALUES ('20001', '75220', '1');
INSERT INTO `shop_item` VALUES ('20001', '75417', '1');
INSERT INTO `shop_item` VALUES ('20001', '75418', '1');
INSERT INTO `shop_item` VALUES ('20001', '75419', '1');
INSERT INTO `shop_item` VALUES ('20001', '75420', '1');
INSERT INTO `shop_item` VALUES ('20001', '75617', '1');
INSERT INTO `shop_item` VALUES ('20001', '75618', '1');
INSERT INTO `shop_item` VALUES ('20001', '75619', '1');
INSERT INTO `shop_item` VALUES ('20001', '75620', '1');
INSERT INTO `shop_item` VALUES ('20096', '27805', '1');
INSERT INTO `shop_item` VALUES ('20096', '27992', '1');
INSERT INTO `shop_item` VALUES ('20096', '27993', '1');
INSERT INTO `shop_item` VALUES ('20096', '27994', '1');
INSERT INTO `shop_item` VALUES ('20096', '50101', '100');
INSERT INTO `shop_item` VALUES ('20096', '50102', '100');
INSERT INTO `shop_item` VALUES ('20096', '50103', '100');
INSERT INTO `shop_item` VALUES ('20096', '50104', '100');
INSERT INTO `shop_item` VALUES ('20096', '50105', '100');
INSERT INTO `shop_item` VALUES ('20096', '80008', '1');
INSERT INTO `shop_item` VALUES ('20300', '73001', '1');
INSERT INTO `shop_item` VALUES ('20300', '73002', '1');
INSERT INTO `shop_item` VALUES ('20300', '73003', '1');
INSERT INTO `shop_item` VALUES ('20300', '73004', '1');
INSERT INTO `shop_item` VALUES ('20300', '73005', '1');
INSERT INTO `shop_item` VALUES ('20300', '73006', '1');
INSERT INTO `shop_item` VALUES ('20300', '73007', '1');
INSERT INTO `shop_item` VALUES ('20300', '73008', '1');
INSERT INTO `shop_item` VALUES ('20300', '73009', '1');
INSERT INTO `shop_item` VALUES ('20300', '73010', '1');
INSERT INTO `shop_item` VALUES ('20300', '73011', '1');
INSERT INTO `shop_item` VALUES ('20300', '73012', '1');
INSERT INTO `shop_item` VALUES ('20300', '75001', '1');
INSERT INTO `shop_item` VALUES ('20300', '75002', '1');
INSERT INTO `shop_item` VALUES ('20300', '75003', '1');
INSERT INTO `shop_item` VALUES ('20300', '75004', '1');
INSERT INTO `shop_item` VALUES ('20300', '75005', '1');
INSERT INTO `shop_item` VALUES ('20300', '75006', '1');
INSERT INTO `shop_item` VALUES ('20300', '75007', '1');
INSERT INTO `shop_item` VALUES ('20300', '75008', '1');
INSERT INTO `shop_item` VALUES ('20302', '73251', '1');
INSERT INTO `shop_item` VALUES ('20302', '73252', '1');
INSERT INTO `shop_item` VALUES ('20302', '73253', '1');
INSERT INTO `shop_item` VALUES ('20302', '73254', '1');
INSERT INTO `shop_item` VALUES ('20302', '73255', '1');
INSERT INTO `shop_item` VALUES ('20302', '73256', '1');
INSERT INTO `shop_item` VALUES ('20302', '73257', '1');
INSERT INTO `shop_item` VALUES ('20302', '73258', '1');
INSERT INTO `shop_item` VALUES ('20302', '73259', '1');
INSERT INTO `shop_item` VALUES ('20302', '73260', '1');
INSERT INTO `shop_item` VALUES ('20302', '75201', '1');
INSERT INTO `shop_item` VALUES ('20302', '75202', '1');
INSERT INTO `shop_item` VALUES ('20302', '75203', '1');
INSERT INTO `shop_item` VALUES ('20302', '75204', '1');
INSERT INTO `shop_item` VALUES ('20302', '75205', '1');
INSERT INTO `shop_item` VALUES ('20302', '75206', '1');
INSERT INTO `shop_item` VALUES ('20302', '75207', '1');
INSERT INTO `shop_item` VALUES ('20302', '75208', '1');
INSERT INTO `shop_item` VALUES ('20302', '75209', '1');
INSERT INTO `shop_item` VALUES ('20302', '75210', '1');
INSERT INTO `shop_item` VALUES ('20302', '75211', '1');
INSERT INTO `shop_item` VALUES ('20302', '75212', '1');
INSERT INTO `shop_item` VALUES ('20304', '74501', '1');
INSERT INTO `shop_item` VALUES ('20304', '74502', '1');
INSERT INTO `shop_item` VALUES ('20304', '74503', '1');
INSERT INTO `shop_item` VALUES ('20304', '74504', '1');
INSERT INTO `shop_item` VALUES ('20304', '74505', '1');
INSERT INTO `shop_item` VALUES ('20304', '74506', '1');
INSERT INTO `shop_item` VALUES ('20304', '74507', '1');
INSERT INTO `shop_item` VALUES ('20304', '74508', '1');
INSERT INTO `shop_item` VALUES ('20304', '74509', '1');
INSERT INTO `shop_item` VALUES ('20304', '74510', '1');
INSERT INTO `shop_item` VALUES ('20304', '74511', '1');
INSERT INTO `shop_item` VALUES ('20304', '74512', '1');
INSERT INTO `shop_item` VALUES ('20304', '75401', '1');
INSERT INTO `shop_item` VALUES ('20304', '75402', '1');
INSERT INTO `shop_item` VALUES ('20304', '75403', '1');
INSERT INTO `shop_item` VALUES ('20304', '75404', '1');
INSERT INTO `shop_item` VALUES ('20304', '75405', '1');
INSERT INTO `shop_item` VALUES ('20304', '75406', '1');
INSERT INTO `shop_item` VALUES ('20304', '75407', '1');
INSERT INTO `shop_item` VALUES ('20304', '75408', '1');
INSERT INTO `shop_item` VALUES ('20304', '75409', '1');
INSERT INTO `shop_item` VALUES ('20304', '75410', '1');
INSERT INTO `shop_item` VALUES ('20304', '75411', '1');
INSERT INTO `shop_item` VALUES ('20304', '75412', '1');
INSERT INTO `shop_item` VALUES ('20306', '74751', '1');
INSERT INTO `shop_item` VALUES ('20306', '74752', '1');
INSERT INTO `shop_item` VALUES ('20306', '74753', '1');
INSERT INTO `shop_item` VALUES ('20306', '74754', '1');
INSERT INTO `shop_item` VALUES ('20306', '74755', '1');
INSERT INTO `shop_item` VALUES ('20306', '74756', '1');
INSERT INTO `shop_item` VALUES ('20306', '74757', '1');
INSERT INTO `shop_item` VALUES ('20306', '74758', '1');
INSERT INTO `shop_item` VALUES ('20306', '74759', '1');
INSERT INTO `shop_item` VALUES ('20306', '74760', '1');
INSERT INTO `shop_item` VALUES ('20306', '74761', '1');
INSERT INTO `shop_item` VALUES ('20306', '74762', '1');
INSERT INTO `shop_item` VALUES ('20306', '75601', '1');
INSERT INTO `shop_item` VALUES ('20306', '75602', '1');
INSERT INTO `shop_item` VALUES ('20306', '75603', '1');
INSERT INTO `shop_item` VALUES ('20306', '75604', '1');
INSERT INTO `shop_item` VALUES ('20306', '75605', '1');
INSERT INTO `shop_item` VALUES ('20306', '75606', '1');
INSERT INTO `shop_item` VALUES ('20306', '75607', '1');
INSERT INTO `shop_item` VALUES ('20306', '75608', '1');
INSERT INTO `shop_item` VALUES ('20306', '75609', '1');
INSERT INTO `shop_item` VALUES ('20306', '75610', '1');
INSERT INTO `shop_item` VALUES ('20306', '75611', '1');
INSERT INTO `shop_item` VALUES ('20306', '75612', '1');
INSERT INTO `shop_item` VALUES ('20320', '73001', '1');
INSERT INTO `shop_item` VALUES ('20320', '73002', '1');
INSERT INTO `shop_item` VALUES ('20320', '73003', '1');
INSERT INTO `shop_item` VALUES ('20320', '73004', '1');
INSERT INTO `shop_item` VALUES ('20320', '73005', '1');
INSERT INTO `shop_item` VALUES ('20320', '73006', '1');
INSERT INTO `shop_item` VALUES ('20320', '73007', '1');
INSERT INTO `shop_item` VALUES ('20320', '73008', '1');
INSERT INTO `shop_item` VALUES ('20320', '73009', '1');
INSERT INTO `shop_item` VALUES ('20320', '73010', '1');
INSERT INTO `shop_item` VALUES ('20320', '73011', '1');
INSERT INTO `shop_item` VALUES ('20320', '73012', '1');
INSERT INTO `shop_item` VALUES ('20320', '75001', '1');
INSERT INTO `shop_item` VALUES ('20320', '75002', '1');
INSERT INTO `shop_item` VALUES ('20320', '75003', '1');
INSERT INTO `shop_item` VALUES ('20320', '75004', '1');
INSERT INTO `shop_item` VALUES ('20320', '75005', '1');
INSERT INTO `shop_item` VALUES ('20320', '75006', '1');
INSERT INTO `shop_item` VALUES ('20320', '75007', '1');
INSERT INTO `shop_item` VALUES ('20320', '75008', '1');
INSERT INTO `shop_item` VALUES ('20322', '73251', '1');
INSERT INTO `shop_item` VALUES ('20322', '73252', '1');
INSERT INTO `shop_item` VALUES ('20322', '73253', '1');
INSERT INTO `shop_item` VALUES ('20322', '73254', '1');
INSERT INTO `shop_item` VALUES ('20322', '73255', '1');
INSERT INTO `shop_item` VALUES ('20322', '73256', '1');
INSERT INTO `shop_item` VALUES ('20322', '73257', '1');
INSERT INTO `shop_item` VALUES ('20322', '73258', '1');
INSERT INTO `shop_item` VALUES ('20322', '73259', '1');
INSERT INTO `shop_item` VALUES ('20322', '75201', '1');
INSERT INTO `shop_item` VALUES ('20322', '75202', '1');
INSERT INTO `shop_item` VALUES ('20322', '75203', '1');
INSERT INTO `shop_item` VALUES ('20322', '75204', '1');
INSERT INTO `shop_item` VALUES ('20322', '75205', '1');
INSERT INTO `shop_item` VALUES ('20322', '75206', '1');
INSERT INTO `shop_item` VALUES ('20322', '75207', '1');
INSERT INTO `shop_item` VALUES ('20322', '75208', '1');
INSERT INTO `shop_item` VALUES ('20322', '75209', '1');
INSERT INTO `shop_item` VALUES ('20322', '75210', '1');
INSERT INTO `shop_item` VALUES ('20322', '75211', '1');
INSERT INTO `shop_item` VALUES ('20322', '75212', '1');
INSERT INTO `shop_item` VALUES ('20324', '74501', '1');
INSERT INTO `shop_item` VALUES ('20324', '74502', '1');
INSERT INTO `shop_item` VALUES ('20324', '74503', '1');
INSERT INTO `shop_item` VALUES ('20324', '74504', '1');
INSERT INTO `shop_item` VALUES ('20324', '74505', '1');
INSERT INTO `shop_item` VALUES ('20324', '74506', '1');
INSERT INTO `shop_item` VALUES ('20324', '74507', '1');
INSERT INTO `shop_item` VALUES ('20324', '74508', '1');
INSERT INTO `shop_item` VALUES ('20324', '74509', '1');
INSERT INTO `shop_item` VALUES ('20324', '74510', '1');
INSERT INTO `shop_item` VALUES ('20324', '74511', '1');
INSERT INTO `shop_item` VALUES ('20324', '74512', '1');
INSERT INTO `shop_item` VALUES ('20324', '75401', '1');
INSERT INTO `shop_item` VALUES ('20324', '75402', '1');
INSERT INTO `shop_item` VALUES ('20324', '75403', '1');
INSERT INTO `shop_item` VALUES ('20324', '75404', '1');
INSERT INTO `shop_item` VALUES ('20324', '75405', '1');
INSERT INTO `shop_item` VALUES ('20324', '75406', '1');
INSERT INTO `shop_item` VALUES ('20324', '75407', '1');
INSERT INTO `shop_item` VALUES ('20324', '75408', '1');
INSERT INTO `shop_item` VALUES ('20324', '75409', '1');
INSERT INTO `shop_item` VALUES ('20324', '75410', '1');
INSERT INTO `shop_item` VALUES ('20324', '75411', '1');
INSERT INTO `shop_item` VALUES ('20324', '75412', '1');
INSERT INTO `shop_item` VALUES ('20326', '74751', '1');
INSERT INTO `shop_item` VALUES ('20326', '74752', '1');
INSERT INTO `shop_item` VALUES ('20326', '74753', '1');
INSERT INTO `shop_item` VALUES ('20326', '74754', '1');
INSERT INTO `shop_item` VALUES ('20326', '74755', '1');
INSERT INTO `shop_item` VALUES ('20326', '74756', '1');
INSERT INTO `shop_item` VALUES ('20326', '74757', '1');
INSERT INTO `shop_item` VALUES ('20326', '74758', '1');
INSERT INTO `shop_item` VALUES ('20326', '74759', '1');
INSERT INTO `shop_item` VALUES ('20326', '74760', '1');
INSERT INTO `shop_item` VALUES ('20326', '74761', '1');
INSERT INTO `shop_item` VALUES ('20326', '75601', '1');
INSERT INTO `shop_item` VALUES ('20326', '75602', '1');
INSERT INTO `shop_item` VALUES ('20326', '75603', '1');
INSERT INTO `shop_item` VALUES ('20326', '75604', '1');
INSERT INTO `shop_item` VALUES ('20326', '75605', '1');
INSERT INTO `shop_item` VALUES ('20326', '75606', '1');
INSERT INTO `shop_item` VALUES ('20326', '75607', '1');
INSERT INTO `shop_item` VALUES ('20326', '75608', '1');
INSERT INTO `shop_item` VALUES ('20326', '75609', '1');
INSERT INTO `shop_item` VALUES ('20326', '75610', '1');
INSERT INTO `shop_item` VALUES ('20326', '75611', '1');
INSERT INTO `shop_item` VALUES ('20326', '75612', '1');
INSERT INTO `shop_item` VALUES ('20340', '73001', '1');
INSERT INTO `shop_item` VALUES ('20340', '73002', '1');
INSERT INTO `shop_item` VALUES ('20340', '73003', '1');
INSERT INTO `shop_item` VALUES ('20340', '73004', '1');
INSERT INTO `shop_item` VALUES ('20340', '73005', '1');
INSERT INTO `shop_item` VALUES ('20340', '73006', '1');
INSERT INTO `shop_item` VALUES ('20340', '73007', '1');
INSERT INTO `shop_item` VALUES ('20340', '73008', '1');
INSERT INTO `shop_item` VALUES ('20340', '73009', '1');
INSERT INTO `shop_item` VALUES ('20340', '73010', '1');
INSERT INTO `shop_item` VALUES ('20340', '73011', '1');
INSERT INTO `shop_item` VALUES ('20340', '73012', '1');
INSERT INTO `shop_item` VALUES ('20340', '75001', '1');
INSERT INTO `shop_item` VALUES ('20340', '75002', '1');
INSERT INTO `shop_item` VALUES ('20340', '75003', '1');
INSERT INTO `shop_item` VALUES ('20340', '75004', '1');
INSERT INTO `shop_item` VALUES ('20340', '75005', '1');
INSERT INTO `shop_item` VALUES ('20340', '75006', '1');
INSERT INTO `shop_item` VALUES ('20340', '75007', '1');
INSERT INTO `shop_item` VALUES ('20340', '75008', '1');
INSERT INTO `shop_item` VALUES ('20342', '73251', '1');
INSERT INTO `shop_item` VALUES ('20342', '73252', '1');
INSERT INTO `shop_item` VALUES ('20342', '73253', '1');
INSERT INTO `shop_item` VALUES ('20342', '73254', '1');
INSERT INTO `shop_item` VALUES ('20342', '73255', '1');
INSERT INTO `shop_item` VALUES ('20342', '73256', '1');
INSERT INTO `shop_item` VALUES ('20342', '73257', '1');
INSERT INTO `shop_item` VALUES ('20342', '73258', '1');
INSERT INTO `shop_item` VALUES ('20342', '73259', '1');
INSERT INTO `shop_item` VALUES ('20342', '75201', '1');
INSERT INTO `shop_item` VALUES ('20342', '75202', '1');
INSERT INTO `shop_item` VALUES ('20342', '75203', '1');
INSERT INTO `shop_item` VALUES ('20342', '75204', '1');
INSERT INTO `shop_item` VALUES ('20342', '75205', '1');
INSERT INTO `shop_item` VALUES ('20342', '75206', '1');
INSERT INTO `shop_item` VALUES ('20342', '75207', '1');
INSERT INTO `shop_item` VALUES ('20342', '75208', '1');
INSERT INTO `shop_item` VALUES ('20342', '75209', '1');
INSERT INTO `shop_item` VALUES ('20342', '75210', '1');
INSERT INTO `shop_item` VALUES ('20342', '75211', '1');
INSERT INTO `shop_item` VALUES ('20342', '75212', '1');
INSERT INTO `shop_item` VALUES ('20344', '74501', '1');
INSERT INTO `shop_item` VALUES ('20344', '74502', '1');
INSERT INTO `shop_item` VALUES ('20344', '74503', '1');
INSERT INTO `shop_item` VALUES ('20344', '74504', '1');
INSERT INTO `shop_item` VALUES ('20344', '74505', '1');
INSERT INTO `shop_item` VALUES ('20344', '74506', '1');
INSERT INTO `shop_item` VALUES ('20344', '74507', '1');
INSERT INTO `shop_item` VALUES ('20344', '74508', '1');
INSERT INTO `shop_item` VALUES ('20344', '74509', '1');
INSERT INTO `shop_item` VALUES ('20344', '74510', '1');
INSERT INTO `shop_item` VALUES ('20344', '74511', '1');
INSERT INTO `shop_item` VALUES ('20344', '74512', '1');
INSERT INTO `shop_item` VALUES ('20344', '75401', '1');
INSERT INTO `shop_item` VALUES ('20344', '75402', '1');
INSERT INTO `shop_item` VALUES ('20344', '75403', '1');
INSERT INTO `shop_item` VALUES ('20344', '75404', '1');
INSERT INTO `shop_item` VALUES ('20344', '75405', '1');
INSERT INTO `shop_item` VALUES ('20344', '75406', '1');
INSERT INTO `shop_item` VALUES ('20344', '75407', '1');
INSERT INTO `shop_item` VALUES ('20344', '75408', '1');
INSERT INTO `shop_item` VALUES ('20344', '75409', '1');
INSERT INTO `shop_item` VALUES ('20344', '75410', '1');
INSERT INTO `shop_item` VALUES ('20344', '75411', '1');
INSERT INTO `shop_item` VALUES ('20344', '75412', '1');
INSERT INTO `shop_item` VALUES ('20346', '74751', '1');
INSERT INTO `shop_item` VALUES ('20346', '74752', '1');
INSERT INTO `shop_item` VALUES ('20346', '74753', '1');
INSERT INTO `shop_item` VALUES ('20346', '74754', '1');
INSERT INTO `shop_item` VALUES ('20346', '74755', '1');
INSERT INTO `shop_item` VALUES ('20346', '74756', '1');
INSERT INTO `shop_item` VALUES ('20346', '74757', '1');
INSERT INTO `shop_item` VALUES ('20346', '74758', '1');
INSERT INTO `shop_item` VALUES ('20346', '74759', '1');
INSERT INTO `shop_item` VALUES ('20346', '74760', '1');
INSERT INTO `shop_item` VALUES ('20346', '74761', '1');
INSERT INTO `shop_item` VALUES ('20346', '75601', '1');
INSERT INTO `shop_item` VALUES ('20346', '75602', '1');
INSERT INTO `shop_item` VALUES ('20346', '75603', '1');
INSERT INTO `shop_item` VALUES ('20346', '75604', '1');
INSERT INTO `shop_item` VALUES ('20346', '75605', '1');
INSERT INTO `shop_item` VALUES ('20346', '75606', '1');
INSERT INTO `shop_item` VALUES ('20346', '75607', '1');
INSERT INTO `shop_item` VALUES ('20346', '75608', '1');
INSERT INTO `shop_item` VALUES ('20346', '75609', '1');
INSERT INTO `shop_item` VALUES ('20346', '75610', '1');
INSERT INTO `shop_item` VALUES ('20346', '75611', '1');
INSERT INTO `shop_item` VALUES ('20346', '75612', '1');
INSERT INTO `shop_item` VALUES ('20359', '30006', '1');
INSERT INTO `shop_item` VALUES ('20359', '30015', '1');
INSERT INTO `shop_item` VALUES ('20359', '30047', '1');
INSERT INTO `shop_item` VALUES ('20359', '30050', '1');
INSERT INTO `shop_item` VALUES ('20359', '30165', '1');
INSERT INTO `shop_item` VALUES ('20359', '30166', '1');
INSERT INTO `shop_item` VALUES ('20359', '30167', '1');
INSERT INTO `shop_item` VALUES ('20359', '30168', '1');
INSERT INTO `shop_item` VALUES ('20359', '30220', '1');
INSERT INTO `shop_item` VALUES ('20359', '30221', '1');
INSERT INTO `shop_item` VALUES ('20359', '30222', '1');
INSERT INTO `shop_item` VALUES ('20359', '30223', '1');
INSERT INTO `shop_item` VALUES ('20359', '30224', '1');
INSERT INTO `shop_item` VALUES ('20359', '30225', '1');
INSERT INTO `shop_item` VALUES ('20359', '30226', '1');
INSERT INTO `shop_item` VALUES ('20359', '30227', '1');