/*
Navicat MySQL Data Transfer

Source Server         : isw
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : isw

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-29 10:26:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kewords
-- ----------------------------
DROP TABLE IF EXISTS `kewords`;
CREATE TABLE `kewords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `palabra` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kewords
-- ----------------------------

-- ----------------------------
-- Table structure for keword_ticket
-- ----------------------------
DROP TABLE IF EXISTS `keword_ticket`;
CREATE TABLE `keword_ticket` (
  `id_ticket` int(10) NOT NULL,
  `id_keyword` int(10) NOT NULL,
  PRIMARY KEY (`id_ticket`,`id_keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keword_ticket
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of logs_login
-- ----------------------------
INSERT INTO `logs_login` VALUES ('2', '4', 'admin', '2017-04-27 19:46:11', '::ffff:192.168.56.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('3', '-1', 'laweadelaweaweonqlo', '2017-04-27 19:46:25', '::ffff:192.168.56.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('4', '-1', 'asdasdasd', '2017-04-27 19:48:01', '::ffff:192.168.56.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('5', '4', 'admin', '2017-04-27 20:07:44', '::ffff:192.168.56.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('6', '4', 'admin', '2017-04-27 20:14:58', '::ffff:192.168.56.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('7', '4', 'admin', '2017-04-27 20:17:24', '::ffff:192.168.56.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('8', '4', 'admin', '2017-04-27 20:18:38', '::ffff:192.168.56.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('9', '4', 'admin', '2017-04-27 20:19:31', '::ffff:192.168.56.1', null, '1', '3');
INSERT INTO `logs_login` VALUES ('10', '4', 'admin', '2017-04-27 20:48:27', '::ffff:192.168.56.1', null, '1', '1');
INSERT INTO `logs_login` VALUES ('11', '4', 'admin', '2017-04-27 20:48:38', '::ffff:192.168.56.1', null, '1', '0');
INSERT INTO `logs_login` VALUES ('12', '4', 'admin', '2017-04-27 20:49:32', '::ffff:192.168.56.1', null, '1', '7');
INSERT INTO `logs_login` VALUES ('13', '1', 'operador', '2017-04-28 04:09:04', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('14', '1', 'operador', '2017-04-28 04:10:30', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('15', '1', 'operador', '2017-04-28 04:13:03', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('16', '1', 'operador', '2017-04-28 04:14:09', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('17', '4', 'admin', '2017-04-29 00:22:25', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('18', '4', 'admin', '2017-04-29 00:37:33', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('19', '4', 'admin', '2017-04-29 00:41:10', '::ffff:127.0.0.1', null, '1', '17');
INSERT INTO `logs_login` VALUES ('20', '4', 'admin', '2017-04-29 01:15:06', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('21', '4', 'admin', '2017-04-30 14:23:58', '::ffff:127.0.0.1', null, '1', '612');
INSERT INTO `logs_login` VALUES ('22', '1', 'operador', '2017-04-30 14:27:28', '::ffff:127.0.0.1', null, '1', '120');
INSERT INTO `logs_login` VALUES ('23', '1', 'operador', '2017-04-30 14:29:02', '::ffff:127.0.0.1', null, '1', '72');
INSERT INTO `logs_login` VALUES ('24', '1', 'operador', '2017-04-30 14:30:22', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('25', '1', 'operador', '2017-04-30 14:48:01', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('26', '1', 'operador', '2017-04-30 16:52:41', '::ffff:127.0.0.1', null, '1', '2407');
INSERT INTO `logs_login` VALUES ('27', '1', 'operador', '2017-04-30 17:32:56', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('28', '1', 'operador', '2017-04-30 17:38:17', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('29', '1', 'operador', '2017-04-30 17:43:25', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('30', '2', 'supervisor', '2017-04-30 17:51:55', '::ffff:127.0.0.1', null, '1', '11');
INSERT INTO `logs_login` VALUES ('31', '2', 'supervisor', '2017-04-30 17:52:12', '::ffff:127.0.0.1', null, '1', '27');
INSERT INTO `logs_login` VALUES ('32', '1', 'operador', '2017-04-30 17:52:44', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('33', '2', 'supervisor', '2017-04-30 18:10:18', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('34', '1', 'operador', '2017-04-30 18:39:12', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('35', '1', 'operador', '2017-04-30 18:42:15', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('36', '2', 'supervisor', '2017-04-30 19:10:24', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('37', '2', 'supervisor', '2017-04-30 19:16:23', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('38', '1', 'operador', '2017-04-30 19:18:27', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('39', '1', 'operador', '2017-04-30 19:20:03', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('40', '2', 'supervisor', '2017-04-30 19:21:36', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('41', '-1', 'supervisor', '2017-04-30 19:22:10', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('42', '2', 'supervisor', '2017-04-30 19:22:16', '::ffff:127.0.0.1', null, '1', '17');
INSERT INTO `logs_login` VALUES ('43', '2', 'supervisor', '2017-04-30 19:52:18', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('44', '2', 'supervisor', '2017-04-30 19:55:39', '::ffff:127.0.0.1', null, '1', '612');
INSERT INTO `logs_login` VALUES ('45', '2', 'supervisor', '2017-04-30 19:56:06', '::ffff:127.0.0.1', null, '1', '120');
INSERT INTO `logs_login` VALUES ('46', '2', 'supervisor', '2017-04-30 19:56:43', '::ffff:127.0.0.1', null, '1', '72');
INSERT INTO `logs_login` VALUES ('47', '1', 'operador', '2017-04-30 19:57:24', '::ffff:127.0.0.1', null, '1', '12');
INSERT INTO `logs_login` VALUES ('48', '2', 'supervisor', '2017-04-30 20:01:50', '::ffff:127.0.0.1', null, '1', '5373');
INSERT INTO `logs_login` VALUES ('49', '2', 'supervisor', '2017-04-30 21:31:32', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('50', '2', 'supervisor', '2017-04-30 21:33:48', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('51', '2', 'supervisor', '2017-04-30 21:46:15', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('52', '4', 'admin', '2017-04-30 23:29:02', '::ffff:127.0.0.1', null, '1', '16');
INSERT INTO `logs_login` VALUES ('53', '4', 'admin', '2017-04-30 23:29:24', '::ffff:127.0.0.1', null, '1', '81');
INSERT INTO `logs_login` VALUES ('54', '1', 'operador', '2017-04-30 23:30:49', '::ffff:127.0.0.1', null, '1', '31');
INSERT INTO `logs_login` VALUES ('55', '2', 'supervisor', '2017-04-30 23:31:26', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('56', '1', 'operador', '2017-04-30 23:47:54', '::ffff:127.0.0.1', null, '1', '18');
INSERT INTO `logs_login` VALUES ('57', '2', 'supervisor', '2017-04-30 23:48:21', '::ffff:127.0.0.1', null, '1', '2166');
INSERT INTO `logs_login` VALUES ('58', '2', 'supervisor', '2017-05-01 01:13:47', '::ffff:127.0.0.1', null, '1', '649');
INSERT INTO `logs_login` VALUES ('59', '2', 'supervisor', '2017-05-01 01:25:16', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('60', '-1', 'supervisor', '2017-05-01 15:50:10', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('61', '-1', 'supervisor', '2017-05-01 15:50:40', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('62', '-1', 'operador', '2017-05-01 15:55:53', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('63', '-1', 'operador', '2017-05-01 15:56:44', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('64', '-1', 'operador', '2017-05-01 16:12:14', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('65', '-1', 'admin', '2017-05-01 16:12:53', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('66', '-1', 'nuevoUsuario', '2017-05-01 16:13:08', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('67', '2', 'supervisor', '2017-05-01 16:14:09', '::ffff:127.0.0.1', null, '1', '19');
INSERT INTO `logs_login` VALUES ('68', '4', 'admin', '2017-05-01 16:14:33', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('69', '2', 'supervisor', '2017-05-01 16:21:53', '::ffff:127.0.0.1', null, '1', '3');
INSERT INTO `logs_login` VALUES ('70', '4', 'admin', '2017-05-01 16:22:02', '::ffff:127.0.0.1', null, '1', '30');
INSERT INTO `logs_login` VALUES ('71', '6', 'usuario', '2017-05-01 16:22:37', '::ffff:127.0.0.1', null, '1', '130');
INSERT INTO `logs_login` VALUES ('72', '4', 'admin', '2017-05-01 16:24:54', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('73', '-1', 'admin', '2017-05-01 16:27:20', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('74', '4', 'admin', '2017-05-01 16:27:24', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('75', '4', 'admin', '2017-05-01 16:28:07', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('76', '4', 'admin', '2017-05-01 16:34:42', '::ffff:127.0.0.1', null, '1', '853');
INSERT INTO `logs_login` VALUES ('77', '1', 'operador', '2017-05-01 16:49:02', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('78', '4', 'admin', '2017-05-01 17:13:17', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('79', '4', 'admin', '2017-05-01 17:14:23', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('80', '4', 'admin', '2017-05-01 17:19:42', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('81', '4', 'admin', '2017-05-01 17:22:10', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('82', '4', 'admin', '2017-05-01 17:23:29', '::ffff:127.0.0.1', null, '1', '115');
INSERT INTO `logs_login` VALUES ('83', '-1', 'admin', '2017-05-01 17:25:45', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('84', '4', 'admin', '2017-05-01 17:25:51', '::ffff:127.0.0.1', null, '1', '4');
INSERT INTO `logs_login` VALUES ('85', '1', 'operador', '2017-05-01 17:26:02', '::ffff:127.0.0.1', null, '1', '399');
INSERT INTO `logs_login` VALUES ('86', '4', 'admin', '2017-05-01 17:32:44', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('87', '4', 'admin', '2017-05-01 17:38:30', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('88', '4', 'admin', '2017-05-01 17:42:19', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('89', '4', 'admin', '2017-05-01 17:42:56', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('90', '4', 'admin', '2017-05-01 17:45:41', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('91', '4', 'admin', '2017-05-01 17:46:56', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('92', '4', 'admin', '2017-05-01 17:48:51', '::ffff:127.0.0.1', null, '1', '17');
INSERT INTO `logs_login` VALUES ('93', '4', 'admin', '2017-05-01 17:50:49', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('94', '4', 'admin', '2017-05-01 17:55:06', '::ffff:127.0.0.1', null, '1', '612');
INSERT INTO `logs_login` VALUES ('95', '4', 'admin', '2017-05-01 17:56:53', '::ffff:127.0.0.1', null, '1', '120');
INSERT INTO `logs_login` VALUES ('96', '4', 'admin', '2017-05-01 17:58:25', '::ffff:127.0.0.1', null, '1', '72');
INSERT INTO `logs_login` VALUES ('97', '4', 'admin', '2017-05-01 18:03:14', '::ffff:127.0.0.1', null, '1', '2166');
INSERT INTO `logs_login` VALUES ('98', '2', 'supervisor', '2017-05-01 18:52:22', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('99', '1', 'operador', '2017-05-01 19:01:22', '::ffff:127.0.0.1', null, '1', '11');
INSERT INTO `logs_login` VALUES ('100', '5', 'nuevoUsuario', '2017-05-01 19:01:49', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('101', '-1', 'nuevoUsuario', '2017-05-01 19:04:06', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('102', '5', 'nuevoUsuario', '2017-05-01 19:04:12', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('103', '5', 'nuevoUsuario', '2017-05-01 19:05:21', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('104', '4', 'admin', '2017-05-02 00:31:22', '::ffff:127.0.0.1', null, '1', '37');
INSERT INTO `logs_login` VALUES ('105', '2', 'supervisor', '2017-05-02 00:36:59', '::ffff:127.0.0.1', null, '1', '388');
INSERT INTO `logs_login` VALUES ('106', '-1', 'asd', '2017-05-02 00:59:34', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('107', '-1', 'asd', '2017-05-02 01:00:38', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('108', '-1', 'asd', '2017-05-02 01:00:46', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('109', '-1', 'asd', '2017-05-02 01:01:08', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('110', '2', 'supervisor', '2017-05-02 01:01:37', '::ffff:127.0.0.1', null, '1', '60');
INSERT INTO `logs_login` VALUES ('111', '1', 'operador', '2017-05-02 00:07:43', '::ffff:127.0.0.1', null, '1', '4604');
INSERT INTO `logs_login` VALUES ('112', '4', 'admin', '2017-05-02 01:08:33', '::ffff:127.0.0.1', null, '1', '82');
INSERT INTO `logs_login` VALUES ('113', '4', 'admin', '2017-05-02 01:11:51', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('114', '4', 'admin', '2017-05-02 01:13:00', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('115', '2', 'supervisor', '2017-05-02 13:24:08', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('116', '1', 'operador', '2017-05-02 14:15:58', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('117', '2', 'supervisor', '2017-05-02 14:31:04', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('118', '2', 'supervisor', '2017-05-02 14:32:32', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('119', '2', 'supervisor', '2017-05-02 14:38:18', '::ffff:127.0.0.1', null, '1', '17');
INSERT INTO `logs_login` VALUES ('120', '2', 'supervisor', '2017-05-02 14:50:23', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('121', '2', 'supervisor', '2017-05-02 14:52:36', '::ffff:127.0.0.1', null, '1', '612');
INSERT INTO `logs_login` VALUES ('122', '2', 'supervisor', '2017-05-02 14:56:18', '::ffff:127.0.0.1', null, '1', '120');
INSERT INTO `logs_login` VALUES ('123', '2', 'supervisor', '2017-05-02 15:01:39', '::ffff:127.0.0.1', null, '1', '72');
INSERT INTO `logs_login` VALUES ('124', '2', 'supervisor', '2017-05-02 15:03:34', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('125', '2', 'supervisor', '2017-05-02 15:19:34', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('126', '2', 'supervisor', '2017-05-02 15:23:32', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('127', '2', 'supervisor', '2017-05-02 15:28:28', '::ffff:127.0.0.1', null, '1', '1095');
INSERT INTO `logs_login` VALUES ('128', '2', 'supervisor', '2017-05-02 15:29:28', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('129', '2', 'supervisor', '2017-05-02 15:31:24', '::ffff:127.0.0.1', null, '1', '45');
INSERT INTO `logs_login` VALUES ('130', '4', 'admin', '2017-05-02 19:36:59', '::ffff:127.0.0.1', null, '1', '654');
INSERT INTO `logs_login` VALUES ('131', '4', 'admin', '2017-05-02 19:43:03', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('132', '4', 'admin', '2017-05-02 20:19:08', '::ffff:127.0.0.1', null, '1', '341');
INSERT INTO `logs_login` VALUES ('133', '3', 'jefe', '2017-05-02 20:24:52', '::ffff:127.0.0.1', null, '1', '5');
INSERT INTO `logs_login` VALUES ('134', '4', 'admin', '2017-05-02 20:25:00', '::ffff:127.0.0.1', null, '1', '4475');
INSERT INTO `logs_login` VALUES ('135', '4', 'admin', '2017-05-02 21:40:37', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('136', '4', 'admin', '2017-05-03 02:37:19', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('137', '4', 'admin', '2017-05-03 02:53:48', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('138', '4', 'admin', '2017-05-03 02:57:43', '::ffff:127.0.0.1', null, '1', '501');
INSERT INTO `logs_login` VALUES ('139', '2', 'supervisor', '2017-05-03 03:06:08', '::ffff:127.0.0.1', null, '1', '112');
INSERT INTO `logs_login` VALUES ('140', '4', 'admin', '2017-05-03 03:08:06', '::ffff:127.0.0.1', null, '1', '54');
INSERT INTO `logs_login` VALUES ('141', '4', 'admin', '2017-05-03 03:09:04', '::ffff:127.0.0.1', null, '1', '18');
INSERT INTO `logs_login` VALUES ('142', '2', 'supervisor', '2017-05-03 03:09:26', '::ffff:127.0.0.1', null, '1', '109');
INSERT INTO `logs_login` VALUES ('143', '2', 'supervisor', '2017-05-03 03:11:22', '::ffff:127.0.0.1', null, '1', '57');
INSERT INTO `logs_login` VALUES ('144', '1', 'operador', '2017-05-03 03:12:39', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('145', '-1', 'nuevoUsuario', '2017-05-03 03:14:08', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('146', '-1', 'nuevoUsuario', '2017-05-03 03:14:14', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('147', '-1', 'nuevoUsuario', '2017-05-03 03:14:19', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('148', '2', 'supervisor', '2017-05-03 03:15:01', '::ffff:127.0.0.1', null, '1', '17');
INSERT INTO `logs_login` VALUES ('149', '1', 'operador', '2017-05-03 03:15:24', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('150', '2', 'supervisor', '2017-05-03 03:35:20', '::ffff:127.0.0.1', null, '1', '612');
INSERT INTO `logs_login` VALUES ('151', '1', 'operador', '2017-05-03 03:45:35', '::ffff:127.0.0.1', null, '1', '120');
INSERT INTO `logs_login` VALUES ('152', '2', 'supervisor', '2017-05-03 03:47:39', '::ffff:127.0.0.1', null, '1', '72');
INSERT INTO `logs_login` VALUES ('153', '4', 'admin', '2017-05-03 03:48:54', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('154', '4', 'admin', '2017-05-03 03:52:41', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('155', '4', 'admin', '2017-05-03 03:54:57', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('156', '4', 'admin', '2017-05-03 03:55:38', '::ffff:127.0.0.1', null, '1', '1095');
INSERT INTO `logs_login` VALUES ('157', '1', 'operador', '2017-05-03 04:15:02', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('158', '4', 'admin', '2017-05-03 04:46:43', '::ffff:127.0.0.1', null, '1', '45');
INSERT INTO `logs_login` VALUES ('159', '2', 'supervisor', '2017-05-18 22:30:00', '::ffff:127.0.0.1', null, '1', '654');
INSERT INTO `logs_login` VALUES ('160', '2', 'supervisor', '2017-05-18 23:25:01', '::ffff:127.0.0.1', null, '1', '321');
INSERT INTO `logs_login` VALUES ('161', '2', 'supervisor', '2017-06-04 20:50:06', '::ffff:127.0.0.1', null, '1', '12');
INSERT INTO `logs_login` VALUES ('162', '2', 'supervisor', '2017-06-04 21:14:30', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('163', '2', 'supervisor', '2017-06-04 21:38:11', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('164', '1', 'operador', '2017-06-04 22:50:42', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('165', '1', 'operador', '2017-06-04 23:24:36', '::ffff:127.0.0.1', null, '1', '500');
INSERT INTO `logs_login` VALUES ('166', '1', 'operador', '2017-06-04 23:32:05', '::ffff:127.0.0.1', null, '1', '60');
INSERT INTO `logs_login` VALUES ('167', '1', 'operador', '2017-06-04 23:32:34', '::ffff:127.0.0.1', null, '1', '4604');
INSERT INTO `logs_login` VALUES ('168', '2', 'supervisor', '2017-06-05 01:01:29', '::ffff:127.0.0.1', null, '1', '82');
INSERT INTO `logs_login` VALUES ('169', '1', 'operador', '2017-06-05 01:02:55', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('170', '2', 'supervisor', '2017-06-05 01:06:44', '::ffff:127.0.0.1', null, '1', '18');
INSERT INTO `logs_login` VALUES ('171', '2', 'supervisor', '2017-06-05 01:07:08', '::ffff:127.0.0.1', null, '1', '3');
INSERT INTO `logs_login` VALUES ('172', '1', 'operador', '2017-06-05 01:07:16', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('173', '2', 'supervisor', '2017-06-05 01:25:10', '::ffff:127.0.0.1', null, '1', '21');
INSERT INTO `logs_login` VALUES ('174', '3', 'jefe', '2017-06-05 01:25:34', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('175', '3', 'jefe', '2017-06-05 01:33:06', '::ffff:127.0.0.1', null, '1', '1469');
INSERT INTO `logs_login` VALUES ('176', '2', 'supervisor', '2017-06-05 01:57:39', '::ffff:127.0.0.1', null, '1', '536');
INSERT INTO `logs_login` VALUES ('177', '3', 'jefe', '2017-06-05 02:06:40', '::ffff:127.0.0.1', null, '1', '561');
INSERT INTO `logs_login` VALUES ('178', '3', 'jefe', '2017-06-05 02:16:07', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('179', '3', 'jefe', '2017-06-05 02:30:01', '::ffff:127.0.0.1', null, '1', '45');
INSERT INTO `logs_login` VALUES ('180', '3', 'jefe', '2017-06-05 02:30:56', '::ffff:127.0.0.1', null, '1', '654');
INSERT INTO `logs_login` VALUES ('181', '1', 'operador', '2017-06-05 15:28:47', '::ffff:127.0.0.1', null, '1', '321');
INSERT INTO `logs_login` VALUES ('182', '2', 'supervisor', '2017-06-05 15:29:23', '::ffff:127.0.0.1', null, '1', '12');
INSERT INTO `logs_login` VALUES ('183', '2', 'supervisor', '2017-06-05 21:19:28', '::ffff:127.0.0.1', null, '1', '4965');
INSERT INTO `logs_login` VALUES ('184', '1', 'operador', '2017-06-05 22:42:18', '::ffff:127.0.0.1', null, '1', '2322');
INSERT INTO `logs_login` VALUES ('185', '2', 'supervisor', '2017-06-05 23:21:06', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('186', '1', 'operador', '2017-06-05 23:48:09', '::ffff:127.0.0.1', null, '1', '105');
INSERT INTO `logs_login` VALUES ('187', '2', 'supervisor', '2017-06-05 23:49:58', '::ffff:127.0.0.1', null, '1', '22');
INSERT INTO `logs_login` VALUES ('188', '1', 'operador', '2017-06-05 23:50:24', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('189', '1', 'operador', '2017-06-05 23:51:41', '::ffff:127.0.0.1', null, '1', '45');
INSERT INTO `logs_login` VALUES ('190', '2', 'supervisor', '2017-06-06 05:17:42', '::ffff:127.0.0.1', null, '1', '654');
INSERT INTO `logs_login` VALUES ('191', '1', 'operador', '2017-06-06 15:07:47', '::ffff:127.0.0.1', null, '1', '321');
INSERT INTO `logs_login` VALUES ('192', '1', 'operador', '2017-06-06 15:09:22', '::ffff:127.0.0.1', null, '1', '12');
INSERT INTO `logs_login` VALUES ('193', '1', 'operador', '2017-06-06 15:11:43', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('194', '-1', 'operador', '2017-06-06 15:13:19', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('195', '1', 'operador', '2017-06-06 15:13:24', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('196', '1', 'operador', '2017-06-06 15:18:38', '::ffff:127.0.0.1', null, '1', '500');
INSERT INTO `logs_login` VALUES ('197', '1', 'operador', '2017-06-06 15:20:08', '::ffff:127.0.0.1', null, '1', '60');
INSERT INTO `logs_login` VALUES ('198', '1', 'operador', '2017-06-06 15:21:29', '::ffff:127.0.0.1', null, '1', '1531');
INSERT INTO `logs_login` VALUES ('199', '1', 'operador', '2017-06-06 15:48:45', '::ffff:127.0.0.1', null, '1', '2');
INSERT INTO `logs_login` VALUES ('200', '1', 'operador', '2017-08-20 15:06:34', '::ffff:127.0.0.1', null, '1', '5');
INSERT INTO `logs_login` VALUES ('201', '1', 'operador', '2017-08-20 15:14:42', '::ffff:127.0.0.1', null, '1', '3312');
INSERT INTO `logs_login` VALUES ('202', '1', 'operador', '2017-08-20 15:17:04', '::ffff:127.0.0.1', null, '1', '8612');
INSERT INTO `logs_login` VALUES ('203', '1', 'operador', '2017-08-20 15:32:48', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('204', '1', 'operador', '2017-08-20 15:40:37', '::ffff:127.0.0.1', null, '1', '215');
INSERT INTO `logs_login` VALUES ('205', '1', 'operador', '2017-08-20 15:41:28', '::ffff:127.0.0.1', null, '1', '5468');
INSERT INTO `logs_login` VALUES ('206', '1', 'operador', '2017-08-20 15:42:26', '::ffff:127.0.0.1', null, '1', '5');
INSERT INTO `logs_login` VALUES ('207', '1', 'operador', '2017-08-20 15:44:39', '::ffff:127.0.0.1', null, '1', '321');
INSERT INTO `logs_login` VALUES ('208', '1', 'operador', '2017-08-20 15:46:33', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('209', '1', 'operador', '2017-08-20 15:48:27', '::ffff:127.0.0.1', null, '1', '45');
INSERT INTO `logs_login` VALUES ('210', '1', 'operador', '2017-08-20 15:53:38', '::ffff:127.0.0.1', null, '1', '654');
INSERT INTO `logs_login` VALUES ('211', '1', 'operador', '2017-08-20 15:57:45', '::ffff:127.0.0.1', null, '1', '321');
INSERT INTO `logs_login` VALUES ('212', '1', 'operador', '2017-08-20 15:59:10', '::ffff:127.0.0.1', null, '1', '12');
INSERT INTO `logs_login` VALUES ('213', '1', 'operador', '2017-08-20 16:02:40', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('214', '2', 'supervisor', '2017-08-20 16:19:30', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('215', '-1', 'supervisor', '2017-08-20 16:32:10', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('216', '2', 'supervisor', '2017-08-20 16:32:16', '::ffff:127.0.0.1', null, '1', '500');
INSERT INTO `logs_login` VALUES ('217', '2', 'supervisor', '2017-08-20 16:37:43', '::ffff:127.0.0.1', null, '1', '60');
INSERT INTO `logs_login` VALUES ('218', '2', 'supervisor', '2017-08-20 16:42:06', '::ffff:127.0.0.1', null, '1', '1531');
INSERT INTO `logs_login` VALUES ('219', '2', 'supervisor', '2017-08-20 17:41:16', '::ffff:127.0.0.1', null, '1', '2');
INSERT INTO `logs_login` VALUES ('220', '2', 'supervisor', '2017-08-20 17:43:13', '::ffff:127.0.0.1', null, '1', '753');
INSERT INTO `logs_login` VALUES ('221', '2', 'supervisor', '2017-08-20 17:58:10', '::ffff:127.0.0.1', null, '1', '864');
INSERT INTO `logs_login` VALUES ('222', '2', 'supervisor', '2017-08-20 18:13:25', '::ffff:127.0.0.1', null, '1', '225');
INSERT INTO `logs_login` VALUES ('223', '2', 'supervisor', '2017-08-20 18:16:29', '::ffff:127.0.0.1', null, '1', '322');
INSERT INTO `logs_login` VALUES ('224', '2', 'supervisor', '2017-08-20 18:20:54', '::ffff:127.0.0.1', null, '1', '2132');
INSERT INTO `logs_login` VALUES ('225', '2', 'supervisor', '2017-08-20 18:29:19', '::ffff:127.0.0.1', null, '1', '2213');
INSERT INTO `logs_login` VALUES ('226', '2', 'supervisor', '2017-08-20 18:30:51', '::ffff:127.0.0.1', null, '1', '48');
INSERT INTO `logs_login` VALUES ('227', '3', 'jefe', '2017-08-20 18:31:44', '::ffff:127.0.0.1', null, '1', '1856');
INSERT INTO `logs_login` VALUES ('228', '-1', 'admin', '2017-08-20 19:02:45', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('229', '-1', 'admin', '2017-08-20 19:02:49', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('230', '-1', 'admin', '2017-08-20 19:02:53', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('231', '4', 'admin', '2017-08-20 19:03:09', '::ffff:127.0.0.1', null, '1', '2155');
INSERT INTO `logs_login` VALUES ('232', '3', 'jefe', '2017-08-28 17:16:21', '::ffff:127.0.0.1', null, '1', '2153');
INSERT INTO `logs_login` VALUES ('233', '3', 'jefe', '2017-08-28 17:39:04', '::ffff:127.0.0.1', null, '1', '2484');
INSERT INTO `logs_login` VALUES ('234', '2', 'supervisor', '2017-08-28 18:20:35', '::ffff:127.0.0.1', null, '1', '600');
INSERT INTO `logs_login` VALUES ('235', '2', 'supervisor', '2017-08-28 19:06:41', '::ffff:127.0.0.1', null, '1', '8423');
INSERT INTO `logs_login` VALUES ('236', '2', 'supervisor', '2017-08-28 19:30:00', '::ffff:127.0.0.1', null, '1', '45');
INSERT INTO `logs_login` VALUES ('237', '2', 'supervisor', '2017-08-28 19:40:46', '::ffff:127.0.0.1', null, '1', '654');
INSERT INTO `logs_login` VALUES ('238', '2', 'supervisor', '2017-08-28 19:52:49', '::ffff:127.0.0.1', null, '1', '321');
INSERT INTO `logs_login` VALUES ('239', '2', 'supervisor', '2017-08-28 19:58:02', '::ffff:127.0.0.1', null, '1', '12');
INSERT INTO `logs_login` VALUES ('240', '2', 'supervisor', '2017-08-28 20:23:01', '::ffff:127.0.0.1', null, '1', '5163');
INSERT INTO `logs_login` VALUES ('241', '2', 'supervisor', '2017-08-28 20:25:35', '::ffff:127.0.0.1', null, '1', '2315');
INSERT INTO `logs_login` VALUES ('242', '2', 'supervisor', '2017-08-28 20:28:36', '::ffff:127.0.0.1', null, '1', '456');
INSERT INTO `logs_login` VALUES ('243', '2', 'supervisor', '2017-08-28 20:31:29', '::ffff:127.0.0.1', null, '1', '500');
INSERT INTO `logs_login` VALUES ('244', '2', 'supervisor', '2017-08-28 20:34:41', '::ffff:127.0.0.1', null, '1', '60');
INSERT INTO `logs_login` VALUES ('245', '2', 'supervisor', '2017-08-28 20:36:19', '::ffff:127.0.0.1', null, '1', '1531');
INSERT INTO `logs_login` VALUES ('246', '2', 'supervisor', '2017-08-28 20:46:26', '::ffff:127.0.0.1', null, '1', '2');
INSERT INTO `logs_login` VALUES ('247', '2', 'supervisor', '2017-08-28 20:48:00', '::ffff:127.0.0.1', null, '1', '5');
INSERT INTO `logs_login` VALUES ('248', '2', 'Supervisor', '2017-08-28 20:54:55', '::ffff:127.0.0.1', null, '1', '3312');
INSERT INTO `logs_login` VALUES ('249', '2', 'supervisor', '2017-08-28 20:58:34', '::ffff:127.0.0.1', null, '1', '8612');
INSERT INTO `logs_login` VALUES ('250', '2', 'supervisor', '2017-08-28 22:09:18', '::ffff:127.0.0.1', null, '1', '85');
INSERT INTO `logs_login` VALUES ('251', '2', 'supervisor', '2017-08-28 22:44:21', '::ffff:127.0.0.1', null, '1', '215');
INSERT INTO `logs_login` VALUES ('252', '2', 'supervisor', '2017-08-28 23:00:55', '::ffff:127.0.0.1', null, '1', '5468');
INSERT INTO `logs_login` VALUES ('253', '2', 'supervisor', '2017-08-29 00:11:29', '::ffff:127.0.0.1', null, '1', '5');
INSERT INTO `logs_login` VALUES ('254', '2', 'supervisor', '2017-08-29 00:17:47', '::ffff:127.0.0.1', null, '1', '321');
INSERT INTO `logs_login` VALUES ('255', '2', 'supervisor', '2017-08-29 00:19:09', '::ffff:127.0.0.1', null, '1', '321');
INSERT INTO `logs_login` VALUES ('256', '2', 'supervisor', '2017-08-29 00:25:51', '::ffff:127.0.0.1', null, '1', '123');
INSERT INTO `logs_login` VALUES ('257', '2', 'supervisor', '2017-08-29 13:08:13', '::ffff:127.0.0.1', null, '1', '84');
INSERT INTO `logs_login` VALUES ('258', '2', 'supervisor', '2017-08-29 13:16:38', '::ffff:127.0.0.1', null, '1', '178');
INSERT INTO `logs_login` VALUES ('259', '-1', 'admin', '2017-08-29 13:19:40', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('260', '-1', 'admin', '2017-08-29 13:19:50', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('261', '-1', 'admin', '2017-08-29 13:19:55', '::ffff:127.0.0.1', null, '0', null);
INSERT INTO `logs_login` VALUES ('262', '4', 'admin', '2017-08-29 13:20:04', '::ffff:127.0.0.1', null, '1', null);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `userCreator` int(11) DEFAULT NULL,
  `accepted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fecha` datetime DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('6', '1', 'Te han asignado un ticket.', '2', '0', '2017-06-05 19:50:15', '/users/viewTickets/3');
INSERT INTO `notifications` VALUES ('7', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:07:52', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('8', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:15:02', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('9', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:17:31', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('10', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:33:10', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('11', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:40:59', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('12', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:41:42', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('13', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:42:39', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('14', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:44:59', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('15', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:46:55', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('16', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:48:50', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('17', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:53:54', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('18', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:58:01', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('19', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 12:59:28', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('20', '2', 'Hay un ticket nuevo sin encargado.', '1', '0', '2017-08-20 13:02:56', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('21', '2', 'Hay un ticket nuevo sin encargado.', '2', '0', '2017-08-20 13:21:18', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('22', '3', 'Un supervisor ha modificado un ticket.', '2', '0', '2017-08-20 13:48:40', '/users/viewTickets/66');
INSERT INTO `notifications` VALUES ('23', '3', 'Un usuario ha cerrado un ticket.', '2', '0', '2017-08-20 15:17:37', '/users/viewTickets/4');
INSERT INTO `notifications` VALUES ('24', '3', 'Un usuario ha cerrado un ticket.', '2', '0', '2017-08-20 15:31:16', '/users/viewTickets/3');
INSERT INTO `notifications` VALUES ('25', '3', 'Un jefe ha re-abierto un ticket.', '3', '1', '2017-08-28 14:43:22', '/users/viewTickets/3');
INSERT INTO `notifications` VALUES ('26', '2', 'Hay un ticket nuevo sin encargado.', '2', '0', '2017-08-29 21:16:46', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('27', '2', 'Hay un ticket nuevo sin encargado.', '2', '0', '2017-08-29 21:18:33', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('28', '2', 'Hay un ticket nuevo sin encargado.', '2', '0', '2017-08-29 21:19:43', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('29', '2', 'Hay un ticket nuevo sin encargado.', '2', '0', '2017-08-29 21:26:16', '/users/viewTickets/');
INSERT INTO `notifications` VALUES ('30', '2', 'Hay un ticket nuevo sin encargado.', '2', '0', '2017-08-29 21:27:28', '/users/viewTickets/');

-- ----------------------------
-- Table structure for ticketdata
-- ----------------------------
DROP TABLE IF EXISTS `ticketdata`;
CREATE TABLE `ticketdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticketId` int(10) unsigned NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  `fecha` datetime NOT NULL,
  `antecedente` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `aceptado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `eliminado` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketdata
-- ----------------------------
INSERT INTO `ticketdata` VALUES ('1', '3', '2', '2017-05-02 15:04:00', 'me jakiaron', 'pauta6.pdf', '0', '0');
INSERT INTO `ticketdata` VALUES ('2', '3', '2', '2017-05-02 15:23:48', 'me jakiaron denuvo :C', null, '0', '0');
INSERT INTO `ticketdata` VALUES ('3', '3', '2', '2017-05-02 15:25:55', 'asd', 'Requerimientos .pdf', '0', '0');
INSERT INTO `ticketdata` VALUES ('4', '3', '2', '2017-05-02 15:28:57', 'asdasdasd', 'Requerimientos .pdf', '0', '0');
INSERT INTO `ticketdata` VALUES ('5', '3', '2', '2017-05-02 15:31:47', 'adsasdadadds', 'new Requerimientos .pdf', '0', '0');

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
  `eliminado_por` int(10) unsigned DEFAULT NULL,
  `eliminado_razon` varchar(255) DEFAULT NULL,
  `vinculo` int(10) unsigned DEFAULT NULL,
  `estado` int(10) unsigned DEFAULT '0',
  `cerrado_por` int(255) unsigned DEFAULT NULL,
  `cerrado_razon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tickets
-- ----------------------------
INSERT INTO `tickets` VALUES ('3', '1', '2017-04-30 17:39:12', null, '1', 'asd', 'asd', 'asd', 'asd', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2016-08-05 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', null, null, null, '0', '2', 'wea de la wea');
INSERT INTO `tickets` VALUES ('4', '2', '2017-04-30 23:32:39', '2017-06-04', '1', 'asd', 'asd', 'asd', 'asd', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-04-18 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '1', null, null, null, '0', '2', 'undefined');
INSERT INTO `tickets` VALUES ('5', '2', '2017-05-03 03:10:28', null, null, 'fuente', '123.123.123.123', '123.123.123.123', '9999', 'protocolo', 'social', 'intencionalidad', 'sub', 'seguridad', '2017-05-31 00:00:00', null, 'comentarios', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('6', '2', '2017-06-05 01:02:26', null, '1', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'web', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('7', '2', '2017-06-01 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'explotacion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('8', '2', '2017-06-01 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'malicioso', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('9', '2', '2017-06-03 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('10', '2', '2017-06-06 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('11', '2', '2017-06-04 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'social', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('12', '2', '2017-06-02 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'web', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('13', '2', '2017-06-01 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'explotacion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('14', '2', '2017-06-06 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'malicioso', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('15', '2', '2017-06-01 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('16', '2', '2017-06-03 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('17', '2', '2017-06-02 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('18', '2', '2017-06-05 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('19', '2', '2017-06-02 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('20', '2', '2017-06-01 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'social', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('21', '2', '2017-06-05 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'web', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('22', '2', '2017-06-02 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('23', '2', '2017-06-02 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('24', '2', '2017-05-01 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'social', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('25', '2', '2017-05-03 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'web', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('26', '2', '2017-05-01 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'explotacion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('27', '2', '2017-05-05 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'malicioso', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('28', '2', '2017-05-02 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('29', '2', '2017-05-25 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('30', '2', '2017-05-03 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'social', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('31', '2', '2017-05-02 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'web', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('32', '2', '2017-05-24 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'explotacion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('33', '2', '2017-05-15 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'malicioso', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('34', '2', '2017-05-27 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('35', '2', '2017-05-24 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('36', '2', '2017-06-05 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('37', '2', '2017-06-05 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'social', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('38', '2', '2017-06-05 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('39', '2', '2017-05-15 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'social', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('40', '2', '2017-05-10 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'web', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('41', '2', '2017-05-08 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'explotacion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('42', '2', '2017-05-21 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'malicioso', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('43', '2', '2017-05-22 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('44', '2', '2017-05-23 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('45', '2', '2017-05-25 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'social', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('46', '2', '2017-05-26 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'web', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('47', '2', '2017-05-17 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'explotacion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('48', '2', '2017-05-18 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'malicioso', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('49', '2', '2017-05-19 01:02:26', '2017-05-01', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('50', '2', '2017-05-13 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'exposicion', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, null, '0', null, null);
INSERT INTO `tickets` VALUES ('51', '2', '2017-05-01 01:02:26', '2017-07-10', '0', 'fuente', '0.0.0.0', '1.1.1.1', '443', 'asd', 'almacenamiento', 'asd', 'asd', 'asd', '2017-06-21 00:00:00', null, 'asd', 'asd@asd.com', 'asd@asd.com', '0', '0', null, '66', '0', null, null);
INSERT INTO `tickets` VALUES ('52', '1', '2017-08-20 11:07:52', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'social', '1', 'Subarea', 'SS', '2017-08-02 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '51', '0', null, null);
INSERT INTO `tickets` VALUES ('53', '1', '2017-08-20 11:15:02', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'web', '1', 'Subarea', 'SS', '2014-11-30 00:00:00', null, '', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '51', '0', null, null);
INSERT INTO `tickets` VALUES ('54', '1', '2017-08-20 11:17:31', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'explotacion', '1', 'Subarea', 'SS', '2015-10-30 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '65', '0', null, null);
INSERT INTO `tickets` VALUES ('55', '1', '2017-08-20 11:33:10', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'malicioso', '1', 'Subarea', 'SS', '2015-11-30 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '51', '0', null, null);
INSERT INTO `tickets` VALUES ('56', '1', '2017-08-20 11:40:59', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'exposicion', '1', 'Subarea', 'SS', '2015-12-30 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '52', '0', null, null);
INSERT INTO `tickets` VALUES ('57', '1', '2017-08-20 11:41:42', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'almacenamiento', '1', 'Subarea', 'SS', '2016-11-29 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '51', '0', null, null);
INSERT INTO `tickets` VALUES ('58', '1', '2017-08-20 11:42:39', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'social', '1', 'Subarea', 'SS', '2015-11-29 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '51', '0', null, null);
INSERT INTO `tickets` VALUES ('59', '1', '2017-08-20 11:44:59', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'web', '1', 'Subarea', 'SS', '2015-11-29 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '54', '0', null, null);
INSERT INTO `tickets` VALUES ('60', '1', '2017-08-20 11:46:55', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'explotacion', '1', 'Subarea', 'SS', '2015-11-30 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '54', '0', null, null);
INSERT INTO `tickets` VALUES ('61', '1', '2017-08-20 11:48:50', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'exposicion', '1', 'Subarea', 'SS', '2015-11-29 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '54', '0', null, null);
INSERT INTO `tickets` VALUES ('62', '1', '2017-08-20 11:53:54', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'almacenamiento', '1', 'Subarea', 'SS', '2016-11-30 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '54', '0', null, null);
INSERT INTO `tickets` VALUES ('63', '1', '2017-08-20 11:58:01', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'social', '1', 'Subarea', 'SS', '2016-11-30 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '54', '0', null, null);
INSERT INTO `tickets` VALUES ('64', '1', '2017-08-20 11:59:28', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'web', '1', 'Subarea', 'SS', '2016-11-30 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '55', '0', null, null);
INSERT INTO `tickets` VALUES ('65', '1', '2017-08-20 12:02:56', null, null, 'Fuente', '1.1.1.1', '1.1.1.2', '345', 'Protocolo', 'explotacion', '1', 'Subarea', 'SS', '2015-11-30 00:00:00', null, 'nada', 'corre@gmail.com', 'correo2@gmail.com', '0', null, null, '54', '0', null, null);
INSERT INTO `tickets` VALUES ('66', '2', '2017-08-20 12:21:18', null, null, 'fuente', '1.1.1.1', '1.1.1.2', '443', 'proto', 'malicioso', 'inte', 'fuente', 'sis', '2017-08-08 00:00:00', null, 'asd', 'mail@mail.com', 'mail@mail.com', '0', null, null, '63', '0', null, null);

-- ----------------------------
-- Table structure for ticketskeywords
-- ----------------------------
DROP TABLE IF EXISTS `ticketskeywords`;
CREATE TABLE `ticketskeywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticketId` int(10) unsigned NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ticketskeywords
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
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'operador', '$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK', '0', '0');
INSERT INTO `users` VALUES ('2', 'supervisor', '$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK', '1', '0');
INSERT INTO `users` VALUES ('3', 'jefe', '$2a$08$R9JAOmzbQ/bKw8TQHavWluGxMxEqTB4tstCRHMDg52ucHHi2hdyHK', '2', '0');
INSERT INTO `users` VALUES ('4', 'admin', '$2a$08$K3oKGnPhuojiHJUJzQ0Kz.VA0aNDOHDEG1OPtVONwCknj4FUbktHu', '3', '0');
INSERT INTO `users` VALUES ('5', 'nuevoUsuario', '$2a$08$9CEPQaWUTz2Zwesib3Rtku411Cucf/f9JUy8940.xdgmoJAiEVG.e', '0', '0');
INSERT INTO `users` VALUES ('8', 'usuarioParaEliminar', '$2a$08$7NGZu1y6ImjBYSECGGTIxuP0NdElwQYOzRy7CHBZ/ak9sgNXfC2qq', '2', '1');
SET FOREIGN_KEY_CHECKS=1;
