/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : isw

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-28 01:17:34
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
INSERT INTO `logs_login` VALUES ('13', '1', 'operador', '2017-04-28 04:09:04', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('14', '1', 'operador', '2017-04-28 04:10:30', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('15', '1', 'operador', '2017-04-28 04:13:03', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('16', '1', 'operador', '2017-04-28 04:14:09', '::ffff:127.0.0.1', null, '1', null);

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `propietario` int(10) unsigned DEFAULT NULL,
  `estado` int(10) unsigned NOT NULL COMMENT 'Activo: 0, Aplazado: 1',
  `fuente` varchar(255) DEFAULT NULL,
  `ip_origen` varchar(255) DEFAULT NULL,
  `ip_destino` varchar(255) DEFAULT NULL,
  `puerto` varchar(255) DEFAULT NULL,
  `protocolo` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `intencionalidad` varchar(255) DEFAULT NULL,
  `subarea` varchar(255) DEFAULT NULL,
  `sistema_seguridad` varchar(255) DEFAULT NULL,
  `fecha_operacion` varchar(255) DEFAULT NULL,
  `dias_transcurridos` int(255) unsigned DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  `correo_origen` varchar(255) DEFAULT NULL,
  `correo_afectado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tickets
-- ----------------------------
INSERT INTO `tickets` VALUES ('1', '1', '0', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '2017-04-28', 'asd', null, 'asd@asd.com', 'asd@asd.com', null);

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
