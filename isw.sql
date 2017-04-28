/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : isw

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-27 21:34:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for logs_login
-- ----------------------------
DROP TABLE IF EXISTS `logs_login`;
CREATE TABLE `logs_login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ip_proxy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logs_login
-- ----------------------------

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) DEFAULT NULL,
  `fuente` varchar(255) DEFAULT NULL,
  `ip_origen` varchar(255) DEFAULT NULL,
  `ip_destino` varchar(255) DEFAULT NULL,
  `puerto` varchar(255) DEFAULT NULL,
  `propietario` varchar(255) DEFAULT NULL,
  `protocolo` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `intencionalidad` varchar(255) DEFAULT NULL,
  `subarea` varchar(255) DEFAULT NULL,
  `sistema_seguridad` varchar(255) DEFAULT NULL,
  `fecha_operacion` varchar(255) DEFAULT NULL,
  `dias_transcurridos` varchar(255) DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  `correo_origen` varchar(255) DEFAULT NULL,
  `correo_afectado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tickets
-- ----------------------------

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
