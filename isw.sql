/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : isw

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-05-01 16:07:32
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
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

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
INSERT INTO `logs_login` VALUES ('52', '4', 'admin', '2017-04-30 23:29:02', '::ffff:127.0.0.1', null, '1', '16');
INSERT INTO `logs_login` VALUES ('53', '4', 'admin', '2017-04-30 23:29:24', '::ffff:127.0.0.1', null, '1', '81');
INSERT INTO `logs_login` VALUES ('54', '1', 'operador', '2017-04-30 23:30:49', '::ffff:127.0.0.1', null, '1', '31');
INSERT INTO `logs_login` VALUES ('55', '2', 'supervisor', '2017-04-30 23:31:26', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('56', '1', 'operador', '2017-04-30 23:47:54', '::ffff:127.0.0.1', null, '1', '18');
INSERT INTO `logs_login` VALUES ('57', '2', 'supervisor', '2017-04-30 23:48:21', '::ffff:127.0.0.1', null, '1', '2166');
INSERT INTO `logs_login` VALUES ('58', '2', 'supervisor', '2017-05-01 01:13:47', '::ffff:127.0.0.1', null, '1', '649');
INSERT INTO `logs_login` VALUES ('59', '2', 'supervisor', '2017-05-01 01:25:16', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('60', '-1', 'supervisor', '2017-05-01 15:50:10', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('61', '-1', 'supervisor', '2017-05-01 15:50:40', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('62', '-1', 'operador', '2017-05-01 15:55:53', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('63', '-1', 'operador', '2017-05-01 15:56:44', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('64', '-1', 'operador', '2017-05-01 16:12:14', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('65', '-1', 'admin', '2017-05-01 16:12:53', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('66', '-1', 'nuevoUsuario', '2017-05-01 16:13:08', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('67', '2', 'supervisor', '2017-05-01 16:14:09', '::ffff:127.0.0.1', null, '1', '19');
INSERT INTO `logs_login` VALUES ('68', '4', 'admin', '2017-05-01 16:14:33', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('69', '2', 'supervisor', '2017-05-01 16:21:53', '::ffff:127.0.0.1', null, '1', '3');
INSERT INTO `logs_login` VALUES ('70', '4', 'admin', '2017-05-01 16:22:02', '::ffff:127.0.0.1', null, '1', '30');
INSERT INTO `logs_login` VALUES ('71', '6', 'usuario', '2017-05-01 16:22:37', '::ffff:127.0.0.1', null, '1', '130');
INSERT INTO `logs_login` VALUES ('72', '4', 'admin', '2017-05-01 16:24:54', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('73', '-1', 'admin', '2017-05-01 16:27:20', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('74', '4', 'admin', '2017-05-01 16:27:24', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('75', '4', 'admin', '2017-05-01 16:28:07', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('76', '4', 'admin', '2017-05-01 16:34:42', '::ffff:127.0.0.1', null, '1', '853');
INSERT INTO `logs_login` VALUES ('77', '1', 'operador', '2017-05-01 16:49:02', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('78', '4', 'admin', '2017-05-01 17:13:17', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('79', '4', 'admin', '2017-05-01 17:14:23', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('80', '4', 'admin', '2017-05-01 17:19:42', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('81', '4', 'admin', '2017-05-01 17:22:10', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('82', '4', 'admin', '2017-05-01 17:23:29', '::ffff:127.0.0.1', null, '1', '115');
INSERT INTO `logs_login` VALUES ('83', '-1', 'admin', '2017-05-01 17:25:45', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('84', '4', 'admin', '2017-05-01 17:25:51', '::ffff:127.0.0.1', null, '1', '4');
INSERT INTO `logs_login` VALUES ('85', '1', 'operador', '2017-05-01 17:26:02', '::ffff:127.0.0.1', null, '1', '399');
INSERT INTO `logs_login` VALUES ('86', '4', 'admin', '2017-05-01 17:32:44', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('87', '4', 'admin', '2017-05-01 17:38:30', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('88', '4', 'admin', '2017-05-01 17:42:19', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('89', '4', 'admin', '2017-05-01 17:42:56', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('90', '4', 'admin', '2017-05-01 17:45:41', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('91', '4', 'admin', '2017-05-01 17:46:56', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('92', '4', 'admin', '2017-05-01 17:48:51', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('93', '4', 'admin', '2017-05-01 17:50:49', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('94', '4', 'admin', '2017-05-01 17:55:06', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('95', '4', 'admin', '2017-05-01 17:56:53', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('96', '4', 'admin', '2017-05-01 17:58:25', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('97', '4', 'admin', '2017-05-01 18:03:14', '::ffff:127.0.0.1', null, '1', '2166');
INSERT INTO `logs_login` VALUES ('98', '2', 'supervisor', '2017-05-01 18:52:22', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('99', '1', 'operador', '2017-05-01 19:01:22', '::ffff:127.0.0.1', null, '1', '11');
INSERT INTO `logs_login` VALUES ('100', '5', 'nuevoUsuario', '2017-05-01 19:01:49', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('101', '-1', 'nuevoUsuario', '2017-05-01 19:04:06', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('102', '5', 'nuevoUsuario', '2017-05-01 19:04:12', '::ffff:127.0.0.1', null, '1', null);
INSERT INTO `logs_login` VALUES ('103', '5', 'nuevoUsuario', '2017-05-01 19:05:21', '::ffff:127.0.0.1', null, '1', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tickets
-- ----------------------------
INSERT INTO `tickets` VALUES ('3', '1', '2017-04-30 17:39:12', null, '5', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '2016-08-05 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0');
INSERT INTO `tickets` VALUES ('4', '2', '2017-04-30 23:32:39', null, null, 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', 'asd', '2017-04-18 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'operador', '$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK', '0', '0');
INSERT INTO `users` VALUES ('2', 'supervisor', '$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK', '1', '0');
INSERT INTO `users` VALUES ('3', 'jefe', '$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK', '2', '0');
INSERT INTO `users` VALUES ('4', 'admin', '$2a$08$K3oKGnPhuojiHJUJzQ0Kz.VA0aNDOHDEG1OPtVONwCknj4FUbktHu', '3', '0');
INSERT INTO `users` VALUES ('5', 'nuevoUsuario', '$2a$08$9CEPQaWUTz2Zwesib3Rtku411Cucf/f9JUy8940.xdgmoJAiEVG.e', '0', '0');
INSERT INTO `users` VALUES ('6', 'usuario', '$2a$08$FLd8px4oDdrKjyirpSoZf.jBJdJM9Csortfk8oWyGxq9u62u18iDC', '2', '0');
