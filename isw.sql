/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : isw

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-04-30 19:42:52
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

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
INSERT INTO `logs_login` VALUES ('17', '4', 'admin', '2017-04-29 00:22:25', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('18', '4', 'admin', '2017-04-29 00:37:33', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('19', '4', 'admin', '2017-04-29 00:41:10', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('20', '4', 'admin', '2017-04-29 01:15:06', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('21', '4', 'admin', '2017-04-30 14:23:58', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('22', '1', 'operador', '2017-04-30 14:27:28', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('23', '1', 'operador', '2017-04-30 14:29:02', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('24', '1', 'operador', '2017-04-30 14:30:22', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('25', '1', 'operador', '2017-04-30 14:48:01', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('26', '1', 'operador', '2017-04-30 16:52:41', '::ffff:127.0.0.1', null, '1', '2407');
INSERT INTO `logs_login` VALUES ('27', '1', 'operador', '2017-04-30 17:32:56', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('28', '1', 'operador', '2017-04-30 17:38:17', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('29', '1', 'operador', '2017-04-30 17:43:25', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('30', '2', 'supervisor', '2017-04-30 17:51:55', '::ffff:127.0.0.1', null, '1', '11');
INSERT INTO `logs_login` VALUES ('31', '2', 'supervisor', '2017-04-30 17:52:12', '::ffff:127.0.0.1', null, '1', '27');
INSERT INTO `logs_login` VALUES ('32', '1', 'operador', '2017-04-30 17:52:44', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('33', '2', 'supervisor', '2017-04-30 18:10:18', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('34', '1', 'operador', '2017-04-30 18:39:12', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('35', '1', 'operador', '2017-04-30 18:42:15', '::ffff:127.0.0.1', null, '1', '93');
INSERT INTO `logs_login` VALUES ('36', '2', 'supervisor', '2017-04-30 19:10:24', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('37', '2', 'supervisor', '2017-04-30 19:16:23', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('38', '1', 'operador', '2017-04-30 19:18:27', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('39', '1', 'operador', '2017-04-30 19:20:03', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('40', '2', 'supervisor', '2017-04-30 19:21:36', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('41', '-1', 'supervisor', '2017-04-30 19:22:10', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('42', '2', 'supervisor', '2017-04-30 19:22:16', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('43', '2', 'supervisor', '2017-04-30 19:52:18', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('44', '2', 'supervisor', '2017-04-30 19:55:39', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('45', '2', 'supervisor', '2017-04-30 19:56:06', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('46', '2', 'supervisor', '2017-04-30 19:56:43', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('47', '1', 'operador', '2017-04-30 19:57:24', '::ffff:127.0.0.1', null, '1', '12');
INSERT INTO `logs_login` VALUES ('48', '2', 'supervisor', '2017-04-30 20:01:50', '::ffff:127.0.0.1', null, '1', '5373');
INSERT INTO `logs_login` VALUES ('49', '2', 'supervisor', '2017-04-30 21:31:32', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('50', '2', 'supervisor', '2017-04-30 21:33:48', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('51', '2', 'supervisor', '2017-04-30 21:46:15', '::ffff:127.0.0.1', null, '1', null);

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `propietario` int(10) unsigned NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `fecha_aplazado` date DEFAULT NULL,
  `encargado` int(11) DEFAULT NULL,
  `fuente` varchar(255) DEFAULT NULL,
  `ip_origen` varchar(255) DEFAULT NULL,
  `ip_destino` varchar(255) DEFAULT NULL,
  `puerto` varchar(255) DEFAULT NULL,
  `protocolo` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `intencionalidad` varchar(255) DEFAULT NULL,
  `subarea` varchar(255) DEFAULT NULL,
  `sistema_seguridad` varchar(255) DEFAULT NULL,
  `fecha_operacion` datetime DEFAULT NULL,
  `dias_transcurridos` int(255) unsigned DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  `correo_origen` varchar(255) DEFAULT NULL,
  `correo_afectado` varchar(255) DEFAULT NULL,
  `eliminado` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tickets
-- ----------------------------
INSERT INTO `tickets` VALUES ('3', '1', '2017-04-30 17:39:12', null, '5', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '2016-08-05 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` int(11) NOT NULL COMMENT '0=operador;1=supervisor;2=jefe;3=admin',
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'operador', '1234', '0', '0');
INSERT INTO `users` VALUES ('2', 'supervisor', '1234', '1', '0');
INSERT INTO `users` VALUES ('3', 'jefe', '1234', '2', '0');
INSERT INTO `users` VALUES ('4', 'admin', 'Admin', '3', '0');
INSERT INTO `users` VALUES ('5', 'nuevoUsuario', 'clave', '0', '0');
