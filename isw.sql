/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50714
Source Host           : 127.0.0.1:3306
Source Database       : isw

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-27 17:51:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for logs_login
-- ----------------------------
DROP TABLE IF EXISTS `logs_login`;
CREATE TABLE `logs_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ip_proxy` varchar(255) DEFAULT NULL,
  `conn_successful` tinyint(4) DEFAULT NULL,
  `timeOnline` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logs_login
-- ----------------------------
INSERT INTO `logs_login` VALUES ('1', '4', null, '2017-04-27 19:33:16', '::ffff:192.168.56.1', null, null, null);
INSERT INTO `logs_login` VALUES ('2', '4', 'admin', '2017-04-27 19:46:11', '::ffff:192.168.56.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('3', '-1', 'laweadelaweaweonqlo', '2017-04-27 19:46:25', '::ffff:192.168.56.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('4', '-1', 'asdasdasd', '2017-04-27 19:48:01', '::ffff:192.168.56.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('5', '4', 'admin', '2017-04-27 20:07:44', '::ffff:192.168.56.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('6', '4', 'admin', '2017-04-27 20:14:58', '::ffff:192.168.56.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('7', '4', 'admin', '2017-04-27 20:17:24', '::ffff:192.168.56.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('8', '4', 'admin', '2017-04-27 20:18:38', '::ffff:192.168.56.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('9', '4', 'admin', '2017-04-27 20:19:31', '::ffff:192.168.56.1', null, '1', '3');
INSERT INTO `logs_login` VALUES ('10', '4', 'admin', '2017-04-27 20:48:27', '::ffff:192.168.56.1', null, '1', '1');
INSERT INTO `logs_login` VALUES ('11', '4', 'admin', '2017-04-27 20:48:38', '::ffff:192.168.56.1', null, '1', '0');
INSERT INTO `logs_login` VALUES ('12', '4', 'admin', '2017-04-27 20:49:32', '::ffff:192.168.56.1', null, '1', '7');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` int(11) NOT NULL COMMENT '0=operador;1=supervisor;2=jefe;3=admin',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'operador', '1234', '0');
INSERT INTO `users` VALUES ('2', 'supervisor', '1234', '1');
INSERT INTO `users` VALUES ('3', 'jefe', '1234', '2');
INSERT INTO `users` VALUES ('4', 'admin', 'Admin', '3');
