/*
Navicat MySQL Data Transfer

Source Server         : ksl
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : ksldb

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-03-20 13:08:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `achievement`
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `introduce` varchar(50) NOT NULL,
  `filedir` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES ('7', '1', '2016-05-03 00:00:00', '3', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\3.JPG');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `bytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `num` varchar(50) DEFAULT NULL,
  `addr` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('4', '22', '2016-06-07 00:00:00', '2', null);
INSERT INTO `book` VALUES ('5', '11', '2016-06-07 00:00:00', '33', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\2b03b0c4-85f7-4c28-9c60-1c7af2a62fa8_5.jpg');
INSERT INTO `book` VALUES ('6', '123', '2016-10-06 00:00:00', '3', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\成绩文件.txt');

-- ----------------------------
-- Table structure for `hardware`
-- ----------------------------
DROP TABLE IF EXISTS `hardware`;
CREATE TABLE `hardware` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `function` varchar(50) NOT NULL,
  `info` varchar(50) NOT NULL,
  `bytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `number` int(20) NOT NULL,
  `addr` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hardware
-- ----------------------------
INSERT INTO `hardware` VALUES ('5', '汽车', '宝马', '开', '很快', '2016-06-14 00:00:00', '33', '楼下');

-- ----------------------------
-- Table structure for `literature`
-- ----------------------------
DROP TABLE IF EXISTS `literature`;
CREATE TABLE `literature` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `from_` varchar(50) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL,
  `filedir` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of literature
-- ----------------------------
INSERT INTO `literature` VALUES ('2', '22', '33', '44', '55', null);

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`author`) REFERENCES `user` (`name`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('3', 'hsda', 'ksl', '2016-06-07 17:02:28', '昂达搜索');
INSERT INTO `message` VALUES ('4', '主题', 'ksl', '2016-06-07 17:01:35', '内容');
INSERT INTO `message` VALUES ('5', '书', 'ksl', '2016-06-07 20:31:58', '大阿萨德');
INSERT INTO `message` VALUES ('6', '发放无分文', 'ksl', '2016-06-08 16:14:49', '范文芳无分文分');
INSERT INTO `message` VALUES ('7', 'ef', 'ksl', '2016-06-08 16:31:21', 'fssffs');
INSERT INTO `message` VALUES ('10', 'www', 'ksl', '2016-06-09 17:36:44', ' wwweeeww22');

-- ----------------------------
-- Table structure for `paper`
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(50) DEFAULT NULL,
  `mettingname` varchar(50) DEFAULT NULL,
  `juanheqi` varchar(50) DEFAULT NULL,
  `qishiyema` varchar(50) DEFAULT NULL,
  `wenzhangbianhao` varchar(50) DEFAULT NULL,
  `jiansuohao` varchar(50) DEFAULT NULL,
  `filedir` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('1', '名称', '卡萨啦', '韩顺平', '2016-06-08 00:00:00', '中文', '会i亿', '2/3', '22', '3', '1', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\实验室管理系统需求分析.doc');
INSERT INTO `paper` VALUES ('5', 'wer', 'wer', 'wer', '2017-03-06 00:00:00', '类型一', 'qwe', 'qweq', 'qwe', 'qwe', 'qweq', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\shutdown.bat');
INSERT INTO `paper` VALUES ('6', 'asda', 'asd', 'asd', '2017-03-07 00:00:00', '类型一', '2', '2', '3', '4', '5', null);

-- ----------------------------
-- Table structure for `patent`
-- ----------------------------
DROP TABLE IF EXISTS `patent`;
CREATE TABLE `patent` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` varchar(50) CHARACTER SET latin1 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `filedir` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patent
-- ----------------------------
INSERT INTO `patent` VALUES ('5', '2', '3', '2016-06-06 00:00:00', '5', '6', null);
INSERT INTO `patent` VALUES ('6', 'kkk', 'ksl', '2016-10-05 00:00:00', '2', '3223', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\RHCE笔记.rar');

-- ----------------------------
-- Table structure for `software`
-- ----------------------------
DROP TABLE IF EXISTS `software`;
CREATE TABLE `software` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `function` varchar(50) NOT NULL,
  `info` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `addr` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of software
-- ----------------------------
INSERT INTO `software` VALUES ('1', 'putty', 'ksl', '软件', '远程连接', '小巧灵活', '2016-06-10 00:00:00', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\putty.exe');
INSERT INTO `software` VALUES ('5', 'asdsad', 'asddsa', 'xzxcz', 'zxcczx', 'q3', '2016-05-31 00:00:00', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\实验室管理系统需求分析.doc');
INSERT INTO `software` VALUES ('6', 'asd', 'ad', 'asd', 'das', 'asdasd', '2017-02-07 00:00:00', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `permission` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('kkssll', '202CB962AC59075B964B07152D234B70', '1');
INSERT INTO `user` VALUES ('ksl', '202CB962AC59075B964B07152D234B70', '1');
INSERT INTO `user` VALUES ('qweq', 'D41D8CD98F00B204E9800998ECF8427E', '0');
INSERT INTO `user` VALUES ('qweqw', 'E807F1FCF82D132F9BB018CA6738A19F', '0');
er` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(50) DEFAULT NULL,
  `mettingname` varchar(50) DEFAULT NULL,
  `juanheqi` varchar(50) DEFAULT NULL,
  `qishiyema` varchar(50) DEFAULT NULL,
  `wenzhangbianhao` varchar(50) DEFAULT NULL,
  `jiansuohao` varchar(50) DEFAULT NULL,
  `filedir` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES ('1', '名称', '卡萨啦', '韩顺平', '2016-06-08 00:00:00', '中文', '会i亿', '2/3', '22', '3', '1', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\实验室管理系统需求分析.doc');
INSERT INTO `paper` VALUES ('5', 'wer', 'wer', 'wer', '2017-03-06 00:00:00', '类型一', 'qwe', 'qweq', 'qwe', 'qwe', 'qweq', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\shutdown.bat');
INSERT INTO `paper` VALUES ('6', 'asda', 'asd', 'asd', '2017-03-07 00:00:00', '类型一', '2', '2', '3', '4', '5', null);

-- ----------------------------
-- Table structure for `patent`
-- ----------------------------
DROP TABLE IF EXISTS `patent`;
CREATE TABLE `patent` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `author` varchar(50) CHARACTER SET latin1 NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `filedir` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patent
-- ----------------------------
INSERT INTO `patent` VALUES ('5', '2', '3', '2016-06-06 00:00:00', '5', '6', null);
INSERT INTO `patent` VALUES ('6', 'kkk', 'ksl', '2016-10-05 00:00:00', '2', '3223', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\RHCE笔记.rar');

-- ----------------------------
-- Table structure for `software`
-- ----------------------------
DROP TABLE IF EXISTS `software`;
CREATE TABLE `software` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `function` varchar(50) NOT NULL,
  `info` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `addr` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of software
-- ----------------------------
INSERT INTO `software` VALUES ('1', 'putty', 'ksl', '软件', '远程连接', '小巧灵活', '2016-06-10 00:00:00', 'C:\\apache-tomcat-8.0.29\\webapps\\LaboratoryManagementSystem\\WEB-INF\\filecenter\\putty.exe');
INSERT INTO `software` VALUES ('5', 'asdsad', 'asddsa', 'xzxcz', 'zxcczx', 'q3', '2016-05-31 00:00