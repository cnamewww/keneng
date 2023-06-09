/*
Navicat MySQL Data Transfer

Source Server         : A
Source Server Version : 50542
Source Host           : localhost:3306
Source Database       : ss

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-04-11 21:53:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `classno` varchar(8) NOT NULL DEFAULT '',
  `classname` varchar(16) DEFAULT NULL,
  `speciality` longtext,
  `inyear` varchar(4) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `header` varchar(8) DEFAULT NULL,
  `deptno` varchar(3) DEFAULT NULL,
  `monitor` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`classno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES ('20060101', '2006级电子1班   ', '机电一体化', '2006', '56', '王俊杰  ', 'd01', null);
INSERT INTO `class` VALUES ('20070101', '2007级电子1班   ', '机电一体化', '2007', '33', '高金玉  ', 'd01', null);
INSERT INTO `class` VALUES ('20070201', '2007级计算机1班 ', '计算机应用技术', '2007', '42', '马丽丽  ', 'd02', null);
INSERT INTO `class` VALUES ('20070301', '2007级软件1班   ', '计算机网络技术', '2007', '49', '张兴科  ', 'd03', '袁志    ');
INSERT INTO `class` VALUES ('20070302', '2007级软件2班   ', '计算机网络技术', '2007', '48', '孟秀锦  ', 'd03', '刘秋杰  ');
INSERT INTO `class` VALUES ('20070303', '2007级软件3班   ', '计算机网络技术', '2007', '48', '任石    ', 'd03', '袁得志  ');
INSERT INTO `class` VALUES ('20070304', '2007级软件4班   ', '软件技术', '2007', '47', '武洪萍  ', 'd03', '滕子漳  ');
INSERT INTO `class` VALUES ('20070305', '2007级软件5班   ', '动漫设计', '2007', '48', '王国强  ', 'd03', '王进勇  ');
INSERT INTO `class` VALUES ('20070306', '2007级软件6班   ', '游戏设计', '2007', '39', '张云涛  ', 'd03', '尹珂    ');
INSERT INTO `class` VALUES ('20070307', '2007级软件7班   ', '网络系统管理', '2007', '22', '刘信杰  ', 'd03', '武永杰  ');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` varchar(4) NOT NULL DEFAULT '',
  `cname` longtext,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('a01 ', '大学英语');
INSERT INTO `course` VALUES ('a02 ', '高等数学');
INSERT INTO `course` VALUES ('a03 ', '思想品德教育');
INSERT INTO `course` VALUES ('a04 ', '法律基础');
INSERT INTO `course` VALUES ('b01 ', '电工基础');
INSERT INTO `course` VALUES ('b02 ', '电子技术基础');
INSERT INTO `course` VALUES ('b03 ', '电子线路基础');
INSERT INTO `course` VALUES ('c01 ', '计算机文化基础');
INSERT INTO `course` VALUES ('c02 ', 'C语言程序设计与数据结构');
INSERT INTO `course` VALUES ('c03 ', '软件工程');
INSERT INTO `course` VALUES ('c04 ', 'JAVA程序设计基础');
INSERT INTO `course` VALUES ('c05 ', 'JAVA高级程序设计');
INSERT INTO `course` VALUES ('c06 ', '数据库原理及应用');
INSERT INTO `course` VALUES ('c07 ', '计算机网络技术');
INSERT INTO `course` VALUES ('c08 ', '网页制作技术');
INSERT INTO `course` VALUES ('c09 ', 'JAVA项目实训');
INSERT INTO `course` VALUES ('c10 ', 'JSP程序设计');
INSERT INTO `course` VALUES ('c11 ', '计算机组装与维修');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `deptno` varchar(3) NOT NULL DEFAULT '',
  `deptname` varchar(20) DEFAULT NULL,
  `deptheader` varchar(8) DEFAULT NULL,
  `office` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('d01', '电子工程系          ', '张伟    ', '办公楼114           ');
INSERT INTO `department` VALUES ('d02', '计算机工程系        ', '王兴宝  ', '办公楼118           ');
INSERT INTO `department` VALUES ('d03', '软件工程系          ', '张学金  ', '东教学楼418         ');
INSERT INTO `department` VALUES ('d04', '信息工程系          ', '赵华增  ', '办公楼401           ');
INSERT INTO `department` VALUES ('d05', '社科艺术系          ', '高秋萍  ', '办公楼218           ');
INSERT INTO `department` VALUES ('d06', '基础部              ', '孙霞    ', '办公楼206           ');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `sno` varchar(10) NOT NULL DEFAULT '',
  `cno` varchar(4) NOT NULL DEFAULT '',
  `degree` decimal(28,0) DEFAULT NULL,
  PRIMARY KEY (`sno`,`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES ('2007010104', 'a01 ', '82');
INSERT INTO `sc` VALUES ('2007010104', 'a02 ', '83');
INSERT INTO `sc` VALUES ('2007010104', 'a03 ', '78');
INSERT INTO `sc` VALUES ('2007010105', 'a01 ', '92');
INSERT INTO `sc` VALUES ('2007010105', 'a02 ', '88');
INSERT INTO `sc` VALUES ('2007010105', 'a03 ', '83');
INSERT INTO `sc` VALUES ('2007010106', 'a01 ', '96');
INSERT INTO `sc` VALUES ('2007010106', 'a02 ', '92');
INSERT INTO `sc` VALUES ('2007010106', 'a03 ', '90');
INSERT INTO `sc` VALUES ('2007010107', 'a01 ', '73');
INSERT INTO `sc` VALUES ('2007010107', 'a02 ', '95');
INSERT INTO `sc` VALUES ('2007010107', 'a03 ', '88');
INSERT INTO `sc` VALUES ('2007010108', 'a01 ', '64');
INSERT INTO `sc` VALUES ('2007010108', 'a02 ', '95');
INSERT INTO `sc` VALUES ('2007010108', 'a03 ', '60');
INSERT INTO `sc` VALUES ('2007010109', 'a01 ', '83');
INSERT INTO `sc` VALUES ('2007010109', 'a02 ', '86');
INSERT INTO `sc` VALUES ('2007010109', 'a03 ', '90');
INSERT INTO `sc` VALUES ('2007010110', 'a01 ', '77');
INSERT INTO `sc` VALUES ('2007010110', 'a02 ', '63');
INSERT INTO `sc` VALUES ('2007010110', 'a03 ', '74');
INSERT INTO `sc` VALUES ('2007010111', 'a01 ', '72');
INSERT INTO `sc` VALUES ('2007010111', 'a02 ', '89');
INSERT INTO `sc` VALUES ('2007010111', 'a03 ', '84');
INSERT INTO `sc` VALUES ('2007010112', 'a01 ', '67');
INSERT INTO `sc` VALUES ('2007010112', 'a02 ', '88');
INSERT INTO `sc` VALUES ('2007010112', 'a03 ', '91');
INSERT INTO `sc` VALUES ('2007010113', 'a01 ', '69');
INSERT INTO `sc` VALUES ('2007010113', 'a02 ', '96');
INSERT INTO `sc` VALUES ('2007010113', 'a03 ', '89');
INSERT INTO `sc` VALUES ('2007010114', 'a01 ', '84');
INSERT INTO `sc` VALUES ('2007010114', 'a02 ', '89');
INSERT INTO `sc` VALUES ('2007010114', 'a03 ', '88');
INSERT INTO `sc` VALUES ('2007010115', 'a01 ', '94');
INSERT INTO `sc` VALUES ('2007010115', 'a02 ', '95');
INSERT INTO `sc` VALUES ('2007010115', 'a03 ', '87');
INSERT INTO `sc` VALUES ('2007010116', 'a01 ', '57');
INSERT INTO `sc` VALUES ('2007010116', 'a02 ', '91');
INSERT INTO `sc` VALUES ('2007010116', 'a03 ', '90');
INSERT INTO `sc` VALUES ('2007010117', 'a01 ', '88');
INSERT INTO `sc` VALUES ('2007010117', 'a02 ', '93');
INSERT INTO `sc` VALUES ('2007010117', 'a03 ', '79');
INSERT INTO `sc` VALUES ('2007010118', 'a01 ', '96');
INSERT INTO `sc` VALUES ('2007010118', 'a02 ', '82');
INSERT INTO `sc` VALUES ('2007010118', 'a03 ', '86');
INSERT INTO `sc` VALUES ('2007010119', 'a01 ', '55');
INSERT INTO `sc` VALUES ('2007010119', 'a02 ', '83');
INSERT INTO `sc` VALUES ('2007010119', 'a03 ', '77');
INSERT INTO `sc` VALUES ('2007010120', 'a01 ', '90');
INSERT INTO `sc` VALUES ('2007010120', 'a02 ', '97');
INSERT INTO `sc` VALUES ('2007010120', 'a03 ', '90');
INSERT INTO `sc` VALUES ('2007010121', 'a01 ', '44');
INSERT INTO `sc` VALUES ('2007010121', 'a02 ', '56');
INSERT INTO `sc` VALUES ('2007010121', 'a03 ', '60');
INSERT INTO `sc` VALUES ('2007010122', 'a01 ', '92');
INSERT INTO `sc` VALUES ('2007010122', 'a02 ', '93');
INSERT INTO `sc` VALUES ('2007010122', 'a03 ', '89');
INSERT INTO `sc` VALUES ('2007010123', 'a01 ', '81');
INSERT INTO `sc` VALUES ('2007010123', 'a02 ', '87');
INSERT INTO `sc` VALUES ('2007010123', 'a03 ', '82');
INSERT INTO `sc` VALUES ('2007010124', 'a01 ', '81');
INSERT INTO `sc` VALUES ('2007010124', 'a02 ', '93');
INSERT INTO `sc` VALUES ('2007010124', 'a03 ', '86');
INSERT INTO `sc` VALUES ('2007010125', 'a01 ', '92');
INSERT INTO `sc` VALUES ('2007010125', 'a02 ', '87');
INSERT INTO `sc` VALUES ('2007010125', 'a03 ', '90');
INSERT INTO `sc` VALUES ('2007010126', 'a01 ', '67');
INSERT INTO `sc` VALUES ('2007010126', 'a02 ', '88');
INSERT INTO `sc` VALUES ('2007010126', 'a03 ', '88');
INSERT INTO `sc` VALUES ('2007010127', 'a01 ', '87');
INSERT INTO `sc` VALUES ('2007010127', 'a02 ', '89');
INSERT INTO `sc` VALUES ('2007010127', 'a03 ', '89');
INSERT INTO `sc` VALUES ('2007010128', 'a01 ', '87');
INSERT INTO `sc` VALUES ('2007010128', 'a02 ', '86');
INSERT INTO `sc` VALUES ('2007010128', 'a03 ', '81');
INSERT INTO `sc` VALUES ('2007010129', 'a01 ', '85');
INSERT INTO `sc` VALUES ('2007010129', 'a02 ', '93');
INSERT INTO `sc` VALUES ('2007010129', 'a03 ', '91');
INSERT INTO `sc` VALUES ('2007010130', 'a01 ', '91');
INSERT INTO `sc` VALUES ('2007010130', 'a02 ', '88');
INSERT INTO `sc` VALUES ('2007010130', 'a03 ', '90');
INSERT INTO `sc` VALUES ('2007010131', 'a01 ', '86');
INSERT INTO `sc` VALUES ('2007010131', 'a02 ', '84');
INSERT INTO `sc` VALUES ('2007010131', 'a03 ', '93');
INSERT INTO `sc` VALUES ('2007030101', 'a01 ', '97');
INSERT INTO `sc` VALUES ('2007030101', 'a02 ', '85');
INSERT INTO `sc` VALUES ('2007030101', 'c01 ', '83');
INSERT INTO `sc` VALUES ('2007030101', 'c02 ', '89');
INSERT INTO `sc` VALUES ('2007030102', 'a01 ', null);
INSERT INTO `sc` VALUES ('2007030102', 'a02 ', '86');
INSERT INTO `sc` VALUES ('2007030102', 'c01 ', '83');
INSERT INTO `sc` VALUES ('2007030102', 'c02 ', '94');
INSERT INTO `sc` VALUES ('2007030103', 'a01 ', '76');
INSERT INTO `sc` VALUES ('2007030103', 'a02 ', '89');
INSERT INTO `sc` VALUES ('2007030103', 'c01 ', '90');
INSERT INTO `sc` VALUES ('2007030103', 'c02 ', '96');
INSERT INTO `sc` VALUES ('2007030104', 'a01 ', '92');
INSERT INTO `sc` VALUES ('2007030104', 'a02 ', '83');
INSERT INTO `sc` VALUES ('2007030104', 'c01 ', '88');
INSERT INTO `sc` VALUES ('2007030104', 'c02 ', '97');
INSERT INTO `sc` VALUES ('2007030105', 'a01 ', '93');
INSERT INTO `sc` VALUES ('2007030105', 'a02 ', '92');
INSERT INTO `sc` VALUES ('2007030105', 'c01 ', '77');
INSERT INTO `sc` VALUES ('2007030105', 'c02 ', '93');
INSERT INTO `sc` VALUES ('2007030106', 'a01 ', '76');
INSERT INTO `sc` VALUES ('2007030106', 'a02 ', '90');
INSERT INTO `sc` VALUES ('2007030106', 'c01 ', '87');
INSERT INTO `sc` VALUES ('2007030106', 'c02 ', '92');
INSERT INTO `sc` VALUES ('2007030107', 'a01 ', '93');
INSERT INTO `sc` VALUES ('2007030107', 'a02 ', '84');
INSERT INTO `sc` VALUES ('2007030107', 'c01 ', '82');
INSERT INTO `sc` VALUES ('2007030107', 'c02 ', '90');
INSERT INTO `sc` VALUES ('2007030108', 'a01 ', '87');
INSERT INTO `sc` VALUES ('2007030108', 'a02 ', '90');
INSERT INTO `sc` VALUES ('2007030108', 'c01 ', '72');
INSERT INTO `sc` VALUES ('2007030108', 'c02 ', '90');
INSERT INTO `sc` VALUES ('2007030109', 'a01 ', '83');
INSERT INTO `sc` VALUES ('2007030109', 'a02 ', '92');
INSERT INTO `sc` VALUES ('2007030109', 'c01 ', '71');
INSERT INTO `sc` VALUES ('2007030109', 'c02 ', '86');
INSERT INTO `sc` VALUES ('2007030110', 'a01 ', '77');
INSERT INTO `sc` VALUES ('2007030110', 'a02 ', '90');
INSERT INTO `sc` VALUES ('2007030110', 'c01 ', '75');
INSERT INTO `sc` VALUES ('2007030110', 'c02 ', '94');
INSERT INTO `sc` VALUES ('2007030111', 'a01 ', '87');
INSERT INTO `sc` VALUES ('2007030111', 'a02 ', '84');
INSERT INTO `sc` VALUES ('2007030111', 'c01 ', '81');
INSERT INTO `sc` VALUES ('2007030111', 'c02 ', '85');
INSERT INTO `sc` VALUES ('2007030112', 'a01 ', '97');
INSERT INTO `sc` VALUES ('2007030112', 'a02 ', '66');
INSERT INTO `sc` VALUES ('2007030112', 'c01 ', '87');
INSERT INTO `sc` VALUES ('2007030112', 'c02 ', '82');
INSERT INTO `sc` VALUES ('2007030113', 'a01 ', '71');
INSERT INTO `sc` VALUES ('2007030113', 'a02 ', '91');
INSERT INTO `sc` VALUES ('2007030113', 'c01 ', '85');
INSERT INTO `sc` VALUES ('2007030113', 'c02 ', '96');
INSERT INTO `sc` VALUES ('2007030114', 'a01 ', '83');
INSERT INTO `sc` VALUES ('2007030114', 'a02 ', '67');
INSERT INTO `sc` VALUES ('2007030114', 'c01 ', '87');
INSERT INTO `sc` VALUES ('2007030114', 'c02 ', '95');
INSERT INTO `sc` VALUES ('2007030115', 'a01 ', '76');
INSERT INTO `sc` VALUES ('2007030115', 'a02 ', '88');
INSERT INTO `sc` VALUES ('2007030115', 'c01 ', '67');
INSERT INTO `sc` VALUES ('2007030115', 'c02 ', '92');
INSERT INTO `sc` VALUES ('2007030116', 'a01 ', '89');
INSERT INTO `sc` VALUES ('2007030116', 'a02 ', '86');
INSERT INTO `sc` VALUES ('2007030116', 'c01 ', '74');
INSERT INTO `sc` VALUES ('2007030116', 'c02 ', '92');
INSERT INTO `sc` VALUES ('2007030117', 'a01 ', '84');
INSERT INTO `sc` VALUES ('2007030117', 'a02 ', '68');
INSERT INTO `sc` VALUES ('2007030117', 'c01 ', '81');
INSERT INTO `sc` VALUES ('2007030117', 'c02 ', '89');
INSERT INTO `sc` VALUES ('2007030118', 'a01 ', '93');
INSERT INTO `sc` VALUES ('2007030118', 'a02 ', '85');
INSERT INTO `sc` VALUES ('2007030118', 'c01 ', '77');
INSERT INTO `sc` VALUES ('2007030118', 'c02 ', '82');
INSERT INTO `sc` VALUES ('2007030119', 'a01 ', '74');
INSERT INTO `sc` VALUES ('2007030119', 'a02 ', '92');
INSERT INTO `sc` VALUES ('2007030119', 'c01 ', '77');
INSERT INTO `sc` VALUES ('2007030119', 'c02 ', '75');
INSERT INTO `sc` VALUES ('2007030120', 'a01 ', '70');
INSERT INTO `sc` VALUES ('2007030120', 'a02 ', '91');
INSERT INTO `sc` VALUES ('2007030120', 'c01 ', '81');
INSERT INTO `sc` VALUES ('2007030120', 'c02 ', '87');
INSERT INTO `sc` VALUES ('2007030121', 'a01 ', '80');
INSERT INTO `sc` VALUES ('2007030121', 'a02 ', '85');
INSERT INTO `sc` VALUES ('2007030121', 'c01 ', '81');
INSERT INTO `sc` VALUES ('2007030121', 'c02 ', '80');
INSERT INTO `sc` VALUES ('2007030122', 'a01 ', '87');
INSERT INTO `sc` VALUES ('2007030122', 'a02 ', '78');
INSERT INTO `sc` VALUES ('2007030122', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030122', 'c02 ', '83');
INSERT INTO `sc` VALUES ('2007030123', 'a01 ', '69');
INSERT INTO `sc` VALUES ('2007030123', 'a02 ', '84');
INSERT INTO `sc` VALUES ('2007030123', 'c01 ', '73');
INSERT INTO `sc` VALUES ('2007030123', 'c02 ', '93');
INSERT INTO `sc` VALUES ('2007030124', 'a01 ', '73');
INSERT INTO `sc` VALUES ('2007030124', 'a02 ', '78');
INSERT INTO `sc` VALUES ('2007030124', 'c01 ', '85');
INSERT INTO `sc` VALUES ('2007030124', 'c02 ', '92');
INSERT INTO `sc` VALUES ('2007030125', 'a01 ', '64');
INSERT INTO `sc` VALUES ('2007030125', 'a02 ', '84');
INSERT INTO `sc` VALUES ('2007030125', 'c01 ', '83');
INSERT INTO `sc` VALUES ('2007030125', 'c02 ', '91');
INSERT INTO `sc` VALUES ('2007030126', 'a01 ', '83');
INSERT INTO `sc` VALUES ('2007030126', 'a02 ', null);
INSERT INTO `sc` VALUES ('2007030126', 'c01 ', '89');
INSERT INTO `sc` VALUES ('2007030126', 'c02 ', '88');
INSERT INTO `sc` VALUES ('2007030127', 'a01 ', '65');
INSERT INTO `sc` VALUES ('2007030127', 'a02 ', '82');
INSERT INTO `sc` VALUES ('2007030127', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030127', 'c02 ', '85');
INSERT INTO `sc` VALUES ('2007030128', 'a01 ', '80');
INSERT INTO `sc` VALUES ('2007030128', 'a02 ', '79');
INSERT INTO `sc` VALUES ('2007030128', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030128', 'c02 ', '76');
INSERT INTO `sc` VALUES ('2007030129', 'a01 ', '68');
INSERT INTO `sc` VALUES ('2007030129', 'a02 ', '83');
INSERT INTO `sc` VALUES ('2007030129', 'c01 ', '76');
INSERT INTO `sc` VALUES ('2007030129', 'c02 ', '88');
INSERT INTO `sc` VALUES ('2007030130', 'a01 ', '73');
INSERT INTO `sc` VALUES ('2007030130', 'a02 ', '82');
INSERT INTO `sc` VALUES ('2007030130', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030130', 'c02 ', '81');
INSERT INTO `sc` VALUES ('2007030131', 'a01 ', '66');
INSERT INTO `sc` VALUES ('2007030131', 'a02 ', '80');
INSERT INTO `sc` VALUES ('2007030131', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030131', 'c02 ', '88');
INSERT INTO `sc` VALUES ('2007030132', 'a01 ', '82');
INSERT INTO `sc` VALUES ('2007030132', 'a02 ', '83');
INSERT INTO `sc` VALUES ('2007030132', 'c01 ', '73');
INSERT INTO `sc` VALUES ('2007030132', 'c02 ', '82');
INSERT INTO `sc` VALUES ('2007030133', 'a01 ', '85');
INSERT INTO `sc` VALUES ('2007030133', 'a02 ', '67');
INSERT INTO `sc` VALUES ('2007030133', 'c01 ', '81');
INSERT INTO `sc` VALUES ('2007030133', 'c02 ', '82');
INSERT INTO `sc` VALUES ('2007030134', 'a01 ', '64');
INSERT INTO `sc` VALUES ('2007030134', 'a02 ', '80');
INSERT INTO `sc` VALUES ('2007030134', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030134', 'c02 ', '71');
INSERT INTO `sc` VALUES ('2007030135', 'a01 ', '69');
INSERT INTO `sc` VALUES ('2007030135', 'a02 ', '90');
INSERT INTO `sc` VALUES ('2007030135', 'c01 ', '76');
INSERT INTO `sc` VALUES ('2007030135', 'c02 ', '76');
INSERT INTO `sc` VALUES ('2007030136', 'a01 ', '83');
INSERT INTO `sc` VALUES ('2007030136', 'a02 ', '65');
INSERT INTO `sc` VALUES ('2007030136', 'c01 ', null);
INSERT INTO `sc` VALUES ('2007030136', 'c02 ', '75');
INSERT INTO `sc` VALUES ('2007030137', 'a01 ', '69');
INSERT INTO `sc` VALUES ('2007030137', 'a02 ', '86');
INSERT INTO `sc` VALUES ('2007030137', 'c01 ', '74');
INSERT INTO `sc` VALUES ('2007030137', 'c02 ', '82');
INSERT INTO `sc` VALUES ('2007030138', 'a01 ', '60');
INSERT INTO `sc` VALUES ('2007030138', 'a02 ', '80');
INSERT INTO `sc` VALUES ('2007030138', 'c01 ', '80');
INSERT INTO `sc` VALUES ('2007030138', 'c02 ', '86');
INSERT INTO `sc` VALUES ('2007030139', 'a01 ', '75');
INSERT INTO `sc` VALUES ('2007030139', 'a02 ', '66');
INSERT INTO `sc` VALUES ('2007030139', 'c01 ', '80');
INSERT INTO `sc` VALUES ('2007030139', 'c02 ', '88');
INSERT INTO `sc` VALUES ('2007030140', 'a01 ', '70');
INSERT INTO `sc` VALUES ('2007030140', 'a02 ', '87');
INSERT INTO `sc` VALUES ('2007030140', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030140', 'c02 ', '76');
INSERT INTO `sc` VALUES ('2007030141', 'a01 ', '75');
INSERT INTO `sc` VALUES ('2007030141', 'a02 ', '63');
INSERT INTO `sc` VALUES ('2007030141', 'c01 ', '87');
INSERT INTO `sc` VALUES ('2007030141', 'c02 ', '85');
INSERT INTO `sc` VALUES ('2007030142', 'a01 ', '63');
INSERT INTO `sc` VALUES ('2007030142', 'a02 ', '89');
INSERT INTO `sc` VALUES ('2007030142', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030142', 'c02 ', '83');
INSERT INTO `sc` VALUES ('2007030143', 'a01 ', '67');
INSERT INTO `sc` VALUES ('2007030143', 'a02 ', '77');
INSERT INTO `sc` VALUES ('2007030143', 'c01 ', '63');
INSERT INTO `sc` VALUES ('2007030143', 'c02 ', '82');
INSERT INTO `sc` VALUES ('2007030144', 'a01 ', '60');
INSERT INTO `sc` VALUES ('2007030144', 'a02 ', '77');
INSERT INTO `sc` VALUES ('2007030144', 'c01 ', '79');
INSERT INTO `sc` VALUES ('2007030144', 'c02 ', '91');
INSERT INTO `sc` VALUES ('2007030145', 'a01 ', '85');
INSERT INTO `sc` VALUES ('2007030145', 'a02 ', '79');
INSERT INTO `sc` VALUES ('2007030145', 'c01 ', '51');
INSERT INTO `sc` VALUES ('2007030145', 'c02 ', '74');
INSERT INTO `sc` VALUES ('2007030146', 'a01 ', '77');
INSERT INTO `sc` VALUES ('2007030146', 'a02 ', '84');
INSERT INTO `sc` VALUES ('2007030146', 'c01 ', '73');
INSERT INTO `sc` VALUES ('2007030146', 'c02 ', '71');
INSERT INTO `sc` VALUES ('2007030147', 'a01 ', '71');
INSERT INTO `sc` VALUES ('2007030147', 'a02 ', '79');
INSERT INTO `sc` VALUES ('2007030147', 'c01 ', '63');
INSERT INTO `sc` VALUES ('2007030147', 'c02 ', '87');
INSERT INTO `sc` VALUES ('2007030401', 'a01 ', '97');
INSERT INTO `sc` VALUES ('2007030401', 'a03 ', '88');
INSERT INTO `sc` VALUES ('2007030401', 'c01 ', '45');
INSERT INTO `sc` VALUES ('2007030401', 'c04 ', '91');
INSERT INTO `sc` VALUES ('2007030402', 'a01 ', '90');
INSERT INTO `sc` VALUES ('2007030402', 'a03 ', '92');
INSERT INTO `sc` VALUES ('2007030402', 'c01 ', '95');
INSERT INTO `sc` VALUES ('2007030402', 'c04 ', '91');
INSERT INTO `sc` VALUES ('2007030403', 'a01 ', '97');
INSERT INTO `sc` VALUES ('2007030403', 'a03 ', '85');
INSERT INTO `sc` VALUES ('2007030403', 'c01 ', '86');
INSERT INTO `sc` VALUES ('2007030403', 'c04 ', '96');
INSERT INTO `sc` VALUES ('2007030404', 'a01 ', '98');
INSERT INTO `sc` VALUES ('2007030404', 'a03 ', '96');
INSERT INTO `sc` VALUES ('2007030404', 'c01 ', '84');
INSERT INTO `sc` VALUES ('2007030404', 'c04 ', '89');
INSERT INTO `sc` VALUES ('2007030405', 'a01 ', '96');
INSERT INTO `sc` VALUES ('2007030405', 'a03 ', '82');
INSERT INTO `sc` VALUES ('2007030405', 'c01 ', '94');
INSERT INTO `sc` VALUES ('2007030405', 'c04 ', '98');
INSERT INTO `sc` VALUES ('2007030406', 'a01 ', '92');
INSERT INTO `sc` VALUES ('2007030406', 'a03 ', '76');
INSERT INTO `sc` VALUES ('2007030406', 'c01 ', '95');
INSERT INTO `sc` VALUES ('2007030406', 'c04 ', '95');
INSERT INTO `sc` VALUES ('2007030407', 'a01 ', '95');
INSERT INTO `sc` VALUES ('2007030407', 'a03 ', '89');
INSERT INTO `sc` VALUES ('2007030407', 'c01 ', '88');
INSERT INTO `sc` VALUES ('2007030407', 'c04 ', '81');
INSERT INTO `sc` VALUES ('2007030408', 'a01 ', '96');
INSERT INTO `sc` VALUES ('2007030408', 'a03 ', '91');
INSERT INTO `sc` VALUES ('2007030408', 'c01 ', '90');
INSERT INTO `sc` VALUES ('2007030408', 'c04 ', '95');
INSERT INTO `sc` VALUES ('2007030409', 'a01 ', '95');
INSERT INTO `sc` VALUES ('2007030409', 'a03 ', '89');
INSERT INTO `sc` VALUES ('2007030409', 'c01 ', '97');
INSERT INTO `sc` VALUES ('2007030409', 'c04 ', '95');
INSERT INTO `sc` VALUES ('2007030410', 'a01 ', '87');
INSERT INTO `sc` VALUES ('2007030410', 'a03 ', '82');
INSERT INTO `sc` VALUES ('2007030410', 'c01 ', '93');
INSERT INTO `sc` VALUES ('2007030410', 'c04 ', '99');
INSERT INTO `sc` VALUES ('2007030411', 'a01 ', '93');
INSERT INTO `sc` VALUES ('2007030411', 'a03 ', '76');
INSERT INTO `sc` VALUES ('2007030411', 'c01 ', '53');
INSERT INTO `sc` VALUES ('2007030411', 'c04 ', '61');
INSERT INTO `sc` VALUES ('2007030412', 'a01 ', '84');
INSERT INTO `sc` VALUES ('2007030412', 'a03 ', '89');
INSERT INTO `sc` VALUES ('2007030412', 'c01 ', '82');
INSERT INTO `sc` VALUES ('2007030412', 'c04 ', '80');
INSERT INTO `sc` VALUES ('2007030413', 'a01 ', '94');
INSERT INTO `sc` VALUES ('2007030413', 'a03 ', '90');
INSERT INTO `sc` VALUES ('2007030413', 'c01 ', '81');
INSERT INTO `sc` VALUES ('2007030413', 'c04 ', '84');
INSERT INTO `sc` VALUES ('2007030414', 'a01 ', '91');
INSERT INTO `sc` VALUES ('2007030414', 'a03 ', '95');
INSERT INTO `sc` VALUES ('2007030414', 'c01 ', '90');
INSERT INTO `sc` VALUES ('2007030414', 'c04 ', '86');
INSERT INTO `sc` VALUES ('2007030415', 'a01 ', '95');
INSERT INTO `sc` VALUES ('2007030415', 'a03 ', '77');
INSERT INTO `sc` VALUES ('2007030415', 'c01 ', '84');
INSERT INTO `sc` VALUES ('2007030415', 'c04 ', '56');
INSERT INTO `sc` VALUES ('2007030416', 'a01 ', '87');
INSERT INTO `sc` VALUES ('2007030416', 'a03 ', '67');
INSERT INTO `sc` VALUES ('2007030416', 'c01 ', '72');
INSERT INTO `sc` VALUES ('2007030416', 'c04 ', '79');
INSERT INTO `sc` VALUES ('2007030417', 'a01 ', '93');
INSERT INTO `sc` VALUES ('2007030417', 'a03 ', '87');
INSERT INTO `sc` VALUES ('2007030417', 'c01 ', '88');
INSERT INTO `sc` VALUES ('2007030417', 'c04 ', '84');
INSERT INTO `sc` VALUES ('2007030418', 'a01 ', '94');
INSERT INTO `sc` VALUES ('2007030418', 'a03 ', '83');
INSERT INTO `sc` VALUES ('2007030418', 'c01 ', '66');
INSERT INTO `sc` VALUES ('2007030418', 'c04 ', '79');
INSERT INTO `sc` VALUES ('2007030419', 'a01 ', '95');
INSERT INTO `sc` VALUES ('2007030419', 'a03 ', '83');
INSERT INTO `sc` VALUES ('2007030419', 'c01 ', '91');
INSERT INTO `sc` VALUES ('2007030419', 'c04 ', '94');
INSERT INTO `sc` VALUES ('2007030420', 'a01 ', '87');
INSERT INTO `sc` VALUES ('2007030420', 'a03 ', '88');
INSERT INTO `sc` VALUES ('2007030420', 'c01 ', '98');
INSERT INTO `sc` VALUES ('2007030420', 'c04 ', '98');
INSERT INTO `sc` VALUES ('2007030421', 'a01 ', '90');
INSERT INTO `sc` VALUES ('2007030421', 'a03 ', null);
INSERT INTO `sc` VALUES ('2007030421', 'c01 ', '93');
INSERT INTO `sc` VALUES ('2007030421', 'c04 ', '82');
INSERT INTO `sc` VALUES ('2007030422', 'a01 ', '84');
INSERT INTO `sc` VALUES ('2007030422', 'a03 ', '67');
INSERT INTO `sc` VALUES ('2007030422', 'c01 ', '72');
INSERT INTO `sc` VALUES ('2007030422', 'c04 ', '84');
INSERT INTO `sc` VALUES ('2007030423', 'a01 ', '95');
INSERT INTO `sc` VALUES ('2007030423', 'a03 ', '75');
INSERT INTO `sc` VALUES ('2007030423', 'c01 ', '67');
INSERT INTO `sc` VALUES ('2007030423', 'c04 ', '66');
INSERT INTO `sc` VALUES ('2007030424', 'a01 ', '86');
INSERT INTO `sc` VALUES ('2007030424', 'a03 ', '87');
INSERT INTO `sc` VALUES ('2007030424', 'c01 ', '95');
INSERT INTO `sc` VALUES ('2007030424', 'c04 ', '86');
INSERT INTO `sc` VALUES ('2007030425', 'a01 ', '95');
INSERT INTO `sc` VALUES ('2007030425', 'a03 ', '80');
INSERT INTO `sc` VALUES ('2007030425', 'c01 ', '93');
INSERT INTO `sc` VALUES ('2007030425', 'c04 ', '89');
INSERT INTO `sc` VALUES ('2007030426', 'a01 ', '75');
INSERT INTO `sc` VALUES ('2007030426', 'a03 ', '81');
INSERT INTO `sc` VALUES ('2007030426', 'c01 ', '80');
INSERT INTO `sc` VALUES ('2007030426', 'c04 ', '82');
INSERT INTO `sc` VALUES ('2007030427', 'a01 ', '93');
INSERT INTO `sc` VALUES ('2007030427', 'a03 ', '78');
INSERT INTO `sc` VALUES ('2007030427', 'c01 ', '86');
INSERT INTO `sc` VALUES ('2007030427', 'c04 ', '85');
INSERT INTO `sc` VALUES ('2007030428', 'a01 ', '89');
INSERT INTO `sc` VALUES ('2007030428', 'a03 ', '83');
INSERT INTO `sc` VALUES ('2007030428', 'c01 ', '75');
INSERT INTO `sc` VALUES ('2007030428', 'c04 ', '45');
INSERT INTO `sc` VALUES ('2007030429', 'a01 ', '86');
INSERT INTO `sc` VALUES ('2007030429', 'a03 ', '78');
INSERT INTO `sc` VALUES ('2007030429', 'c01 ', '84');
INSERT INTO `sc` VALUES ('2007030429', 'c04 ', '84');
INSERT INTO `sc` VALUES ('2007030430', 'a01 ', '81');
INSERT INTO `sc` VALUES ('2007030430', 'a03 ', '85');
INSERT INTO `sc` VALUES ('2007030430', 'c01 ', '95');
INSERT INTO `sc` VALUES ('2007030430', 'c04 ', '92');
INSERT INTO `sc` VALUES ('2007030431', 'a01 ', '97');
INSERT INTO `sc` VALUES ('2007030431', 'a03 ', '72');
INSERT INTO `sc` VALUES ('2007030431', 'c01 ', null);
INSERT INTO `sc` VALUES ('2007030431', 'c04 ', '71');
INSERT INTO `sc` VALUES ('2007030432', 'a01 ', '84');
INSERT INTO `sc` VALUES ('2007030432', 'a03 ', '88');
INSERT INTO `sc` VALUES ('2007030432', 'c01 ', '87');
INSERT INTO `sc` VALUES ('2007030432', 'c04 ', '77');
INSERT INTO `sc` VALUES ('2007030433', 'a01 ', '84');
INSERT INTO `sc` VALUES ('2007030433', 'a03 ', '82');
INSERT INTO `sc` VALUES ('2007030433', 'c01 ', '83');
INSERT INTO `sc` VALUES ('2007030433', 'c04 ', '71');
INSERT INTO `sc` VALUES ('2007030434', 'a01 ', '88');
INSERT INTO `sc` VALUES ('2007030434', 'a03 ', '82');
INSERT INTO `sc` VALUES ('2007030434', 'c01 ', '95');
INSERT INTO `sc` VALUES ('2007030434', 'c04 ', '86');
INSERT INTO `sc` VALUES ('2007030435', 'a01 ', '83');
INSERT INTO `sc` VALUES ('2007030435', 'a03 ', '62');
INSERT INTO `sc` VALUES ('2007030435', 'c01 ', '55');
INSERT INTO `sc` VALUES ('2007030435', 'c04 ', '77');
INSERT INTO `sc` VALUES ('2007030436', 'a01 ', '88');
INSERT INTO `sc` VALUES ('2007030436', 'a03 ', '95');
INSERT INTO `sc` VALUES ('2007030436', 'c01 ', '96');
INSERT INTO `sc` VALUES ('2007030436', 'c04 ', '99');
INSERT INTO `sc` VALUES ('2007030437', 'a01 ', '80');
INSERT INTO `sc` VALUES ('2007030437', 'a03 ', '89');
INSERT INTO `sc` VALUES ('2007030437', 'c01 ', '80');
INSERT INTO `sc` VALUES ('2007030437', 'c04 ', '68');
INSERT INTO `sc` VALUES ('2007030438', 'a01 ', '83');
INSERT INTO `sc` VALUES ('2007030438', 'a03 ', '80');
INSERT INTO `sc` VALUES ('2007030438', 'c01 ', '60');
INSERT INTO `sc` VALUES ('2007030438', 'c04 ', '90');
INSERT INTO `sc` VALUES ('2007030439', 'a01 ', '60');
INSERT INTO `sc` VALUES ('2007030439', 'a03 ', '90');
INSERT INTO `sc` VALUES ('2007030439', 'c01 ', '97');
INSERT INTO `sc` VALUES ('2007030439', 'c04 ', '98');
INSERT INTO `sc` VALUES ('2007030440', 'a01 ', '80');
INSERT INTO `sc` VALUES ('2007030440', 'a03 ', '83');
INSERT INTO `sc` VALUES ('2007030440', 'c01 ', '96');
INSERT INTO `sc` VALUES ('2007030440', 'c04 ', '90');
INSERT INTO `sc` VALUES ('2007030441', 'a01 ', '82');
INSERT INTO `sc` VALUES ('2007030441', 'a03 ', '88');
INSERT INTO `sc` VALUES ('2007030441', 'c01 ', '94');
INSERT INTO `sc` VALUES ('2007030441', 'c04 ', '86');
INSERT INTO `sc` VALUES ('2007030442', 'a01 ', '72');
INSERT INTO `sc` VALUES ('2007030442', 'a03 ', '65');
INSERT INTO `sc` VALUES ('2007030442', 'c01 ', '66');
INSERT INTO `sc` VALUES ('2007030442', 'c04 ', '48');
INSERT INTO `sc` VALUES ('2007030443', 'a01 ', '72');
INSERT INTO `sc` VALUES ('2007030443', 'a03 ', '89');
INSERT INTO `sc` VALUES ('2007030443', 'c01 ', '87');
INSERT INTO `sc` VALUES ('2007030443', 'c04 ', '92');
INSERT INTO `sc` VALUES ('2007030444', 'a01 ', '62');
INSERT INTO `sc` VALUES ('2007030444', 'a03 ', '85');
INSERT INTO `sc` VALUES ('2007030444', 'c01 ', '95');
INSERT INTO `sc` VALUES ('2007030444', 'c04 ', '96');
INSERT INTO `sc` VALUES ('2007030445', 'a01 ', '83');
INSERT INTO `sc` VALUES ('2007030445', 'a03 ', '88');
INSERT INTO `sc` VALUES ('2007030445', 'c01 ', '83');
INSERT INTO `sc` VALUES ('2007030445', 'c04 ', '73');
INSERT INTO `sc` VALUES ('2007030446', 'a01 ', '67');
INSERT INTO `sc` VALUES ('2007030446', 'a03 ', '76');
INSERT INTO `sc` VALUES ('2007030446', 'c01 ', '83');
INSERT INTO `sc` VALUES ('2007030446', 'c04 ', '87');
INSERT INTO `sc` VALUES ('2007030447', 'a01 ', '66');
INSERT INTO `sc` VALUES ('2007030447', 'a03 ', '68');
INSERT INTO `sc` VALUES ('2007030447', 'c01 ', '84');
INSERT INTO `sc` VALUES ('2007030447', 'c04 ', '78');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sno` varchar(10) NOT NULL DEFAULT '',
  `sname` varchar(8) DEFAULT NULL,
  `ssex` varchar(2) DEFAULT NULL,
  `sphone` varchar(20) DEFAULT NULL,
  `saddress` longtext,
  `sbirthday` datetime DEFAULT NULL,
  `classno` varchar(8) DEFAULT NULL,
  `sphoto` longblob,
  `QQ` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2007010103', '王洪利  ', '男', '06328911880         ', '枣庄市中区第十八中学赵曰坤转', '1988-10-01 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010104', '邓维杰  ', '男', '05352381337         ', '烟台莱州市朱桥镇下王村', '1987-06-01 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010105', '刘高尚  ', '男', '0374-8673628        ', '河南省禹州市第二高级中学', '1987-06-06 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010106', '孙晋梅  ', '女', '06328810714         ', '枣庄山亭区山城街道东江村', '1988-12-29 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010107', '闫旭光  ', '男', '04325223785         ', '吉林省磐石市第五中学', '1987-08-12 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010108', '张忠    ', '男', '13563552228         ', '聊城阳谷县城关镇张楼村', '1988-10-09 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010109', '张楠楠  ', '女', '05368990432         ', '潍坊奎文区潍坊市委党校家属院', '1988-06-14 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010110', '李佳丽  ', '女', '053286466766        ', '青岛莱西市姜山镇兴隆庄', '1987-10-14 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010111', '杜国敏  ', '男', '05376734238         ', '济宁嘉祥县老僧堂乡南杜村58号', '1988-10-22 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010112', '苏畅    ', '男', '051685333556        ', '江苏省徐州市贾汪中学', '1989-06-25 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010113', '陈继亮  ', '男', '05305731146         ', '菏泽牡丹区菏泽三中高三级部', '1987-10-22 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010114', '单宝超  ', '男', '05366531128         ', '潍坊诸城市诸城市第六中学', '1988-11-18 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010115', '周游    ', '女', '0416-2651008        ', '辽宁省锦州市北镇市第三高级中学', '1905-06-14 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010116', '庞国绪  ', '男', '053713405373631     ', '济宁汶上县郭楼镇郝营村354号', '1986-04-06 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010117', '范品    ', '女', '05303526998         ', '菏泽曹县孙老家镇西村', '1989-08-01 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010118', '范梅娟  ', '女', '053282218404        ', '青岛胶州市常州路668号', '1988-10-19 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010119', '金羽    ', '男', '                    ', '辽宁省铁岭市教师进修学院附属高级中学', '1905-06-14 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010120', '南树强  ', '男', '05343721135         ', '德州庆云县严务乡大淀村', '1984-12-19 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010121', '胡锴    ', '男', '05338590804         ', '淄博桓台县淄博市桓台县田庄镇胡东村', '1988-12-24 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010122', '钦莉    ', '女', '051688016213        ', '江苏省睢宁县古邳镇骑河村钦庄203号', '1987-02-06 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010123', '项秋超  ', '男', '05303364391         ', '菏泽曹县郑庄乡谢道口村', '1988-01-20 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010124', '徐新香  ', '女', '05348675314         ', '德州陵县梅镇李官屯村徐桂东', '1986-05-30 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010125', '秦新华  ', '男', '05364685660         ', '潍坊安丘市大盛镇上马疃村', '1988-08-14 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010126', '隋文奎  ', '男', '05363576378         ', '潍坊青州市何官镇张高村', '1988-04-18 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010127', '董承功  ', '男', '05363840092         ', '潍坊青州市山东省青州第二中学', '1985-10-06 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010128', '韩同宽  ', '男', '05377939636         ', '济宁汶上县杨店乡韩街村004号', '1987-11-05 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010129', '韩蕾    ', '女', '05098388901         ', '临沂河东区一中', '1988-03-10 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010130', '翟文仁  ', '男', '03544186866         ', '山西省昔阳县李家庄乡胡峪村', '1988-09-25 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007010131', '潘广萍  ', '女', '13894365691         ', '吉林省敦化市实验中学分校三年八班', '1989-07-23 00:00:00', '20070101', null, null);
INSERT INTO `student` VALUES ('2007020101', '于旭超  ', '男', '06316848619         ', '威海乳山市乳山寨东司马庄村                        ', '1987-11-27 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020102', '马栋    ', '男', '053287233511        ', '青岛胶州市实验中学                                ', '1989-03-03 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020103', '孔祥超  ', '男', '06338876398         ', '日照东港区山东省日照第二中学                      ', '1987-10-15 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020104', '王化文  ', '男', '05397849539         ', '临沂莒南县涝坡镇王鸡山村                          ', '1986-07-23 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020105', '王立伟  ', '女', '05367702680         ', '潍坊昌邑市昌邑市第二中学                          ', '1988-12-08 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020106', '王欢欢  ', '女', '13525792656         ', '河南省扶沟县第二高级中学                          ', '1988-07-02 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020107', '王丽    ', '女', '05303202067         ', '菏泽曹县曹城镇南关村197号                         ', '1989-06-14 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020108', '王欣    ', '女', '05392917063         ', '临沂兰山区清河南路801南郊中学                     ', '1988-11-24 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020109', '王倩    ', '女', '053213963965230     ', '青岛市北区阳信路2号11中                           ', '1987-12-23 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020110', '王海娟  ', '女', '05393636460         ', '临沂沂南县沂南二中二分校张积江                    ', '1987-03-24 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020111', '王鲁朋  ', '男', '05303718429         ', '菏泽曹县韩集镇井王村                              ', '1987-07-26 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020112', '王鹏    ', '男', '06357881421         ', '聊城莘县实验高中                                  ', '1989-09-17 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020113', '刘仁聪  ', '男', '053284531021        ', '青岛即墨市第四中学                                ', '1988-08-18 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020114', '刘长云  ', '男', '05396463717         ', '临沂临沭县蛟龙镇前利城村276号                     ', '1988-11-05 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020115', '刘会    ', '男', '05394552256         ', '临沂蒙阴县桃曲镇黄土沟村                          ', '1987-11-18 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020116', '刘红玉  ', '女', '0539                ', '临沂蒙阴县蒙阴镇会泉峪村                          ', '1988-03-20 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020117', '刘楠    ', '男', '05378231209         ', '济宁微山县农业银行办公室刘庆文                    ', '1989-12-10 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020118', '孙文彬  ', '男', '06358351766         ', '聊城东昌府鑫亚公司综合楼                          ', '1989-01-19 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020119', '孙朋朋  ', '男', '13963244038         ', '枣庄山亭区山城办大荒村孙建增                      ', '1988-01-08 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020120', '牟庆双  ', '男', '05353891377         ', '烟台海阳市发城镇发城村123号                       ', '1987-04-26 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020121', '闫送刚  ', '男', '05303772336         ', '菏泽曹县魏湾镇闫楼村                              ', '1988-06-26 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020122', '宋杰    ', '女', '053213668861163     ', '青岛城阳区明阳路260号                             ', '1988-11-10 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020123', '张长春  ', '男', '05397880767         ', '临沂莒南县朱芦镇张家茅墩村                        ', '1988-09-03 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020124', '张梅盼  ', '女', '05304587902         ', '菏泽单县终兴镇北常集东村                          ', '1982-07-19 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020125', '张巍巍  ', '女', '06317340375         ', '威海荣成市宁津街道办事处季家村188                 ', '1988-04-30 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020126', '李明明  ', '女', '06355280956         ', '聊城莘县明天中学                                  ', '1988-08-24 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020127', '李胜辉  ', '男', '06316596685         ', '威海乳山市育黎镇王母夼村                          ', '1987-02-12 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020128', '李海青  ', '女', '05363828360         ', '潍坊青州市青州烟厂沿街楼三单元                    ', '1988-10-03 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020129', '李艳    ', '女', '063213561197363     ', '枣庄枣庄十八中韩业强转李艳                        ', '1989-09-16 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020130', '李雪娜  ', '女', '06335521010         ', '日照五莲县叩官中学                                ', '1988-06-27 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020131', '李腾    ', '女', '06322651685         ', '枣庄滕州市鲍沟镇河崖村                            ', '1989-12-13 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020132', '李燕    ', '女', '13937675001         ', '驻马店市第四高级中学                              ', '1987-08-22 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020133', '杨春    ', '男', '053013181554516     ', '菏泽牡丹区仓房居委会                              ', '1990-06-14 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020134', '杨萍    ', '女', '05368378009         ', '潍坊潍城区福寿街西首潍坊七中                      ', '1988-01-19 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020135', '陈玉明  ', '男', '05393896455         ', '临沂沂南县马牧池乡张家峪子                        ', '1988-11-27 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020136', '陈辉辉  ', '男', '053713341202898     ', '济宁金乡县化雨乡冯海村                            ', '1987-08-02 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020137', '孟淼    ', '男', '05378681097         ', '济宁微山县鲁桥镇鲁桥二村                          ', '1987-11-29 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020138', '林俊明  ', '男', '06318868818         ', '威海文登市泽头镇林村                              ', '1988-01-09 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020139', '姜延民  ', '女', '06358591822         ', '聊城东昌府许营乡崔官屯村姜德旺                    ', '1988-06-19 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020140', '姜丽丽  ', '女', '063113176311846     ', '威海乳山市冯家镇南寨村                            ', '1988-01-10 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020141', '胡营    ', '男', '063313455001001     ', '日照东港区日照一中东校高三二部                    ', '1987-07-31 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020142', '赵庆斌  ', '男', '05387663181         ', '泰安新泰市新泰二中                                ', '1988-06-06 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020143', '赵旗    ', '男', '05394725579         ', '临沂蒙阴县旧寨乡北楼村                            ', '1988-05-16 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020144', '钟海东  ', '男', '053615864316134     ', '潍坊青州市青州市普通镇钟家庄61                    ', '1988-05-16 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020145', '徐文丽  ', '女', '06325037299         ', '枣庄滕州市姜屯镇前徐村徐善政                      ', '1988-12-17 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020146', '殷鹏威  ', '男', '053283168568        ', '青岛开发区钱塘江路366号                           ', '1988-12-15 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020147', '盖长海  ', '男', '05462085339         ', '东营垦利县垦利一中                                ', '1988-06-06 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020148', '谢静    ', '女', '05305481482         ', '菏泽牡丹区马岭岗镇谢集村021号                     ', '1989-02-07 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020149', '燕凤    ', '女', '05394091576         ', '临沂平邑县白彦镇黄坡东村                          ', '1988-08-19 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020150', '魏纯纯  ', '女', '06323456886         ', '枣庄市中区十六中北校孙守海老师                    ', '1988-04-09 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020151', '魏巍    ', '女', '05333360483         ', '淄博沂源县张家坡镇北店子村                        ', '1987-10-07 00:00:00', '20070201', null, null);
INSERT INTO `student` VALUES ('2007020255', '江南    ', '男', null, null, '1905-06-14 00:00:00', null, null, null);
INSERT INTO `student` VALUES ('2007020256', '江南    ', '男', null, null, '1905-06-14 00:00:00', null, null, null);
INSERT INTO `student` VALUES ('2007030101', '于田田  ', '女', '06353758753         ', '聊城高唐县一中', '1987-10-20 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030102', '于鸿珲  ', '男', '053213685323612     ', '青岛市南区江西路70号', '1988-06-12 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030103', '马昌兴  ', '男', '05395735558         ', '临沂费县胡阳镇徕庄村', '1988-02-10 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030104', '孔凡梅  ', '女', '05375837389         ', '济宁邹城市城前镇民安村96号', '1987-12-15 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030105', '王冉    ', '男', '05368272976         ', '潍坊奎文区工福街宝利家园', '1987-09-27 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030106', '王正正  ', '女', '053287801359        ', '青岛城阳区棘洪滩街道港北村134号', '1988-06-28 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030107', '王永涛  ', '男', '053287467368        ', '青岛莱西市职业中专', '1988-10-11 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030108', '王金升  ', '男', '0633                ', '日照莒县第二中学', '1989-08-08 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030109', '王楠    ', '男', '053187702241        ', '济南平阴县一中东校理十五班', '1990-01-14 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030110', '邓艳丽  ', '女', '06324616660         ', '枣庄薛城区张范镇田庄村17号邓连国', '1989-07-04 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030111', '付尚坤  ', '男', '063513869579895     ', '聊城东昌府山东聊城第二中学', '1987-09-23 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030112', '石付杰  ', '男', '05386894334         ', '泰安岱岳区泰安三中北校', '1990-02-28 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030113', '石红玲  ', '女', '05304491565         ', '菏泽单县浮岗镇石老家村', '1989-09-02 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030114', '刘峰祥  ', '男', '05397582987         ', '临沂莒南县团林镇前沙沟', '1989-05-22 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030115', '刘祥    ', '男', '05373101999         ', '济宁汶上县汶上镇花园村路406号', '1989-08-10 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030116', '刘乾    ', '男', '06353280538         ', '聊城东阿县妇联', '1987-11-11 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030117', '孙文彬  ', '男', '053287467368        ', '青岛莱西市职业中专', '1988-08-25 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030118', '安小丹  ', '女', '053013173392381     ', '菏泽东明县长兴乡安庄村', '1988-07-10 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030119', '曲明    ', '女', '05342686848         ', '德州德城区月亮潭小区2号楼505号', '1988-09-12 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030120', '朱琳    ', '女', '05398830001         ', '临沂河东区蒙凌学校', '1988-05-16 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030121', '闫瑞雪  ', '女', '03555052983         ', '山西省长治北工行西家属院', '1989-01-05 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030122', '张凡国  ', '男', '05308093853         ', '菏泽巨野县董官屯镇义和庄', '1988-06-12 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030123', '张子凯  ', '男', '05394399133         ', '临沂平邑县地方镇小宋家庄村', '1989-12-04 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030124', '张训才  ', '男', '053184351728        ', '济南济阳县济阳一中', '1987-11-06 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030125', '张琦    ', '男', '05343885189         ', '德州夏津县文化路人行家属院', '1988-10-14 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030126', '张磊    ', '男', '053613583640087     ', '潍坊昌乐县昌乐一中20班', '1989-05-12 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030127', '李小龙  ', '男', '05398593356         ', '临沂罗庄区盛庄办事处尚屯村550号', '1988-11-20 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030128', '李文秀  ', '女', '05344876511         ', '德州临邑县德平镇碱李村', '1987-09-16 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030129', '李迎迎  ', '女', '0393-5929093        ', '河南省范县濮城镇罗楼村', '1988-05-27 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030130', '李俊超  ', '男', '053283685972        ', '青岛市北区镇江路27号志成中学', '1988-02-27 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030131', '李春庆  ', '男', '05363202942         ', '潍坊青州市青州市第一职业中专', '1988-11-27 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030132', '杨尚洁  ', '男', '05355646817         ', '烟台蓬莱市第三干休所907室', '1990-11-07 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030133', '谷伟伟  ', '女', '05436212034         ', '滨州无棣县水湾镇潘家村', '1987-07-22 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030134', '孟文华  ', '女', '05372538506         ', '济宁任城区喻屯镇孟庄村', '1990-03-06 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030135', '姜文强  ', '男', '05353566376         ', '烟台海阳市小纪镇望宿村', '1989-01-03 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030136', '姜懿玲  ', '女', '06317373816         ', '威海荣成市石岛镇姜家疃村大队', '1989-04-18 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030137', '赵凤云  ', '女', '05304766868         ', '菏泽单县职业中专', '1987-04-04 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030138', '赵光帅  ', '男', '05388885326         ', '泰安岱岳区泰安四中', '1989-02-03 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030139', '逄琳    ', '女', '053287165556        ', '青岛胶南市胶南电子学校', '1989-03-15 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030140', '郝盼姣  ', '女', '053013275401484     ', '菏泽东明县陆圈镇郝桥村', '1988-09-25 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030141', '唐静    ', '女', '053288835882        ', '临沂莒南县十字路园丁花园', '1989-02-07 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030142', '袁志    ', '男', '13953289351         ', '青岛李沧区京口路78号', '1989-06-04 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030143', '陶凯    ', '男', '053283818058        ', '青岛市北区青城路4号1单元203户', '1988-05-13 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030144', '高玉鹏  ', '男', '053284199423        ', '青岛胶南市胶南电子学校', '1989-03-28 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030145', '黄花蕊  ', '女', '05376601041         ', '济宁嘉祥县纸坊镇后吕村', '1986-06-26 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030146', '董国庭  ', '男', '13994348384         ', '山西左云星源中学', '1988-03-15 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030147', '魏国治  ', '男', '05348709728         ', '德州陵县边临镇西魏村魏俊树', '1905-06-14 00:00:00', '20070301', null, null);
INSERT INTO `student` VALUES ('2007030201', '于敦魁  ', '男', '053283380011        ', '青岛平度仁兆镇于家泊村', '1988-05-10 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030202', '孔子亮  ', '男', '063213869467003     ', '枣庄市中区西王庄乡中心校', '1989-01-19 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030203', '孔颖    ', '女', '063113563133793     ', '威海乳山市白沙滩镇孔家庄', '1989-09-21 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030204', '王丹凤  ', '女', '05373100721         ', '济宁汶上县南站镇黄店北村080号', '1986-02-28 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030205', '王龙强  ', '男', '05377218411         ', '济宁汶上县中都大街47号', '1987-09-19 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030206', '王秀珍  ', '女', '06316587601         ', '威海乳山市崖子镇东庄村', '1988-11-24 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030207', '王皎    ', '女', '13012536997         ', '青岛崂山区中韩镇东韩村134号', '1989-11-29 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030208', '王瑞    ', '男', '05394612082         ', '临沂平邑县平邑亚欧学校', '1988-10-21 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030209', '王德新  ', '男', '0412-4642343        ', '台安县第二高级中学三年五班', '1988-09-11 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030210', '冯香玲  ', '女', '05358559181         ', '烟台龙口市一职', '1988-08-24 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030211', '田相健  ', '男', '05393639324         ', '临沂沂南县沂南二中二分校李全增', '1989-01-16 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030212', '任猛    ', '男', '05376044662         ', '济宁鱼台县李阁镇任寺村193', '1987-10-09 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030213', '刘一甫  ', '男', '053513626459806     ', '烟台龙口市石良镇东庄头村', '1987-03-15 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030214', '刘同福  ', '男', '05333660159         ', '淄博沂源县沂源二中', '1986-06-19 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030215', '刘启文  ', '男', '0539                ', '临沂蒙阴县蒙阴镇谭家召子村', '1988-02-13 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030216', '刘秋杰  ', '女', '05304452333         ', '菏泽单县职业中专', '1984-01-05 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030217', '刘康泺  ', '男', '053189698649        ', '济南历城区农科院作物所刘灿东', '1989-01-08 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030218', '刘强    ', '男', '053282191626        ', '青岛胶南市胶河镇中心中学传达室', '1989-01-20 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030219', '刘煦    ', '男', '05305800820         ', '菏泽牡丹区22中家属院北楼4单元', '1989-09-10 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030220', '刘磊    ', '男', '05395239960         ', '临沂苍山县卞庄镇一中', '1989-03-10 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030221', '刘遵帅  ', '男', '0417-5846316        ', '辽宁省大石桥市二高中三年十八班', '1905-06-14 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030222', '孙宝珍  ', '女', '05356772586         ', '烟台芝罘区烟台市芝罘区四马路56号', '1988-07-08 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030223', '孙雪娇  ', '女', '05378663132         ', '济宁微山县马坡乡荆冢集北村', '1989-02-19 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030224', '朱士臣  ', '男', '05383127807         ', '泰安肥城市肥城矿业集团公司中学', '1988-02-16 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030225', '朱春阳  ', '男', '05364607474         ', '潍坊安丘市景芝镇朱家沙浯村', '1989-03-01 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030226', '牟鹏    ', '男', '06335213084         ', '日照五莲县一中', '1987-06-20 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030227', '吴延晗  ', '男', '05302422584         ', '菏泽鄄城县第一中学', '1987-03-23 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030228', '张龙    ', '男', '05366801868         ', '潍坊昌乐县城关街道蓝宝石九号楼', '1987-12-28 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030229', '张菊    ', '女', '05388742314         ', '泰安岱岳区泰安四中', '1987-04-24 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030230', '李伟明  ', '男', '05377823895         ', '济宁汶上县苑庄镇中小秦村', '1987-04-18 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030231', '李传龙  ', '男', '0411-86266467       ', '大连市旅顺口区东安路（三涧段）455号', '1987-12-23 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030232', '杨雪    ', '女', '05388612214         ', '泰安岱岳区泰安市岱岳区山口镇成教中心', '1989-06-23 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030233', '杨舒    ', '女', '05304959336         ', '菏泽单县职业中专', '1988-11-03 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030234', '苏洪宝  ', '男', '053413869221029     ', '德州夏津县夏津镇苦水村478号', '1988-09-05 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030235', '苏萌    ', '女', '053013793006971     ', '菏泽牡丹区立交桥生活小区', '1987-12-04 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030236', '陈红宇  ', '男', '05387836796         ', '泰安新泰市新汶矿业集团一中', '1986-10-09 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030237', '苟秋滢  ', '女', '053287812067        ', '青岛城阳区上马街道青岛东风盐场', '1988-12-13 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030238', '金鑫鑫  ', '男', '05388531257         ', '泰安岱岳区泰安市三职专', '1989-02-10 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030239', '姚辉艳  ', '女', '05356392242         ', '烟台开发区高级中学', '1987-04-04 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030240', '赵天    ', '男', '053913054908597     ', '临沂罗庄区商业街路', '1989-11-12 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030241', '赵永才  ', '男', '05364702807         ', '潍坊安丘市石堆镇西王里居村', '1987-02-18 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030242', '郝现超  ', '男', '05385574163         ', '泰安宁阳县东疏镇孙集村', '1986-08-05 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030243', '徐宝龙  ', '男', '05377641569         ', '济宁梁山县韩垓镇油坊村', '1988-04-27 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030244', '徐猛    ', '男', '05396551527         ', '临沂郯城县高峰头镇店子村', '1988-01-27 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030245', '徐聪聪  ', '男', '05353771764         ', '烟台海阳市行村镇东村庄', '1987-10-29 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030246', '高旭明  ', '男', '053613780898897     ', '潍坊奎文区民生东街63号傅传顺', '1988-12-16 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030247', '戚鹏    ', '男', '06325019159         ', '枣庄滕州市姜屯镇戚庄戚成华', '1988-02-28 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030248', '谢志国  ', '男', '05385603173         ', '泰安宁阳县宁阳镇富贵小区3号楼3单元', '1989-01-30 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030249', '谢爱艳  ', '女', '05304467009         ', '菏泽单县职业中专', '1984-06-18 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030250', '韩平平  ', '女', '053713325193228     ', '济宁汶上县泉河大街宏顺商店', '1989-06-01 00:00:00', '20070302', null, null);
INSERT INTO `student` VALUES ('2007030301', '于军    ', '男', '05362589186         ', '潍坊高密市高密市实验中学', '1987-02-26 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030302', '于虎    ', '男', '053213863957932     ', '青岛市北区错埠岭4小区56号楼1单元102室', '1990-02-10 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030303', '孔德臣  ', '男', '06325028916         ', '枣庄滕州市姜屯镇前孔庄村崔洪彦', '1987-10-16 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030304', '方宁    ', '女', '053713053729391     ', '济宁任城区李营镇李营村', '1988-09-11 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030305', '王盼盼  ', '女', '05372775973         ', '济宁任城区长沟镇崔庄村', '1989-10-24 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030306', '王选    ', '男', '13792492303         ', '青岛即墨市第一中学', '1986-08-22 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030307', '王海浩  ', '男', '053613695366101     ', '潍坊寿光市一中语文张杰', '1987-10-12 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030308', '王新宁  ', '男', '053113954102239     ', '济南商河县一中', '1988-05-26 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030309', '付凌毅  ', '女', '06317286240         ', '威海荣成市石岛镇大鱼岛村四区127', '1989-01-20 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030310', '冉凡伟  ', '男', '05308602310         ', '菏泽定陶县山东省成武县九女集镇郭庙村', '1988-02-26 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030311', '田继猛  ', '男', '05306535189         ', '菏泽郓城县实验中学', '1989-10-28 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030312', '刘旭同  ', '男', '053113351069911     ', '济南市中区建设路1一1号', '1988-09-02 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030313', '刘建忠  ', '男', '05436389207         ', '滨州无棣县无棣镇石三里村', '1989-08-04 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030314', '刘洪宽  ', '男', '053913053936381     ', '临沂蒙阴县常路镇富成庄村233号', '1988-12-01 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030315', '刘富贵  ', '男', '05367756198         ', '潍坊昌邑市昌邑市第二中学', '1987-09-15 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030316', '孙玉    ', '女', '053213792483077     ', '青岛开发区红石崖镇雷家店子村122号', '1987-07-18 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030317', '孙亮    ', '男', '053515963531111     ', '烟台海阳市东村镇电信局', '1988-02-24 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030318', '孙海龙  ', '男', '053213455239073     ', '青岛平度市白埠镇和平村', '1987-07-03 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030319', '成雷    ', '男', '03122588220         ', '河北定州中学016班', '1988-09-18 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030320', '许志宏  ', '女', '06338833806         ', '日照岚山区岚山区后村镇焦家集村', '1989-03-07 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030321', '吴峰    ', '男', '05394802446         ', '临沂蒙阴县蒙阴镇南官庄村', '1989-02-07 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030322', '吴晓玉  ', '女', '053285512739        ', '青岛即墨市丰城镇东百里村', '1986-06-24 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030323', '宋吉利  ', '男', '053413697690729     ', '德州武城县第二中学', '1988-01-18 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030324', '张华贞  ', '男', '13869450375         ', '枣庄滕州市龙阳镇冯营村', '1988-04-09 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030325', '张秀芳  ', '女', '05394564360         ', '临沂蒙阴县界牌镇尚庄村', '1988-11-10 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030326', '张振    ', '男', '053913793912642     ', '临沂平邑县地方镇三山村', '1988-02-01 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030327', '张晓敏  ', '女', '06336623399         ', '日照莒县浮来山镇后官庄村', '1984-12-15 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030328', '李义乾  ', '男', '05377703491         ', '济宁梁山县徐集镇吴大庙村', '1987-09-17 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030329', '陈星    ', '男', '05372081628         ', '济宁任城区??花小区13号楼306室', '1988-04-02 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030330', '赵永强  ', '男', '05367754201         ', '潍坊昌邑市昌邑市第二中学', '1987-03-05 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030331', '赵新霞  ', '女', '05364782926         ', '潍坊安丘市景芝镇吉台官庄村', '1989-10-14 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030332', '郝永丽  ', '女', '05307642944         ', '菏泽东明县陆圈镇郝桥村', '1987-03-19 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030333', '徐永恺  ', '男', '05366984383         ', '潍坊昌乐县第一中学', '1989-03-25 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030334', '晁帅    ', '男', '05305200659         ', '菏泽牡丹区吴店镇曹庄村37号', '1988-08-31 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030335', '秦艳青  ', '女', '05466426618         ', '东营广饶县石村镇圈子村', '1988-08-20 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030336', '耿火松  ', '男', '053286303249        ', '青岛平度市白埠镇李家埠子村189号', '1987-12-21 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030337', '袁德智  ', '男', '053213455201181     ', '青岛市北区浮山后四小区四十六号楼一单401', '1987-09-26 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030338', '高琪    ', '男', '05367225128         ', '潍坊昌邑市昌邑市第二中学', '1987-09-11 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030339', '鹿平    ', '男', '063213626320765     ', '枣庄台儿庄区张山子镇鹿荒村', '1987-07-01 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030340', '焦健    ', '女', '03357876109         ', '河北省秦皇岛市青龙县第一中学', '1987-10-27 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030341', '程乔森  ', '男', '05363213047         ', '潍坊临朐县东城区杨家场村四号楼', '1989-03-10 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030342', '葛芳芳  ', '女', '06325190758         ', '枣庄薛城区兴仁办事处薛庄村369号', '1989-01-06 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030343', '董良    ', '男', '05363351196         ', '潍坊临朐县营子镇董家崖村', '1988-10-30 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030344', '韩同同  ', '男', '05367999330         ', '潍坊坊子区潍坊十二中张树源', '1988-02-10 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030345', '魏东    ', '男', '053413583458575     ', '德州禹城市职业中专', '1989-11-06 00:00:00', '20070303', null, null);
INSERT INTO `student` VALUES ('2007030401', '于娜娜  ', '女', '053515966476241     ', '烟台海阳市方圆街道办事处它山泊村464号', '1987-06-30 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030402', '仇增鑫  ', '男', '05393181204         ', '临沂平邑县财源南区传达室仇付海', '1990-06-27 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030403', '卞启霞  ', '女', '05382452046         ', '泰安东平县州城镇西门村', '1986-01-16 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030404', '王刚    ', '男', '053287869039        ', '青岛城阳区明阳路260号', '1989-04-05 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030405', '王洪霞  ', '女', '05375630218         ', '济宁邹城市郭里镇经济园区337号', '1987-06-08 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030406', '乔美玲  ', '女', '05344271669         ', '德州临邑县兴隆镇段店村乔丛科', '1988-01-01 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030407', '任师林  ', '男', '053015965898680     ', '菏泽鄄城县第二中学', '1989-12-01 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030408', '刘仰禹  ', '男', '05378459560         ', '济宁微山县两城乡西单村', '1986-09-20 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030409', '刘志海  ', '男', '053213805326845     ', '青岛市北区宝应路19号2单元701户', '1988-11-24 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030410', '刘淑芹  ', '女', '05377610976         ', '济宁梁山县馆驿镇西北楼村', '1986-02-16 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030411', '刘雪姣  ', '女', '053613964737600     ', '潍坊昌乐县昌乐二中艺术班张莉', '1988-09-30 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030412', '孙健    ', '男', '053281720003        ', '青岛即墨市第二中学', '1989-04-30 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030413', '朱平    ', '男', '05304662758         ', '菏泽单县职业中专', '1989-10-08 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030414', '吴明义  ', '男', '13012780633         ', '聊城莘县董杜庄镇西吴家村', '1988-10-23 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030415', '张子剑  ', '男', '053188018506        ', '济南历城区济南市历城第五中学', '1988-11-02 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030416', '张丽丽  ', '女', '05394030499         ', '临沂平邑县郑城镇新元村', '1985-05-27 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030417', '张丽明  ', '女', '053715964757483     ', '济宁梁山县徐集镇才林村104号', '1989-12-28 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030418', '张凯    ', '男', '05388763834         ', '泰安泰山区邱家店温辛庄张玉谦收', '1988-03-14 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030419', '张洪娥  ', '女', '05436215271         ', '滨州无棣县水湾镇白杨村', '1989-09-20 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030420', '李中飞  ', '男', '053184671957        ', '济南商河县二中', '1989-03-12 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030421', '李学昌  ', '男', '05303605213         ', '菏泽曹县曹城镇李楼寨行政村', '1987-09-18 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030422', '李洋洋  ', '男', '053713562748396     ', '济宁任城区李营镇李庄村李庆宝0074', '1989-04-08 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030423', '李海锋  ', '男', '06315251202         ', '威海市高区天津路85号楼五单元608室', '1987-06-19 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030424', '杜建平  ', '男', '15863762834         ', '德州武城县郝王庄镇聂官屯村034号', '1987-06-04 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030425', '陈中栋  ', '男', '05367611720         ', '潍坊寒亭区一中', '1987-11-26 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030426', '陈兰凤  ', '女', '05362696230         ', '潍坊高密市第四中学', '1987-09-06 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030427', '陈华宾  ', '男', '05302364471         ', '菏泽鄄城县第二中学驻城校区', '1988-02-03 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030428', '陈庆泽  ', '男', '13854996181         ', '临沂临沭县临沭县第二小学陈伟', '1987-09-28 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030429', '屈晓楠  ', '女', '13854179123         ', '济南平阴县一中东校文三班', '1988-10-20 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030430', '武凯    ', '男', '13280109768         ', '潍坊潍城区北宫西街205号潍坊一职专', '1987-09-20 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030431', '郑凯    ', '男', '06324056829         ', '枣庄滕州市西岗镇柴里矿装修公司', '1989-01-29 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030432', '姜庆川  ', '男', '06357510855         ', '聊城莘县实验高中', '1987-10-25 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030433', '胡丽    ', '男', '05386978057         ', '泰安肥城市泰西中学美术组王绪武', '1989-11-17 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030434', '胡峥    ', '男', '053113505412897     ', '济南槐荫区宋园新区4一1一602', '1987-01-14 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030435', '赵磊    ', '男', '05364600793         ', '潍坊安丘市景芝镇庆安北村', '1988-03-16 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030436', '徐敏栋  ', '男', '053287131153        ', '青岛胶南市大场镇后老窝149号', '1988-08-20 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030437', '晁红雷  ', '男', '05305831450         ', '菏泽牡丹区吴店镇二郎庙村', '1988-02-20 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030438', '郭杰民  ', '男', '05365108435         ', '潍坊寿光市潍坊科技职业学院二栋', '1986-12-21 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030439', '高国峰  ', '男', '05353255783         ', '烟台海阳市东村街道初格庄村124号', '1988-12-25 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030440', '高润芝  ', '女', '05364102678         ', '潍坊安丘市管公镇高家辛庄子村', '1988-03-25 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030441', '曹艳芳  ', '女', '05358559181         ', '烟台龙口市一职', '1988-02-09 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030442', '梁彩霞  ', '女', '05394295116         ', '临沂平邑县一中保卫科', '1989-06-01 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030443', '訾元芳  ', '女', '053184686210        ', '济南商河县二中', '1987-12-28 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030444', '靳宗振  ', '男', '05343588642         ', '德州夏津县宋楼镇靳庄村16号', '1988-10-24 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030445', '滕子漳  ', '男', '05352488367         ', '烟台莱州市城港路街道朱旺村', '1987-08-25 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030446', '冀爱丽  ', '女', '05366981881         ', '潍坊昌乐县昌乐二中赵中森', '1988-05-01 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030447', '吴少昊  ', '男', null, '济南市', '1991-01-01 00:00:00', '20070304', null, null);
INSERT INTO `student` VALUES ('2007030501', '王妍红  ', '女', '05465326612         ', '东营利津县二中', '1988-08-05 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030502', '王勇    ', '男', '05368812359         ', '潍坊奎文区奎文区廿里堡办事处王家庄村', '1987-11-30 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030503', '王琪栋  ', '男', '05387591278         ', '泰安新泰市实验中学高中部校长室', '1988-10-10 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030504', '史凯    ', '男', '05372860578         ', '济宁市中区常青路0016号0004号楼0201号', '1988-09-07 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030505', '田川    ', '男', '06325511531         ', '枣庄滕州市滕州日报社田璐', '1988-06-20 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030506', '刘庆    ', '男', '05394532622         ', '临沂蒙阴县垛庄镇四十亩地村', '1988-06-22 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030507', '刘丽    ', '女', '05395983153         ', '临沂费县石井镇同兴村', '1988-12-13 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030508', '刘洋洋  ', '男', '13405427437         ', '青岛城阳区城阳一中高三文综', '1988-12-15 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030509', '刘晓晓  ', '女', '05364846368         ', '潍坊安丘市职业中专', '1989-09-21 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030510', '刘霞    ', '女', '06315625318         ', '威海市直火炬路177号威海信息工程学校', '1988-04-29 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030511', '庄海艺  ', '男', '05366339362         ', '潍坊诸城市昌城镇大庄家河岔村', '1988-10-30 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030512', '朱珊珊  ', '女', '05308914505         ', '菏泽成武县山东省成武县前程职业高中', '1988-07-12 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030513', '闫燕玲  ', '女', '13310657621         ', '聊城莘县职业中专', '1988-10-26 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030514', '何礼    ', '男', '05373315276         ', '济宁汶上县尚书路西638号1单元201', '1988-04-20 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030515', '张欣    ', '男', '05386311802         ', '泰安泰山区泰安长城中学', '1988-05-12 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030516', '张新    ', '女', '05363729603         ', '潍坊临朐县卧龙镇孔家庄村', '1988-03-22 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030517', '时祥    ', '男', '15901557459         ', '潍坊潍城区城关芙蓉街太平街小区60号楼1单元402号', '1987-09-28 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030518', '李亚男  ', '女', '053287436396        ', '青岛莱西市成人中等专业学校', '1989-08-05 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030519', '李扬    ', '男', '05394528338         ', '临沂蒙阴县联城乡金城路??号', '1988-08-22 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030520', '李学一  ', '男', '053613054731365     ', '潍坊安丘市第五中学', '1988-02-01 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030521', '李桂余  ', '男', '05393896455         ', '临沂沂南县沂南二中二分校鲍文卿', '1988-11-28 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030522', '李晨    ', '女', '054313181002508     ', '滨州滨城区黄河三路537号李兴华', '1988-03-14 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030523', '杨丕长  ', '男', '05302352308         ', '菏泽鄄城县第二中学', '1986-09-03 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030524', '肖志民  ', '男', '053613806466889     ', '潍坊昌乐县昌乐一中十六班', '1990-03-16 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030525', '陆成祥  ', '男', '06322432708         ', '枣庄滕州市级索镇后牛集村陆德银', '1988-07-01 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030526', '陆英英  ', '女', '05385275118         ', '泰安宁阳县蒋集镇前才村', '1990-07-11 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030527', '周慧    ', '女', '05366501182         ', '潍坊诸城市诸城四中', '1989-06-07 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030528', '林茂兴  ', '男', '05354551179         ', '烟台牟平区三中', '1988-12-26 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030529', '郑鹏    ', '男', '05344252877         ', '德州平原县平原镇北街村17号', '1987-03-09 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030530', '荣丽茹  ', '女', '13626314209         ', '威海文登市新一中丁荣华', '1987-10-18 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030531', '赵天赐  ', '男', '13793614850         ', '潍坊临朐县南关村大桥街2号', '1987-10-24 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030532', '赵文    ', '男', '05356201839         ', '烟台芝罘区瀛州街付52内2', '1989-02-04 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030533', '赵武帅  ', '男', '06336153889         ', '日照五莲县一中', '1988-08-12 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030534', '郝世胜  ', '男', '05366751130         ', '潍坊昌乐县第三职业中专', '1987-02-09 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030535', '郝宗宇  ', '女', '053113964097876     ', '济南章丘市第四中学', '1988-02-07 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030536', '徐玉清  ', '女', '05308861993         ', '菏泽成武县山东省成武县前程职业高中', '1989-06-21 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030537', '徐兴广  ', '男', '05302998866         ', '菏泽鄄城县鄄城县职教中心', '1987-08-01 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030538', '徐启明  ', '女', '05357912409         ', '烟台芝罘区北皂村西北街5号', '1989-08-10 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030539', '徐志良  ', '男', '053313455320163     ', '淄博沂源县第一中学', '1987-07-28 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030540', '贾沙沙  ', '女', '05376881126         ', '济宁嘉祥县嘉祥镇贾桥村', '1989-09-01 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030541', '崔广玲  ', '女', '053282465396        ', '青岛莱西市成人中等专业学校', '1989-03-05 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030542', '曹德光  ', '男', '053413869291322     ', '山东省禹城市房寺棉厂家属院', '1988-01-19 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030543', '阎阳    ', '男', '053513853533095     ', '烟台芝罘区南迎祥路付2杠3杠15', '1988-09-02 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030544', '焦春丽  ', '女', '05307831252         ', '菏泽东明县刘楼镇焦楼村', '1985-02-02 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030545', '董龙艳  ', '女', '05372602836         ', '济宁市中区军分区7号楼1栋501号', '1987-06-06 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030546', '靖环涛  ', '男', '053015965802886     ', '菏泽牡丹区菏泽三中高三级部', '1987-04-01 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030547', '翟玉霞  ', '女', '05344851185         ', '德州临邑县翟家乡翟家村翟文赵收', '1987-12-01 00:00:00', '20070305', null, null);
INSERT INTO `student` VALUES ('2007030601', '马荣    ', '女', '05392992266         ', '临沂平邑县流峪镇谭家庄马玉胜', '1989-04-04 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030602', '公超    ', '男', '05394316125         ', '临沂平邑县温水镇西围沟村公言成', '1988-12-12 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030603', '尹珂珂  ', '男', '06328911999         ', '枣庄枣庄十八中学尹洪勇转', '1987-06-27 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030604', '王洪远  ', '男', '05344500571         ', '德州平原县恩城镇魏庄村15号', '1988-02-15 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030605', '王晓轩  ', '男', '05393366039         ', '临沂兰山区临沂三中高中部', '1989-06-12 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030606', '王瑞珍  ', '女', '05307637553         ', '菏泽东明县武胜桥乡李寨村', '1987-06-07 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030607', '叶沛林  ', '男', '053187943309        ', '济南市中区春元里小区5号楼3－401', '1988-04-19 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030608', '刘兆刚  ', '男', '053287169642        ', '青岛胶南市泊里镇西庄村108号', '1989-08-21 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030609', '刘洋    ', '男', '053215963272827     ', '青岛即墨市第一中学', '1988-11-26 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030610', '刘振华  ', '男', '053015953037469     ', '菏泽郓城县二中', '1986-01-28 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030611', '刘慧敏  ', '男', '06346612207         ', '莱芜莱城区方下镇沈家岭刘振鹏转', '1988-10-16 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030612', '孙佩佩  ', '女', '053285581716        ', '青岛即墨市文化路68号', '1989-07-04 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030613', '孙振    ', '男', '05383143073         ', '泰安肥城市杨庄矿机电区孙孟玉', '1989-04-17 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030614', '汤金龙  ', '男', '05348323862         ', '德州陵县一中任善臣转汤金龙', '1988-12-19 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030615', '何林松  ', '男', '053187995672        ', '济南市中区党家庄镇党西村90号', '1988-12-16 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030616', '吴绪胜  ', '男', '0538271508          ', '泰安东平县沙河站镇乔村村吴成山', '1987-07-28 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030617', '宋恒冲  ', '男', '13853750954         ', '济宁梁山县小安山镇宋庄村宋进爱', '1986-12-28 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030618', '张青林  ', '男', '05366501072         ', '潍坊诸城市龙城中学', '1987-10-17 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030619', '李大利  ', '男', '05306192671         ', '菏泽郓城县师范高中', '1989-03-23 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030620', '李伊璠  ', '女', '05378081812         ', '济宁金乡县兴隆乡杨堂村40', '1988-11-16 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030621', '李伟    ', '男', '05397554087         ', '临沂莒南县坪上镇食品站', '1985-05-08 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030622', '李先振  ', '男', '05304583682         ', '菏泽单县终兴镇光明集王楼村', '1987-01-01 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030623', '李冰    ', '男', '05346386776         ', '德州武城县职业中专', '1988-05-10 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030624', '李阳    ', '男', '053415998792922     ', '德州乐陵市胡家街道办韩家村', '1988-09-30 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030625', '李迎萍  ', '女', '05394277841         ', '临沂蒙阴县文庙路2号1号楼202室', '1991-01-14 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030626', '李恒森  ', '男', '05372625787         ', '济宁任城区济东新村朗风园5号楼', '1988-01-12 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030627', '李艳青  ', '女', '05376610011         ', '济宁嘉祥县纸坊镇李山头村', '1988-05-17 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030628', '李强    ', '男', '053813583878643     ', '泰安岱岳区二职专', '1989-10-12 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030629', '陈辰    ', '男', '053213608983229     ', '青岛李沧区永平路57号', '1988-09-12 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030630', '范东一  ', '男', '053613605360117     ', '潍坊奎文区潍坊市奎文区东关街办', '1988-11-29 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030631', '郑桂英  ', '女', '053283185969        ', '青岛胶南市胶南电子学校', '1989-02-27 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030632', '赵郭靖  ', '男', '05395411093         ', '临沂兰山区临沂三中高中部', '1988-04-20 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030633', '徐文文  ', '女', '06336626415         ', '日照莒县日照市农业学校', '1986-11-03 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030634', '高飞    ', '男', '05392851898         ', '临沂沂水县杨庄镇高家楼子村', '1988-07-18 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030635', '崔灿    ', '女', '063313963331431     ', '日照日照第六中学', '1986-02-08 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030636', '谢良    ', '男', '13754714281         ', '临沂郯城县红花乡红花埠北村', '1988-03-13 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030637', '韩莉    ', '女', '063213656324914     ', '枣庄滕州市东沙河镇韩楼村四组韩顺成', '1988-10-16 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030638', '管音鹏  ', '男', '05346692665         ', '德州武城县第二中学', '1989-08-13 00:00:00', '20070306', null, null);
INSERT INTO `student` VALUES ('2007030701', '尹洪涛  ', '男', '063113792774987     ', '威海荣成市崖头镇崖头村三区508号', '1988-04-24 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030702', '王刚    ', '男', '05378452919         ', '济宁微山县两城乡八村幸福中路', '1988-07-15 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030703', '付明风  ', '女', '053813675380246     ', '泰安肥城市新城办事处东付村张厚祥', '1989-03-04 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030704', '任超    ', '男', '05388641663         ', '泰安岱岳区山东省泰安第四中学', '1987-10-18 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030705', '宋泽栋  ', '男', '05337532470         ', '淄博临淄区辛店勇士56号3单元501', '1989-02-08 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030706', '张卫霞  ', '女', '05392428809         ', '临沂沂水县夏蔚镇东上位村', '1990-08-26 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030707', '张友学  ', '男', '05308920165         ', '菏泽成武县湖山职业高中', '1988-08-18 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030708', '张定徐  ', '男', '053913210430931     ', '临沂莒南县相沟乡三义口村', '1986-01-05 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030709', '张磊    ', '男', '053913225498770     ', '临沂平邑县地方镇两泉村张登雨', '1989-04-05 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030710', '杨桂涛  ', '男', '13969537816         ', '聊城莘县河店镇杨炉村', '1989-08-02 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030711', '陈龙艳  ', '女', '063313370643715     ', '日照岚山区西湖镇马安村', '1989-07-01 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030712', '陈超    ', '男', '05367771968         ', '潍坊昌邑市五中', '1988-11-04 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030713', '周涛    ', '男', '053289263679        ', '青岛平度市同和信用社周建敏', '1987-08-30 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030714', '孟玲芝  ', '女', '05383504017         ', '泰安肥城市王庄镇任庄村孟现旺', '1987-06-05 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030715', '岳秀超  ', '男', '05096265080         ', '临沂临沭县郑山镇罗屯村373号', '1988-09-29 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030716', '武永杰  ', '男', '05465056171         ', '东营利津县职教中心', '1990-05-17 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030717', '殷方秀  ', '女', '05398830001         ', '临沂河东区蒙凌学校', '1989-03-13 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030718', '郭振华  ', '男', '05305434369         ', '菏泽牡丹区王浩屯镇郭寨村', '1986-08-12 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030719', '程云锦  ', '女', '05303494055         ', '菏泽定陶县定陶二中', '1988-07-15 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030720', '董云志  ', '男', '05392815662         ', '临沂沂水县第三中学刘斐转', '1987-10-12 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030721', '魏新岭  ', '男', '05438291529         ', '滨州阳信县阳信镇边家村', '1987-09-20 00:00:00', '20070307', null, null);
INSERT INTO `student` VALUES ('2007030722', '张三    ', '男', null, null, '1905-06-14 00:00:00', null, null, null);
INSERT INTO `student` VALUES ('2007040101', '郑美玲  ', '女', '13894506823         ', '梅河口翰林中学                                    ', '1987-10-12 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040102', '石照    ', '男', '05388040389         ', '泰安岱岳区泰安三中                                ', '1988-09-12 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040103', '任晓燕  ', '女', '05366491426         ', '潍坊诸城市诸城市第二中学                          ', '1987-09-10 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040104', '密其朋  ', '男', '05398830001         ', '临沂河东区蒙凌学校                                ', '1987-02-11 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040105', '王吉辰  ', '男', '053213869821916     ', '青岛市北区桦川一路14号楼三单元201户               ', '1988-02-07 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040106', '李伟    ', '女', '053215964932796     ', '青岛市北区东莞一路1号3单元601                     ', '1988-07-20 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040107', '杨彦萍  ', '女', '053513864594204     ', '烟台招远市蚕庄镇洼子村53号                        ', '1987-12-05 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040108', '王光江  ', '男', '06336567408         ', '日照莒县2158229454484907                          ', '1989-05-06 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040109', '张蒙蒙  ', '女', '053613001537558     ', '潍坊昌乐县昌乐一中十八班                          ', '1988-10-28 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040110', '范腊梅  ', '女', '05397591637         ', '临沂莒南县壮岗镇东坡村                            ', '1988-01-10 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040111', '王洪杰  ', '男', '06336432348         ', '日照莒县第二中学                                  ', '1988-01-22 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040112', '张爱娟  ', '女', '06357610703         ', '聊城莘县第二中学                                  ', '1985-06-01 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040113', '李大庆  ', '男', '05364711568         ', '潍坊潍城区福寿街西首潍坊七中                      ', '1987-08-10 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040114', '侯珍珍  ', '女', '05305552162         ', '菏泽牡丹区西城百园社区穆楼村                      ', '1989-09-16 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040115', '刘从龙  ', '男', '053213012528578     ', '青岛市北区台东一路118号文二                       ', '1987-09-19 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040116', '史程娇  ', '女', '053113181745625     ', '济南天桥区东仁和街20号                            ', '1988-07-25 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040117', '范菁    ', '女', '13064035511         ', '济南市中区玉函路48号范恒忠收                      ', '1988-06-08 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040118', '陈莎莎  ', '女', '05372615260         ', '济宁任城区接庄镇东郑庄村                          ', '1989-04-11 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040119', '王龙飞  ', '女', '053288388802        ', '青岛平度市城关福州路14号                          ', '1989-03-09 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040120', '崔晓英  ', '女', '063313455026544     ', '日照莒县小店镇后山头渊村                          ', '1988-08-23 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040121', '张平军  ', '男', '05336760557         ', '淄博高青县黑里寨镇箕张村25号                      ', '1988-12-25 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040122', '李延荣  ', '女', '05388980196         ', '泰安岱岳区山东省泰安第四中学                      ', '1988-08-06 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040123', '殷守交  ', '男', '13695301376         ', '菏泽郓城县二中                                    ', '1989-04-10 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040124', '宋超    ', '男', '063313561934076     ', '日照五莲县一中                                    ', '1988-02-24 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040125', '杜明明  ', '男', '05352823093         ', '烟台莱州市沙河镇西杜家村                          ', '1987-09-07 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040126', '赵秀洪  ', '女', '063513061093752     ', '聊城莘县职业中专                                  ', '1989-08-01 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040127', '赵青梅  ', '女', '05365115515         ', '潍坊寿光市现代中学                                ', '1988-02-11 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040128', '宋晨敏  ', '女', '053713153710286     ', '济宁梁山县小安山镇宋庄村242                       ', '1987-11-25 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040129', '孟鲁    ', '男', '05378719422         ', '济宁金乡县中心街西路20巷3号                       ', '1987-06-06 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040130', '徐鹏生  ', '男', '05353649291         ', '烟台海阳市盘石店镇徐家泊村406号                   ', '1987-10-05 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040131', '秦丽芹  ', '女', '06357663304         ', '聊城莘县妹冢镇辛店集村                            ', '1989-01-07 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040132', '张小翠  ', '女', '13722694302         ', '河北省邯郸市涉县二中                              ', '1987-10-16 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040133', '徐明环  ', '女', '01388879639         ', '河北省冀州市冀中分校                              ', '1986-04-01 00:00:00', '20070401', null, null);
INSERT INTO `student` VALUES ('2007040201', '孙素梅  ', '女', '13769880586         ', '云南省曲靖市沾益县第三中学                        ', '1988-06-12 00:00:00', '20070402', null, null);
INSERT INTO `student` VALUES ('2007050101', '马倩倩  ', '女', '053415953798636     ', '德州夏津县新盛店镇西季庄马成魁                    ', '1989-03-27 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050102', '王元顺  ', '男', '05365547575         ', '潍坊寿光市台头镇邢家茅坨村                        ', '1989-05-16 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050103', '王玉杰  ', '男', '05466480958         ', '东营广饶县广饶镇颜一村                            ', '1988-10-28 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050104', '王军    ', '女', '053287864146        ', '青岛城阳区城阳街道城子村927号                     ', '1988-07-18 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050105', '王晓明  ', '男', '053284893230        ', '潍坊奎文区东风东街206号                           ', '1987-03-12 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050106', '王艳芹  ', '女', '053285438192        ', '青岛莱西市马连庄镇孔家村王洪堂                    ', '1987-10-18 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050107', '王萍萍  ', '女', '05353817327         ', '烟台海阳市徐家店镇取水崖村                        ', '1988-06-22 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050108', '王善栋  ', '男', '05367869888         ', '潍坊昌邑市卜庄镇大王村                            ', '1987-02-12 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050109', '王婷    ', '女', '05365446981         ', '潍坊寿光市营里镇东北河村王希增                    ', '1988-03-25 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050110', '王群    ', '女', '053515863841826     ', '烟台海阳市朱吴镇三王家村                          ', '1988-10-16 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050111', '王霞    ', '女', '05304665283         ', '菏泽单县谢集乡谢花园村王庄51                      ', '1987-11-10 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050112', '付晓晖  ', '女', '05367256513         ', '潍坊寒亭区寒亭一中                                ', '1988-08-25 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050113', '史德臣  ', '男', '06322917338         ', '枣庄滕州市羊庄镇史屯村11                          ', '1988-11-19 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050114', '田立帅  ', '男', '053288287933        ', '青岛胶州市常州路668号                             ', '1988-12-01 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050115', '田学文  ', '男', '05308613904         ', '菏泽成武县二中                                    ', '1986-04-12 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050116', '任国森  ', '男', '053283352340        ', '青岛平度市麻兰镇任家河岔村                        ', '1988-07-10 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050117', '刘文静  ', '女', '06353439127         ', '聊城东阿县刘集镇东苫山村                          ', '1989-04-12 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050118', '刘明豪  ', '男', '053284891988        ', '青岛四方区小水清沟347号乙                         ', '1989-01-17 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050119', '刘淑菊  ', '女', '05392327328         ', '临沂沂水县综合高中                                ', '1987-08-07 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050120', '刘影    ', '女', '05303451962         ', '菏泽曹县古营集镇曹庄行政村                        ', '1988-11-30 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050121', '刘霄霄  ', '女', '06324513732         ', '枣庄薛城区邹坞镇野场村116号                       ', '1989-05-24 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050122', '孙伊丽  ', '女', '05432872057         ', '滨州博兴县陈户镇相孙村                            ', '1988-11-09 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050123', '孙晓伟  ', '女', '13625363792         ', '潍坊奎文区东风东街206号                           ', '1986-03-13 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050124', '巩平平  ', '女', '05388681505         ', '泰安岱岳区泰安第四中学                            ', '1988-09-25 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050125', '巩家瑞  ', '男', '05338683219         ', '淄博桓台县起凤镇西巩村                            ', '1989-04-01 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050126', '朱爱香  ', '女', '15865300876         ', '菏泽曹县韩集镇朱胡同                              ', '1988-08-01 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050127', '吴学海  ', '男', '05365413000         ', '潍坊寿光市营里镇中营村吴洪亮                      ', '1989-07-20 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050128', '张迪    ', '女', '05432606769         ', '滨州博兴县博兴镇皂户村                            ', '1988-08-26 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050129', '张金菊  ', '女', '0872-4331283    1357', '云南省大理州鹤庆县金墩乡北溪村公所北河东自然村五小', '1988-02-18 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050130', '张晓爱  ', '女', '053713506389116     ', '济宁梁山县梁山镇林庄村                            ', '1987-08-29 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050131', '张泰雷  ', '男', '05367874219         ', '潍坊昌邑市围子镇中密村                            ', '1988-11-26 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050132', '李会会  ', '女', '05302422584         ', '菏泽鄄城县第一中学                                ', '1988-01-10 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050133', '李秀德  ', '男', '053282421130        ', '青岛莱西市武备镇吴格庄村                          ', '1988-01-23 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050134', '李欣欣  ', '女', '05393559268         ', '临沂沂南县大庄镇金佛院村李风合                    ', '1988-03-22 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050135', '李俊龙  ', '男', '15966897176         ', '青岛莱西市威东中兴街1号楼602号                    ', '1988-10-15 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050136', '李淑梅  ', '女', '43183542040         ', '吉林省农安县伏龙泉中学                            ', '1987-08-27 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050137', '李静    ', '女', '053013475018390     ', '菏泽定陶县定陶二中音乐组                          ', '1986-10-13 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050138', '杜小霞  ', '女', '05466610605         ', '东营广饶县大码头乡大码头三村                      ', '1989-01-05 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050139', '杨晓楠  ', '女', '05366933973         ', '潍坊昌乐县崔家庄镇自成村147号                     ', '1989-09-14 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050140', '辛纪平  ', '女', '05364962590         ', '潍坊安丘市吾山镇墨黑村                            ', '1988-04-01 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050141', '邱琦轩  ', '女', '05366058113         ', '潍坊诸城市诸城市南关路258号                       ', '1988-12-04 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050142', '范巍玉  ', '女', '05303782006         ', '菏泽曹县韩集镇堤上范                              ', '1988-01-16 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050143', '段东祥  ', '男', '05396286528         ', '临沂临沭县二中                                    ', '1988-01-05 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050144', '赵丹    ', '男', '05363777179         ', '潍坊临朐县寺头镇赵家北坡村                        ', '1987-10-06 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050145', '郝鹏祥  ', '男', '0530     2210531    ', '菏泽定陶县一中                                    ', '1988-12-07 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050146', '徐英    ', '女', '053284311088        ', '青岛四方区嘉善路48号                              ', '1988-06-21 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050147', '袁凤玲  ', '女', '05367386058         ', '潍坊寒亭区一中                                    ', '1987-12-27 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050148', '郭玲    ', '女', '05366984383         ', '潍坊昌乐县第一中学                                ', '1988-01-15 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050149', '陶昆    ', '男', '05363879860         ', '潍坊青州市郑母泥河店村                            ', '1990-01-15 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050150', '崇瑶    ', '女', '05366160196         ', '潍坊诸城市诸城市实验中学高中部                    ', '1988-11-15 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050151', '崔敏    ', '女', '05364513069         ', '潍坊安丘市赵戈镇埠望庄                            ', '1988-07-03 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050152', '崔璐璐  ', '女', '053615953683184     ', '潍坊奎文区东风东街206号                           ', '1987-07-10 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050153', '梁作波  ', '男', '06324065348         ', '枣庄滕州市蒋庄矿高档一队梁作凯                    ', '1987-07-16 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050154', '程蕾    ', '女', '053613780850030     ', '潍坊昌乐县昌乐二中刘本卿                          ', '1988-08-03 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050155', '翟慧超  ', '女', '05377452716         ', '济宁梁山县大路口乡翟楼村                          ', '1986-10-22 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050156', '薄禄梅  ', '女', '05397543155         ', '临沂莒南县坪上寨子河                              ', '1988-03-14 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050157', '魏林    ', '男', '05368570003         ', '潍坊潍城区福寿街西首潍坊七中                      ', '1988-11-12 00:00:00', '20070501', null, null);
INSERT INTO `student` VALUES ('2007050201', '马玉成  ', '男', '053213864821349     ', '青岛平度市平度市华怡公寓1643号楼                  ', '1988-05-28 00:00:00', '20070502', null, null);
INSERT INTO `student` VALUES ('2007050202', '王扬贺  ', '男', '05377450659         ', '济宁梁山县大路口乡王朝刚村258号                   ', '1989-12-26 00:00:00', '20070502', null, null);

-- ----------------------------
-- Table structure for suser
-- ----------------------------
DROP TABLE IF EXISTS `suser`;
CREATE TABLE `suser` (
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `userlevel` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suser
-- ----------------------------
INSERT INTO `suser` VALUES ('admin     ', '123456    ', '1');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `Tno` varchar(3) NOT NULL DEFAULT '',
  `Tname` longtext,
  `Tsex` varchar(2) DEFAULT NULL,
  `Tbirthday` datetime DEFAULT NULL,
  `deptno` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Tno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('101', '李新', '男', '1977-01-12 00:00:00', 'd02');
INSERT INTO `teacher` VALUES ('102', '钱军', '女', '1968-06-04 00:00:00', 'd02');
INSERT INTO `teacher` VALUES ('103', '刘静', '女', '1965-01-21 00:00:00', 'd02');
INSERT INTO `teacher` VALUES ('104', '王大强', '男', '1956-03-23 00:00:00', 'd02');
INSERT INTO `teacher` VALUES ('201', '刘伟', '男', '1964-01-01 00:00:00', 'd01');
INSERT INTO `teacher` VALUES ('202', '王心仪', '女', '1966-09-17 00:00:00', 'd01');
INSERT INTO `teacher` VALUES ('203', '李俊杰', '男', '1968-04-24 00:00:00', 'd01');
INSERT INTO `teacher` VALUES ('301', '张平国', '男', '1967-12-01 00:00:00', 'd04');
INSERT INTO `teacher` VALUES ('302', '任平', '女', '1978-05-07 00:00:00', 'd04');
INSERT INTO `teacher` VALUES ('303', '马丽', '女', '1981-07-05 00:00:00', 'd04');
INSERT INTO `teacher` VALUES ('304', '顾小朋', '男', '1984-08-01 00:00:00', 'd04');
INSERT INTO `teacher` VALUES ('401', '王东玲', '女', '1963-12-01 00:00:00', 'd05');
INSERT INTO `teacher` VALUES ('402', '李从陈', '男', '1969-09-07 00:00:00', 'd05');
INSERT INTO `teacher` VALUES ('403', '刘栋', '男', '1982-04-29 00:00:00', 'd05');
INSERT INTO `teacher` VALUES ('501', '张式朋', '男', '1978-06-11 00:00:00', 'd03');
INSERT INTO `teacher` VALUES ('502', '王月', '女', '1973-09-03 00:00:00', 'd03');
INSERT INTO `teacher` VALUES ('503', '王小花', '女', '1962-01-28 00:00:00', 'd03');
INSERT INTO `teacher` VALUES ('601', '张青', '女', '1968-01-01 00:00:00', 'd06');
INSERT INTO `teacher` VALUES ('602', '孙亮', '男', '1977-05-21 00:00:00', 'd06');

-- ----------------------------
-- Table structure for teaching
-- ----------------------------
DROP TABLE IF EXISTS `teaching`;
CREATE TABLE `teaching` (
  `cno` varchar(4) DEFAULT NULL,
  `tno` varchar(3) DEFAULT NULL,
  `cterm` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teaching
-- ----------------------------
INSERT INTO `teaching` VALUES ('a01 ', '403', '1');
INSERT INTO `teaching` VALUES ('a02 ', '601', '1');
INSERT INTO `teaching` VALUES ('b01 ', '202', '2');
INSERT INTO `teaching` VALUES ('b02 ', '201', '3');
INSERT INTO `teaching` VALUES ('c01 ', '101', '2');
INSERT INTO `teaching` VALUES ('c02 ', '102', '1');
INSERT INTO `teaching` VALUES ('c03 ', '201', '3');
INSERT INTO `teaching` VALUES ('c04 ', '503', '1');
INSERT INTO `teaching` VALUES ('c05 ', '503', '2');
INSERT INTO `teaching` VALUES ('c10 ', '501', '3');
INSERT INTO `teaching` VALUES ('c11 ', '103', '5');
