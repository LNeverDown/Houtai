/*
 Navicat Premium Data Transfer

 Source Server         : test2
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3307
 Source Schema         : authbase

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 08/05/2024 20:44:19
*/

CREATE DATABASE IF NOT EXISTS `authbase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `authbase`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for syonline
-- ----------------------------
DROP TABLE IF EXISTS `syonline`;
CREATE TABLE `syonline`  (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CREATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `IP` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `LOGINNAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `TYPE` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syonline
-- ----------------------------
INSERT INTO `syonline` VALUES ('2b1eed61-372d-4de3-82b1-11ef2210f191', '2024-05-08 20:21:04', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('472c02bd-a601-40fc-b9bc-2bfd518ed8e7', '2024-05-08 20:39:09', '127.0.0.1', 'admin', '1');
INSERT INTO `syonline` VALUES ('65b00664-ff7d-45eb-b689-445ed431ffed', '2024-05-08 20:29:40', '127.0.0.1', 'admin', '0');
INSERT INTO `syonline` VALUES ('b734c9b7-64e0-4b78-a7d5-4a7ab54bd7ac', '2024-05-08 20:29:46', '127.0.0.1', 'a', '1');
INSERT INTO `syonline` VALUES ('ca5c614c-9cb6-4eed-b698-b248fccafefa', '2024-05-08 20:39:03', '127.0.0.1', 'a', '0');
INSERT INTO `syonline` VALUES ('ec07bd3f-0860-47ac-962b-8222e5b06492', '2024-05-08 20:25:13', '127.0.0.1', 'admin', '0');
INSERT INTO `syonline` VALUES ('ed801da7-9b31-4731-be48-b9662b272003', '2024-05-08 20:26:06', '127.0.0.1', 'admin', '1');

-- ----------------------------
-- Table structure for syorganization
-- ----------------------------
DROP TABLE IF EXISTS `syorganization`;
CREATE TABLE `syorganization`  (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `ADDRESS` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `CODE` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `CREATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `ICONCLS` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `NAME` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `SEQ` int(11) NULL DEFAULT NULL,
  `UPDATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `SYORGANIZATION_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_acf7qlb04quthktalwx8c7q69`(`SYORGANIZATION_ID`) USING BTREE,
  CONSTRAINT `FK_acf7qlb04quthktalwx8c7q69` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syorganization
-- ----------------------------
INSERT INTO `syorganization` VALUES ('0', NULL, NULL, '2024-05-08 12:34:54', 'ext-icon-bricks', '总部', 100, '2024-05-08 12:35:12', NULL);

-- ----------------------------
-- Table structure for syorganization_syresource
-- ----------------------------
DROP TABLE IF EXISTS `syorganization_syresource`;
CREATE TABLE `syorganization_syresource`  (
  `SYRESOURCE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYORGANIZATION_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYORGANIZATION_ID`, `SYRESOURCE_ID`) USING BTREE,
  INDEX `FK_acpjp8a7fjo0cnn02eb0ia6uf`(`SYORGANIZATION_ID`) USING BTREE,
  INDEX `FK_m4mfglk7odi78d8pk9pif44vc`(`SYRESOURCE_ID`) USING BTREE,
  CONSTRAINT `FK_acpjp8a7fjo0cnn02eb0ia6uf` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_m4mfglk7odi78d8pk9pif44vc` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for syresource
-- ----------------------------
DROP TABLE IF EXISTS `syresource`;
CREATE TABLE `syresource`  (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CREATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `ICONCLS` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SEQ` int(11) NULL DEFAULT NULL,
  `TARGET` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `UPDATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `URL` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `SYRESOURCE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `SYRESOURCETYPE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `FK_n8kk2inhw4y4gax3nra2etfup`(`SYRESOURCE_ID`) USING BTREE,
  INDEX `FK_93qfpiiuk3rwb32gc5mcmmlgh`(`SYRESOURCETYPE_ID`) USING BTREE,
  CONSTRAINT `FK_93qfpiiuk3rwb32gc5mcmmlgh` FOREIGN KEY (`SYRESOURCETYPE_ID`) REFERENCES `syresourcetype` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_n8kk2inhw4y4gax3nra2etfup` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syresource
-- ----------------------------
INSERT INTO `syresource` VALUES ('jgbj', '2024-05-08 12:34:53', '编辑机构', 'ext-icon-bullet_wrench', '编辑机构', 2, '', '2024-05-08 12:34:53', '/base/syorganization!update', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jgck', '2024-05-08 12:34:53', '查看机构', 'ext-icon-bullet_wrench', '查看机构', 4, '', '2024-05-08 12:34:53', '/base/syorganization!getById', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jggl', '2024-05-08 12:34:53', '管理系统中用户的机构', 'ext-icon-group_link', '机构管理', 3, '', '2024-05-08 12:34:53', '/securityJsp/base/Syorganization.jsp', 'xtgl', '0');
INSERT INTO `syresource` VALUES ('jglb', '2024-05-08 12:34:53', '查询机构列表', 'ext-icon-bullet_wrench', '机构列表', 0, '', '2024-05-08 12:34:53', '/base/syorganization!treeGrid', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jgsc', '2024-05-08 12:34:53', '删除机构', 'ext-icon-bullet_wrench', '删除机构', 3, '', '2024-05-08 12:34:53', '/base/syorganization!delete', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jgsq', '2024-05-08 12:34:53', '机构授权', 'ext-icon-bullet_wrench', '机构授权', 5, '', '2024-05-08 12:34:53', '/base/syorganization!grant', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jgtj', '2024-05-08 12:34:53', '添加机构', 'ext-icon-bullet_wrench', '添加机构', 1, '', '2024-05-08 12:34:53', '/base/syorganization!save', 'jggl', '1');
INSERT INTO `syresource` VALUES ('jsbj', '2024-05-08 12:34:53', '编辑角色', 'ext-icon-bullet_wrench', '编辑角色', 2, '', '2024-05-08 12:34:53', '/base/syrole!update', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jsck', '2024-05-08 12:34:53', '查看角色', 'ext-icon-bullet_wrench', '查看角色', 4, '', '2024-05-08 12:34:53', '/base/syrole!getById', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jsgl', '2024-05-08 12:34:53', '管理系统中用户的角色', 'ext-icon-tux', '角色管理', 2, '', '2024-05-08 12:34:53', '/securityJsp/base/Syrole.jsp', 'xtgl', '0');
INSERT INTO `syresource` VALUES ('jslb', '2024-05-08 12:34:53', '查询角色列表', 'ext-icon-bullet_wrench', '角色列表', 0, '', '2024-05-08 12:34:53', '/base/syrole!grid', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jssc', '2024-05-08 12:34:53', '删除角色', 'ext-icon-bullet_wrench', '删除角色', 3, '', '2024-05-08 12:34:53', '/base/syrole!delete', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jssq', '2024-05-08 12:34:53', '角色授权', 'ext-icon-bullet_wrench', '角色授权', 5, '', '2024-05-08 12:34:53', '/base/syrole!grant', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('jstj', '2024-05-08 12:34:53', '添加角色', 'ext-icon-bullet_wrench', '添加角色', 1, '', '2024-05-08 12:34:53', '/base/syrole!save', 'jsgl', '1');
INSERT INTO `syresource` VALUES ('online', '2024-05-08 12:34:53', '监控用户登录、注销', 'ext-icon-chart_line', '用户登录历史监控', 4, '', '2024-05-08 12:34:53', '/securityJsp/base/Syonline.jsp', 'xtjk', '0');
INSERT INTO `syresource` VALUES ('onlineGrid', '2024-05-08 12:34:53', '用户登录、注销历史记录列表', 'ext-icon-bullet_wrench', '用户登录历史列表', 0, '', '2024-05-08 12:34:53', '/base/syonline!grid', 'online', '1');
INSERT INTO `syresource` VALUES ('xtgl', '2024-05-08 12:34:53', '管理系统的资源、角色、机构、用户等信息', 'ext-icon-application_view_tile', '系统管理', 5, '', '2024-05-08 12:34:53', '/welcome.jsp', NULL, '0');
INSERT INTO `syresource` VALUES ('xtjk', '2024-05-08 12:34:53', '监控系统运行情况等信息', 'ext-icon-monitor', '系统监控', 6, '', '2024-05-08 12:34:53', '/welcome.jsp', NULL, '0');
INSERT INTO `syresource` VALUES ('yhbj', '2024-05-08 12:34:53', '编辑用户', 'ext-icon-bullet_wrench', '编辑用户', 2, '', '2024-05-08 12:34:53', '/base/syuser!update', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhck', '2024-05-08 12:34:53', '查看用户', 'ext-icon-bullet_wrench', '查看用户', 4, '', '2024-05-08 12:34:53', '/base/syuser!getById', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhgl', '2024-05-08 12:34:53', '管理系统中用户的用户', 'ext-icon-user_suit', '用户管理', 4, '', '2024-05-08 12:34:53', '/securityJsp/base/Syuser.jsp', 'xtgl', '0');
INSERT INTO `syresource` VALUES ('yhjg', '2024-05-08 12:34:53', '编辑用户机构', 'ext-icon-bullet_wrench', '用户机构', 6, '', '2024-05-08 12:34:53', '/base/syuser!grantOrganization', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhjs', '2024-05-08 12:34:53', '编辑用户角色', 'ext-icon-bullet_wrench', '用户角色', 5, '', '2024-05-08 12:34:53', '/base/syuser!grantRole', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhlb', '2024-05-08 12:34:53', '查询用户列表', 'ext-icon-bullet_wrench', '用户列表', 0, '', '2024-05-08 12:34:53', '/base/syuser!grid', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhsc', '2024-05-08 12:34:53', '删除用户', 'ext-icon-bullet_wrench', '删除用户', 3, '', '2024-05-08 12:34:53', '/base/syuser!delete', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('yhtj', '2024-05-08 12:34:53', '添加用户', 'ext-icon-bullet_wrench', '添加用户', 1, '', '2024-05-08 12:34:53', '/base/syuser!save', 'yhgl', '1');
INSERT INTO `syresource` VALUES ('zybj', '2024-05-08 12:34:53', '编辑资源', 'ext-icon-bullet_wrench', '编辑资源', 2, '', '2024-05-08 12:34:53', '/base/syresource!update', 'zygl', '1');
INSERT INTO `syresource` VALUES ('zyck', '2024-05-08 12:34:53', '查看资源', 'ext-icon-bullet_wrench', '查看资源', 4, '', '2024-05-08 12:34:53', '/base/syresource!getById', 'zygl', '1');
INSERT INTO `syresource` VALUES ('zygl', '2024-05-08 12:34:53', '管理系统的资源', 'ext-icon-newspaper_link', '资源管理', 1, '', '2024-05-08 12:34:53', '/securityJsp/base/Syresource.jsp', 'xtgl', '0');
INSERT INTO `syresource` VALUES ('zylb', '2024-05-08 12:34:53', '查询资源', 'ext-icon-bullet_wrench', '资源列表', 0, '', '2024-05-08 12:34:53', '/base/syresource!treeGrid', 'zygl', '1');
INSERT INTO `syresource` VALUES ('zysc', '2024-05-08 12:34:53', '删除资源', 'ext-icon-bullet_wrench', '删除资源', 3, '', '2024-05-08 12:34:53', '/base/syresource!delete', 'zygl', '1');
INSERT INTO `syresource` VALUES ('zytj', '2024-05-08 12:34:53', '添加资源', 'ext-icon-bullet_wrench', '添加资源', 1, '', '2024-05-08 12:34:53', '/base/syresource!save', 'zygl', '1');

-- ----------------------------
-- Table structure for syresourcetype
-- ----------------------------
DROP TABLE IF EXISTS `syresourcetype`;
CREATE TABLE `syresourcetype`  (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CREATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `UPDATEDATETIME` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syresourcetype
-- ----------------------------
INSERT INTO `syresourcetype` VALUES ('0', '2024-05-08 12:34:53', '菜单类型会显示在系统首页左侧菜单中', '菜单', '2024-05-08 12:34:53');
INSERT INTO `syresourcetype` VALUES ('1', '2024-05-08 12:34:53', '功能类型不会显示在系统首页左侧菜单中', '功能', '2024-05-08 12:34:53');

-- ----------------------------
-- Table structure for syrole
-- ----------------------------
DROP TABLE IF EXISTS `syrole`;
CREATE TABLE `syrole`  (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `CREATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `DESCRIPTION` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `ICONCLS` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SEQ` int(11) NULL DEFAULT NULL,
  `UPDATEDATETIME` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syrole
-- ----------------------------
INSERT INTO `syrole` VALUES ('0', '2024-05-08 12:34:53', '拥有系统所有权限', NULL, '超管', 0, '2024-05-08 12:34:53');
INSERT INTO `syrole` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', '2024-05-08 20:24:13', '组员', NULL, '袁傲', 102, '2024-05-08 20:24:13');
INSERT INTO `syrole` VALUES ('19f00d46-8f1b-45b5-b7b7-6197d7b8cb33', '2024-05-08 13:24:00', NULL, NULL, '管理员', 100, '2024-05-08 13:24:00');

-- ----------------------------
-- Table structure for syrole_syresource
-- ----------------------------
DROP TABLE IF EXISTS `syrole_syresource`;
CREATE TABLE `syrole_syresource`  (
  `SYROLE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYRESOURCE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYRESOURCE_ID`, `SYROLE_ID`) USING BTREE,
  INDEX `FK_kkrartsovl2frhfvriqdi7jwl`(`SYRESOURCE_ID`) USING BTREE,
  INDEX `FK_r139h669pg4ts6mbvn3ip5472`(`SYROLE_ID`) USING BTREE,
  CONSTRAINT `FK_kkrartsovl2frhfvriqdi7jwl` FOREIGN KEY (`SYRESOURCE_ID`) REFERENCES `syresource` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_r139h669pg4ts6mbvn3ip5472` FOREIGN KEY (`SYROLE_ID`) REFERENCES `syrole` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syrole_syresource
-- ----------------------------
INSERT INTO `syrole_syresource` VALUES ('0', 'jgbj');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'jgbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgck');
INSERT INTO `syrole_syresource` VALUES ('0', 'jggl');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'jggl');
INSERT INTO `syrole_syresource` VALUES ('0', 'jglb');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgsq');
INSERT INTO `syrole_syresource` VALUES ('0', 'jgtj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsbj');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'jsbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsck');
INSERT INTO `syrole_syresource` VALUES ('0', 'jsgl');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'jsgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'jslb');
INSERT INTO `syrole_syresource` VALUES ('0', 'jssc');
INSERT INTO `syrole_syresource` VALUES ('0', 'jssq');
INSERT INTO `syrole_syresource` VALUES ('0', 'jstj');
INSERT INTO `syrole_syresource` VALUES ('0', 'online');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'online');
INSERT INTO `syrole_syresource` VALUES ('0', 'onlineGrid');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'onlineGrid');
INSERT INTO `syrole_syresource` VALUES ('0', 'xtgl');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'xtgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'xtjk');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'xtjk');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhbj');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'yhbj');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhck');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhgl');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'yhgl');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhjg');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhjs');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhlb');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhsc');
INSERT INTO `syrole_syresource` VALUES ('0', 'yhtj');
INSERT INTO `syrole_syresource` VALUES ('0', 'zybj');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'zybj');
INSERT INTO `syrole_syresource` VALUES ('0', 'zyck');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'zyck');
INSERT INTO `syrole_syresource` VALUES ('0', 'zygl');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'zygl');
INSERT INTO `syrole_syresource` VALUES ('0', 'zylb');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'zylb');
INSERT INTO `syrole_syresource` VALUES ('0', 'zysc');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'zysc');
INSERT INTO `syrole_syresource` VALUES ('0', 'zytj');
INSERT INTO `syrole_syresource` VALUES ('06f8bfa4-b3a7-4514-ba70-c90bb23746f4', 'zytj');

-- ----------------------------
-- Table structure for syuser
-- ----------------------------
DROP TABLE IF EXISTS `syuser`;
CREATE TABLE `syuser`  (
  `ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `AGE` int(11) NULL DEFAULT NULL,
  `CREATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `LOGINNAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `NAME` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `PHOTO` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `PWD` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `SEX` varchar(1) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `UPDATEDATETIME` datetime(0) NULL DEFAULT NULL,
  `EMPLOYDATE` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `UK_eiov1gsncrds3rean3dmu822p`(`LOGINNAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syuser
-- ----------------------------
INSERT INTO `syuser` VALUES ('0', 30, '2024-05-08 12:34:54', 'admin', '超级管理员', '', 'e10adc3949ba59abbe56e057f20f883e', '1', '2024-05-08 12:41:11', NULL);
INSERT INTO `syuser` VALUES ('571dfb41-c7c3-4a27-a3d7-777998720e1e', NULL, '2024-05-08 20:29:09', 'a', 'a', NULL, 'e10adc3949ba59abbe56e057f20f883e', '1', '2024-05-08 20:29:09', '2024-05-08 20:29:09');

-- ----------------------------
-- Table structure for syuser_syorganization
-- ----------------------------
DROP TABLE IF EXISTS `syuser_syorganization`;
CREATE TABLE `syuser_syorganization`  (
  `SYUSER_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYORGANIZATION_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYORGANIZATION_ID`, `SYUSER_ID`) USING BTREE,
  INDEX `FK_14ewqc5wtscac0dd5rswrm5j2`(`SYORGANIZATION_ID`) USING BTREE,
  INDEX `FK_63bdmtxwlk259id13rp4iryy`(`SYUSER_ID`) USING BTREE,
  CONSTRAINT `FK_14ewqc5wtscac0dd5rswrm5j2` FOREIGN KEY (`SYORGANIZATION_ID`) REFERENCES `syorganization` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_63bdmtxwlk259id13rp4iryy` FOREIGN KEY (`SYUSER_ID`) REFERENCES `syuser` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syuser_syorganization
-- ----------------------------
INSERT INTO `syuser_syorganization` VALUES ('0', '0');
INSERT INTO `syuser_syorganization` VALUES ('346e8333-b644-4939-8b06-f23654963c6a', '0');
INSERT INTO `syuser_syorganization` VALUES ('571dfb41-c7c3-4a27-a3d7-777998720e1e', '0');

-- ----------------------------
-- Table structure for syuser_syrole
-- ----------------------------
DROP TABLE IF EXISTS `syuser_syrole`;
CREATE TABLE `syuser_syrole`  (
  `SYUSER_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `SYROLE_ID` varchar(36) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  PRIMARY KEY (`SYROLE_ID`, `SYUSER_ID`) USING BTREE,
  INDEX `FK_j7iwtgslc2esrjx0ptieleoko`(`SYROLE_ID`) USING BTREE,
  INDEX `FK_1pi4p5h4y5ghbs5f4gdlgn620`(`SYUSER_ID`) USING BTREE,
  CONSTRAINT `FK_1pi4p5h4y5ghbs5f4gdlgn620` FOREIGN KEY (`SYUSER_ID`) REFERENCES `syuser` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_j7iwtgslc2esrjx0ptieleoko` FOREIGN KEY (`SYROLE_ID`) REFERENCES `syrole` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of syuser_syrole
-- ----------------------------
INSERT INTO `syuser_syrole` VALUES ('0', '0');
INSERT INTO `syuser_syrole` VALUES ('0', '06f8bfa4-b3a7-4514-ba70-c90bb23746f4');
INSERT INTO `syuser_syrole` VALUES ('571dfb41-c7c3-4a27-a3d7-777998720e1e', '06f8bfa4-b3a7-4514-ba70-c90bb23746f4');
INSERT INTO `syuser_syrole` VALUES ('0', '19f00d46-8f1b-45b5-b7b7-6197d7b8cb33');
INSERT INTO `syuser_syrole` VALUES ('346e8333-b644-4939-8b06-f23654963c6a', '19f00d46-8f1b-45b5-b7b7-6197d7b8cb33');

-- ----------------------------
-- Table structure for t_base_pinyin
-- ----------------------------
DROP TABLE IF EXISTS `t_base_pinyin`;
CREATE TABLE `t_base_pinyin`  (
  `pin_yin_` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `code_` int(11) NOT NULL,
  PRIMARY KEY (`code_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_base_pinyin
-- ----------------------------
INSERT INTO `t_base_pinyin` VALUES ('zuo', 10254);
INSERT INTO `t_base_pinyin` VALUES ('zun', 10256);
INSERT INTO `t_base_pinyin` VALUES ('zui', 10260);
INSERT INTO `t_base_pinyin` VALUES ('zuan', 10262);
INSERT INTO `t_base_pinyin` VALUES ('zu', 10270);
INSERT INTO `t_base_pinyin` VALUES ('zou', 10274);
INSERT INTO `t_base_pinyin` VALUES ('zong', 10281);
INSERT INTO `t_base_pinyin` VALUES ('zi', 10296);
INSERT INTO `t_base_pinyin` VALUES ('zhuo', 10307);
INSERT INTO `t_base_pinyin` VALUES ('zhun', 10309);
INSERT INTO `t_base_pinyin` VALUES ('zhui', 10315);
INSERT INTO `t_base_pinyin` VALUES ('zhuang', 10322);
INSERT INTO `t_base_pinyin` VALUES ('zhuan', 10328);
INSERT INTO `t_base_pinyin` VALUES ('zhuai', 10329);
INSERT INTO `t_base_pinyin` VALUES ('zhua', 10331);
INSERT INTO `t_base_pinyin` VALUES ('zhu', 10519);
INSERT INTO `t_base_pinyin` VALUES ('zhou', 10533);
INSERT INTO `t_base_pinyin` VALUES ('zhong', 10544);
INSERT INTO `t_base_pinyin` VALUES ('zhi', 10587);
INSERT INTO `t_base_pinyin` VALUES ('zheng', 10764);
INSERT INTO `t_base_pinyin` VALUES ('zhen', 10780);
INSERT INTO `t_base_pinyin` VALUES ('zhe', 10790);
INSERT INTO `t_base_pinyin` VALUES ('zhao', 10800);
INSERT INTO `t_base_pinyin` VALUES ('zhang', 10815);
INSERT INTO `t_base_pinyin` VALUES ('zhan', 10832);
INSERT INTO `t_base_pinyin` VALUES ('zhai', 10838);
INSERT INTO `t_base_pinyin` VALUES ('zha', 11014);
INSERT INTO `t_base_pinyin` VALUES ('zeng', 11018);
INSERT INTO `t_base_pinyin` VALUES ('zen', 11019);
INSERT INTO `t_base_pinyin` VALUES ('zei', 11020);
INSERT INTO `t_base_pinyin` VALUES ('ze', 11024);
INSERT INTO `t_base_pinyin` VALUES ('zao', 11038);
INSERT INTO `t_base_pinyin` VALUES ('zang', 11041);
INSERT INTO `t_base_pinyin` VALUES ('zan', 11045);
INSERT INTO `t_base_pinyin` VALUES ('zai', 11052);
INSERT INTO `t_base_pinyin` VALUES ('za', 11055);
INSERT INTO `t_base_pinyin` VALUES ('yun', 11067);
INSERT INTO `t_base_pinyin` VALUES ('yue', 11077);
INSERT INTO `t_base_pinyin` VALUES ('yuan', 11097);
INSERT INTO `t_base_pinyin` VALUES ('yu', 11303);
INSERT INTO `t_base_pinyin` VALUES ('you', 11324);
INSERT INTO `t_base_pinyin` VALUES ('yong', 11339);
INSERT INTO `t_base_pinyin` VALUES ('yo', 11340);
INSERT INTO `t_base_pinyin` VALUES ('ying', 11358);
INSERT INTO `t_base_pinyin` VALUES ('yin', 11536);
INSERT INTO `t_base_pinyin` VALUES ('yi', 11589);
INSERT INTO `t_base_pinyin` VALUES ('ye', 11604);
INSERT INTO `t_base_pinyin` VALUES ('yao', 11781);
INSERT INTO `t_base_pinyin` VALUES ('yang', 11798);
INSERT INTO `t_base_pinyin` VALUES ('yan', 11831);
INSERT INTO `t_base_pinyin` VALUES ('ya', 11847);
INSERT INTO `t_base_pinyin` VALUES ('xun', 11861);
INSERT INTO `t_base_pinyin` VALUES ('xue', 11867);
INSERT INTO `t_base_pinyin` VALUES ('xuan', 12039);
INSERT INTO `t_base_pinyin` VALUES ('xu', 12058);
INSERT INTO `t_base_pinyin` VALUES ('xiu', 12067);
INSERT INTO `t_base_pinyin` VALUES ('xiong', 12074);
INSERT INTO `t_base_pinyin` VALUES ('xing', 12089);
INSERT INTO `t_base_pinyin` VALUES ('xin', 12099);
INSERT INTO `t_base_pinyin` VALUES ('xie', 12120);
INSERT INTO `t_base_pinyin` VALUES ('xiao', 12300);
INSERT INTO `t_base_pinyin` VALUES ('xiang', 12320);
INSERT INTO `t_base_pinyin` VALUES ('xian', 12346);
INSERT INTO `t_base_pinyin` VALUES ('xia', 12359);
INSERT INTO `t_base_pinyin` VALUES ('xi', 12556);
INSERT INTO `t_base_pinyin` VALUES ('wu', 12585);
INSERT INTO `t_base_pinyin` VALUES ('wo', 12594);
INSERT INTO `t_base_pinyin` VALUES ('weng', 12597);
INSERT INTO `t_base_pinyin` VALUES ('wen', 12607);
INSERT INTO `t_base_pinyin` VALUES ('wei', 12802);
INSERT INTO `t_base_pinyin` VALUES ('wang', 12812);
INSERT INTO `t_base_pinyin` VALUES ('wan', 12829);
INSERT INTO `t_base_pinyin` VALUES ('wai', 12831);
INSERT INTO `t_base_pinyin` VALUES ('wa', 12838);
INSERT INTO `t_base_pinyin` VALUES ('tuo', 12849);
INSERT INTO `t_base_pinyin` VALUES ('tun', 12852);
INSERT INTO `t_base_pinyin` VALUES ('tui', 12858);
INSERT INTO `t_base_pinyin` VALUES ('tuan', 12860);
INSERT INTO `t_base_pinyin` VALUES ('tu', 12871);
INSERT INTO `t_base_pinyin` VALUES ('tou', 12875);
INSERT INTO `t_base_pinyin` VALUES ('tong', 12888);
INSERT INTO `t_base_pinyin` VALUES ('ting', 13060);
INSERT INTO `t_base_pinyin` VALUES ('tie', 13063);
INSERT INTO `t_base_pinyin` VALUES ('tiao', 13068);
INSERT INTO `t_base_pinyin` VALUES ('tian', 13076);
INSERT INTO `t_base_pinyin` VALUES ('ti', 13091);
INSERT INTO `t_base_pinyin` VALUES ('teng', 13095);
INSERT INTO `t_base_pinyin` VALUES ('te', 13096);
INSERT INTO `t_base_pinyin` VALUES ('tao', 13107);
INSERT INTO `t_base_pinyin` VALUES ('tang', 13120);
INSERT INTO `t_base_pinyin` VALUES ('tan', 13138);
INSERT INTO `t_base_pinyin` VALUES ('tai', 13147);
INSERT INTO `t_base_pinyin` VALUES ('ta', 13318);
INSERT INTO `t_base_pinyin` VALUES ('suo', 13326);
INSERT INTO `t_base_pinyin` VALUES ('sun', 13329);
INSERT INTO `t_base_pinyin` VALUES ('sui', 13340);
INSERT INTO `t_base_pinyin` VALUES ('suan', 13343);
INSERT INTO `t_base_pinyin` VALUES ('su', 13356);
INSERT INTO `t_base_pinyin` VALUES ('sou', 13359);
INSERT INTO `t_base_pinyin` VALUES ('song', 13367);
INSERT INTO `t_base_pinyin` VALUES ('si', 13383);
INSERT INTO `t_base_pinyin` VALUES ('shuo', 13387);
INSERT INTO `t_base_pinyin` VALUES ('shun', 13391);
INSERT INTO `t_base_pinyin` VALUES ('shui', 13395);
INSERT INTO `t_base_pinyin` VALUES ('shuang', 13398);
INSERT INTO `t_base_pinyin` VALUES ('shuan', 13400);
INSERT INTO `t_base_pinyin` VALUES ('shuai', 13404);
INSERT INTO `t_base_pinyin` VALUES ('shua', 13406);
INSERT INTO `t_base_pinyin` VALUES ('shu', 13601);
INSERT INTO `t_base_pinyin` VALUES ('shou', 13611);
INSERT INTO `t_base_pinyin` VALUES ('shi', 13658);
INSERT INTO `t_base_pinyin` VALUES ('sheng', 13831);
INSERT INTO `t_base_pinyin` VALUES ('shen', 13847);
INSERT INTO `t_base_pinyin` VALUES ('she', 13859);
INSERT INTO `t_base_pinyin` VALUES ('shao', 13870);
INSERT INTO `t_base_pinyin` VALUES ('shang', 13878);
INSERT INTO `t_base_pinyin` VALUES ('shan', 13894);
INSERT INTO `t_base_pinyin` VALUES ('shai', 13896);
INSERT INTO `t_base_pinyin` VALUES ('sha', 13905);
INSERT INTO `t_base_pinyin` VALUES ('seng', 13906);
INSERT INTO `t_base_pinyin` VALUES ('sen', 13907);
INSERT INTO `t_base_pinyin` VALUES ('se', 13910);
INSERT INTO `t_base_pinyin` VALUES ('sao', 13914);
INSERT INTO `t_base_pinyin` VALUES ('sang', 13917);
INSERT INTO `t_base_pinyin` VALUES ('san', 14083);
INSERT INTO `t_base_pinyin` VALUES ('sai', 14087);
INSERT INTO `t_base_pinyin` VALUES ('sa', 14090);
INSERT INTO `t_base_pinyin` VALUES ('ruo', 14092);
INSERT INTO `t_base_pinyin` VALUES ('run', 14094);
INSERT INTO `t_base_pinyin` VALUES ('rui', 14097);
INSERT INTO `t_base_pinyin` VALUES ('ruan', 14099);
INSERT INTO `t_base_pinyin` VALUES ('ru', 14109);
INSERT INTO `t_base_pinyin` VALUES ('rou', 14112);
INSERT INTO `t_base_pinyin` VALUES ('rong', 14122);
INSERT INTO `t_base_pinyin` VALUES ('ri', 14123);
INSERT INTO `t_base_pinyin` VALUES ('reng', 14125);
INSERT INTO `t_base_pinyin` VALUES ('ren', 14135);
INSERT INTO `t_base_pinyin` VALUES ('re', 14137);
INSERT INTO `t_base_pinyin` VALUES ('rao', 14140);
INSERT INTO `t_base_pinyin` VALUES ('rang', 14145);
INSERT INTO `t_base_pinyin` VALUES ('ran', 14149);
INSERT INTO `t_base_pinyin` VALUES ('qun', 14151);
INSERT INTO `t_base_pinyin` VALUES ('que', 14159);
INSERT INTO `t_base_pinyin` VALUES ('quan', 14170);
INSERT INTO `t_base_pinyin` VALUES ('qu', 14345);
INSERT INTO `t_base_pinyin` VALUES ('qiu', 14353);
INSERT INTO `t_base_pinyin` VALUES ('qiong', 14355);
INSERT INTO `t_base_pinyin` VALUES ('qing', 14368);
INSERT INTO `t_base_pinyin` VALUES ('qin', 14379);
INSERT INTO `t_base_pinyin` VALUES ('qie', 14384);
INSERT INTO `t_base_pinyin` VALUES ('qiao', 14399);
INSERT INTO `t_base_pinyin` VALUES ('qiang', 14407);
INSERT INTO `t_base_pinyin` VALUES ('qian', 14429);
INSERT INTO `t_base_pinyin` VALUES ('qia', 14594);
INSERT INTO `t_base_pinyin` VALUES ('qi', 14630);
INSERT INTO `t_base_pinyin` VALUES ('pu', 14645);
INSERT INTO `t_base_pinyin` VALUES ('po', 14654);
INSERT INTO `t_base_pinyin` VALUES ('ping', 14663);
INSERT INTO `t_base_pinyin` VALUES ('pin', 14668);
INSERT INTO `t_base_pinyin` VALUES ('pie', 14670);
INSERT INTO `t_base_pinyin` VALUES ('piao', 14674);
INSERT INTO `t_base_pinyin` VALUES ('pian', 14678);
INSERT INTO `t_base_pinyin` VALUES ('pi', 14857);
INSERT INTO `t_base_pinyin` VALUES ('peng', 14871);
INSERT INTO `t_base_pinyin` VALUES ('pen', 14873);
INSERT INTO `t_base_pinyin` VALUES ('pei', 14882);
INSERT INTO `t_base_pinyin` VALUES ('pao', 14889);
INSERT INTO `t_base_pinyin` VALUES ('pang', 14894);
INSERT INTO `t_base_pinyin` VALUES ('pan', 14902);
INSERT INTO `t_base_pinyin` VALUES ('pai', 14908);
INSERT INTO `t_base_pinyin` VALUES ('pa', 14914);
INSERT INTO `t_base_pinyin` VALUES ('ou', 14921);
INSERT INTO `t_base_pinyin` VALUES ('o', 14922);
INSERT INTO `t_base_pinyin` VALUES ('nuo', 14926);
INSERT INTO `t_base_pinyin` VALUES ('nue', 14928);
INSERT INTO `t_base_pinyin` VALUES ('nuan', 14929);
INSERT INTO `t_base_pinyin` VALUES ('nv', 14930);
INSERT INTO `t_base_pinyin` VALUES ('nu', 14933);
INSERT INTO `t_base_pinyin` VALUES ('nong', 14937);
INSERT INTO `t_base_pinyin` VALUES ('niu', 14941);
INSERT INTO `t_base_pinyin` VALUES ('ning', 15109);
INSERT INTO `t_base_pinyin` VALUES ('nin', 15110);
INSERT INTO `t_base_pinyin` VALUES ('nie', 15117);
INSERT INTO `t_base_pinyin` VALUES ('niao', 15119);
INSERT INTO `t_base_pinyin` VALUES ('niang', 15121);
INSERT INTO `t_base_pinyin` VALUES ('nian', 15128);
INSERT INTO `t_base_pinyin` VALUES ('ni', 15139);
INSERT INTO `t_base_pinyin` VALUES ('neng', 15140);
INSERT INTO `t_base_pinyin` VALUES ('nen', 15141);
INSERT INTO `t_base_pinyin` VALUES ('nei', 15143);
INSERT INTO `t_base_pinyin` VALUES ('ne', 15144);
INSERT INTO `t_base_pinyin` VALUES ('nao', 15149);
INSERT INTO `t_base_pinyin` VALUES ('nang', 15150);
INSERT INTO `t_base_pinyin` VALUES ('nan', 15153);
INSERT INTO `t_base_pinyin` VALUES ('nai', 15158);
INSERT INTO `t_base_pinyin` VALUES ('na', 15165);
INSERT INTO `t_base_pinyin` VALUES ('mu', 15180);
INSERT INTO `t_base_pinyin` VALUES ('mou', 15183);
INSERT INTO `t_base_pinyin` VALUES ('mo', 15362);
INSERT INTO `t_base_pinyin` VALUES ('miu', 15363);
INSERT INTO `t_base_pinyin` VALUES ('ming', 15369);
INSERT INTO `t_base_pinyin` VALUES ('min', 15375);
INSERT INTO `t_base_pinyin` VALUES ('mie', 15377);
INSERT INTO `t_base_pinyin` VALUES ('miao', 15385);
INSERT INTO `t_base_pinyin` VALUES ('mian', 15394);
INSERT INTO `t_base_pinyin` VALUES ('mi', 15408);
INSERT INTO `t_base_pinyin` VALUES ('meng', 15416);
INSERT INTO `t_base_pinyin` VALUES ('men', 15419);
INSERT INTO `t_base_pinyin` VALUES ('mei', 15435);
INSERT INTO `t_base_pinyin` VALUES ('me', 15436);
INSERT INTO `t_base_pinyin` VALUES ('mao', 15448);
INSERT INTO `t_base_pinyin` VALUES ('mang', 15454);
INSERT INTO `t_base_pinyin` VALUES ('man', 15625);
INSERT INTO `t_base_pinyin` VALUES ('mai', 15631);
INSERT INTO `t_base_pinyin` VALUES ('ma', 15640);
INSERT INTO `t_base_pinyin` VALUES ('luo', 15652);
INSERT INTO `t_base_pinyin` VALUES ('lun', 15659);
INSERT INTO `t_base_pinyin` VALUES ('lue', 15661);
INSERT INTO `t_base_pinyin` VALUES ('luan', 15667);
INSERT INTO `t_base_pinyin` VALUES ('lv', 15681);
INSERT INTO `t_base_pinyin` VALUES ('lu', 15701);
INSERT INTO `t_base_pinyin` VALUES ('lou', 15707);
INSERT INTO `t_base_pinyin` VALUES ('long', 15878);
INSERT INTO `t_base_pinyin` VALUES ('liu', 15889);
INSERT INTO `t_base_pinyin` VALUES ('ling', 15903);
INSERT INTO `t_base_pinyin` VALUES ('lin', 15915);
INSERT INTO `t_base_pinyin` VALUES ('lie', 15920);
INSERT INTO `t_base_pinyin` VALUES ('liao', 15933);
INSERT INTO `t_base_pinyin` VALUES ('liang', 15944);
INSERT INTO `t_base_pinyin` VALUES ('lian', 15958);
INSERT INTO `t_base_pinyin` VALUES ('lia', 15959);
INSERT INTO `t_base_pinyin` VALUES ('li', 16155);
INSERT INTO `t_base_pinyin` VALUES ('leng', 16158);
INSERT INTO `t_base_pinyin` VALUES ('lei', 16169);
INSERT INTO `t_base_pinyin` VALUES ('le', 16171);
INSERT INTO `t_base_pinyin` VALUES ('lao', 16180);
INSERT INTO `t_base_pinyin` VALUES ('lang', 16187);
INSERT INTO `t_base_pinyin` VALUES ('lan', 16202);
INSERT INTO `t_base_pinyin` VALUES ('lai', 16205);
INSERT INTO `t_base_pinyin` VALUES ('la', 16212);
INSERT INTO `t_base_pinyin` VALUES ('kuo', 16216);
INSERT INTO `t_base_pinyin` VALUES ('kun', 16220);
INSERT INTO `t_base_pinyin` VALUES ('kui', 16393);
INSERT INTO `t_base_pinyin` VALUES ('kuang', 16401);
INSERT INTO `t_base_pinyin` VALUES ('kuan', 16403);
INSERT INTO `t_base_pinyin` VALUES ('kuai', 16407);
INSERT INTO `t_base_pinyin` VALUES ('kua', 16412);
INSERT INTO `t_base_pinyin` VALUES ('ku', 16419);
INSERT INTO `t_base_pinyin` VALUES ('kou', 16423);
INSERT INTO `t_base_pinyin` VALUES ('kong', 16427);
INSERT INTO `t_base_pinyin` VALUES ('keng', 16429);
INSERT INTO `t_base_pinyin` VALUES ('ken', 16433);
INSERT INTO `t_base_pinyin` VALUES ('ke', 16448);
INSERT INTO `t_base_pinyin` VALUES ('kao', 16452);
INSERT INTO `t_base_pinyin` VALUES ('kang', 16459);
INSERT INTO `t_base_pinyin` VALUES ('kan', 16465);
INSERT INTO `t_base_pinyin` VALUES ('kai', 16470);
INSERT INTO `t_base_pinyin` VALUES ('ka', 16474);
INSERT INTO `t_base_pinyin` VALUES ('jun', 16647);
INSERT INTO `t_base_pinyin` VALUES ('jue', 16657);
INSERT INTO `t_base_pinyin` VALUES ('juan', 16664);
INSERT INTO `t_base_pinyin` VALUES ('ju', 16689);
INSERT INTO `t_base_pinyin` VALUES ('jiu', 16706);
INSERT INTO `t_base_pinyin` VALUES ('jiong', 16708);
INSERT INTO `t_base_pinyin` VALUES ('jing', 16733);
INSERT INTO `t_base_pinyin` VALUES ('jin', 16915);
INSERT INTO `t_base_pinyin` VALUES ('jie', 16942);
INSERT INTO `t_base_pinyin` VALUES ('jiao', 16970);
INSERT INTO `t_base_pinyin` VALUES ('jiang', 16983);
INSERT INTO `t_base_pinyin` VALUES ('jian', 17185);
INSERT INTO `t_base_pinyin` VALUES ('jia', 17202);
INSERT INTO `t_base_pinyin` VALUES ('ji', 17417);
INSERT INTO `t_base_pinyin` VALUES ('huo', 17427);
INSERT INTO `t_base_pinyin` VALUES ('hun', 17433);
INSERT INTO `t_base_pinyin` VALUES ('hui', 17454);
INSERT INTO `t_base_pinyin` VALUES ('huang', 17468);
INSERT INTO `t_base_pinyin` VALUES ('huan', 17482);
INSERT INTO `t_base_pinyin` VALUES ('huai', 17487);
INSERT INTO `t_base_pinyin` VALUES ('hua', 17496);
INSERT INTO `t_base_pinyin` VALUES ('hu', 17676);
INSERT INTO `t_base_pinyin` VALUES ('hou', 17683);
INSERT INTO `t_base_pinyin` VALUES ('hong', 17692);
INSERT INTO `t_base_pinyin` VALUES ('heng', 17697);
INSERT INTO `t_base_pinyin` VALUES ('hen', 17701);
INSERT INTO `t_base_pinyin` VALUES ('hei', 17703);
INSERT INTO `t_base_pinyin` VALUES ('he', 17721);
INSERT INTO `t_base_pinyin` VALUES ('hao', 17730);
INSERT INTO `t_base_pinyin` VALUES ('hang', 17733);
INSERT INTO `t_base_pinyin` VALUES ('han', 17752);
INSERT INTO `t_base_pinyin` VALUES ('hai', 17759);
INSERT INTO `t_base_pinyin` VALUES ('ha', 17922);
INSERT INTO `t_base_pinyin` VALUES ('guo', 17928);
INSERT INTO `t_base_pinyin` VALUES ('gun', 17931);
INSERT INTO `t_base_pinyin` VALUES ('gui', 17947);
INSERT INTO `t_base_pinyin` VALUES ('guang', 17950);
INSERT INTO `t_base_pinyin` VALUES ('guan', 17961);
INSERT INTO `t_base_pinyin` VALUES ('guai', 17964);
INSERT INTO `t_base_pinyin` VALUES ('gua', 17970);
INSERT INTO `t_base_pinyin` VALUES ('gu', 17988);
INSERT INTO `t_base_pinyin` VALUES ('gou', 17997);
INSERT INTO `t_base_pinyin` VALUES ('gong', 18012);
INSERT INTO `t_base_pinyin` VALUES ('geng', 18181);
INSERT INTO `t_base_pinyin` VALUES ('gen', 18183);
INSERT INTO `t_base_pinyin` VALUES ('gei', 18184);
INSERT INTO `t_base_pinyin` VALUES ('ge', 18201);
INSERT INTO `t_base_pinyin` VALUES ('gao', 18211);
INSERT INTO `t_base_pinyin` VALUES ('gang', 18220);
INSERT INTO `t_base_pinyin` VALUES ('gan', 18231);
INSERT INTO `t_base_pinyin` VALUES ('gai', 18237);
INSERT INTO `t_base_pinyin` VALUES ('ga', 18239);
INSERT INTO `t_base_pinyin` VALUES ('fu', 18446);
INSERT INTO `t_base_pinyin` VALUES ('fou', 18447);
INSERT INTO `t_base_pinyin` VALUES ('fo', 18448);
INSERT INTO `t_base_pinyin` VALUES ('feng', 18463);
INSERT INTO `t_base_pinyin` VALUES ('fen', 18478);
INSERT INTO `t_base_pinyin` VALUES ('fei', 18490);
INSERT INTO `t_base_pinyin` VALUES ('fang', 18501);
INSERT INTO `t_base_pinyin` VALUES ('fan', 18518);
INSERT INTO `t_base_pinyin` VALUES ('fa', 18526);
INSERT INTO `t_base_pinyin` VALUES ('er', 18696);
INSERT INTO `t_base_pinyin` VALUES ('en', 18697);
INSERT INTO `t_base_pinyin` VALUES ('e', 18710);
INSERT INTO `t_base_pinyin` VALUES ('duo', 18722);
INSERT INTO `t_base_pinyin` VALUES ('dun', 18731);
INSERT INTO `t_base_pinyin` VALUES ('dui', 18735);
INSERT INTO `t_base_pinyin` VALUES ('duan', 18741);
INSERT INTO `t_base_pinyin` VALUES ('du', 18756);
INSERT INTO `t_base_pinyin` VALUES ('dou', 18763);
INSERT INTO `t_base_pinyin` VALUES ('dong', 18773);
INSERT INTO `t_base_pinyin` VALUES ('diu', 18774);
INSERT INTO `t_base_pinyin` VALUES ('ding', 18783);
INSERT INTO `t_base_pinyin` VALUES ('die', 18952);
INSERT INTO `t_base_pinyin` VALUES ('diao', 18961);
INSERT INTO `t_base_pinyin` VALUES ('dian', 18977);
INSERT INTO `t_base_pinyin` VALUES ('di', 18996);
INSERT INTO `t_base_pinyin` VALUES ('deng', 19003);
INSERT INTO `t_base_pinyin` VALUES ('de', 19006);
INSERT INTO `t_base_pinyin` VALUES ('dao', 19018);
INSERT INTO `t_base_pinyin` VALUES ('dang', 19023);
INSERT INTO `t_base_pinyin` VALUES ('dan', 19038);
INSERT INTO `t_base_pinyin` VALUES ('dai', 19212);
INSERT INTO `t_base_pinyin` VALUES ('da', 19218);
INSERT INTO `t_base_pinyin` VALUES ('cuo', 19224);
INSERT INTO `t_base_pinyin` VALUES ('cun', 19227);
INSERT INTO `t_base_pinyin` VALUES ('cui', 19235);
INSERT INTO `t_base_pinyin` VALUES ('cuan', 19238);
INSERT INTO `t_base_pinyin` VALUES ('cu', 19242);
INSERT INTO `t_base_pinyin` VALUES ('cou', 19243);
INSERT INTO `t_base_pinyin` VALUES ('cong', 19249);
INSERT INTO `t_base_pinyin` VALUES ('ci', 19261);
INSERT INTO `t_base_pinyin` VALUES ('chuo', 19263);
INSERT INTO `t_base_pinyin` VALUES ('chun', 19270);
INSERT INTO `t_base_pinyin` VALUES ('chui', 19275);
INSERT INTO `t_base_pinyin` VALUES ('chuang', 19281);
INSERT INTO `t_base_pinyin` VALUES ('chuan', 19288);
INSERT INTO `t_base_pinyin` VALUES ('chuai', 19289);
INSERT INTO `t_base_pinyin` VALUES ('chu', 19467);
INSERT INTO `t_base_pinyin` VALUES ('chou', 19479);
INSERT INTO `t_base_pinyin` VALUES ('chong', 19484);
INSERT INTO `t_base_pinyin` VALUES ('chi', 19500);
INSERT INTO `t_base_pinyin` VALUES ('cheng', 19515);
INSERT INTO `t_base_pinyin` VALUES ('chen', 19525);
INSERT INTO `t_base_pinyin` VALUES ('che', 19531);
INSERT INTO `t_base_pinyin` VALUES ('chao', 19540);
INSERT INTO `t_base_pinyin` VALUES ('chang', 19715);
INSERT INTO `t_base_pinyin` VALUES ('chan', 19725);
INSERT INTO `t_base_pinyin` VALUES ('chai', 19728);
INSERT INTO `t_base_pinyin` VALUES ('cha', 19739);
INSERT INTO `t_base_pinyin` VALUES ('ceng', 19741);
INSERT INTO `t_base_pinyin` VALUES ('ce', 19746);
INSERT INTO `t_base_pinyin` VALUES ('cao', 19751);
INSERT INTO `t_base_pinyin` VALUES ('cang', 19756);
INSERT INTO `t_base_pinyin` VALUES ('can', 19763);
INSERT INTO `t_base_pinyin` VALUES ('cai', 19774);
INSERT INTO `t_base_pinyin` VALUES ('ca', 19775);
INSERT INTO `t_base_pinyin` VALUES ('bu', 19784);
INSERT INTO `t_base_pinyin` VALUES ('bo', 19805);
INSERT INTO `t_base_pinyin` VALUES ('bing', 19976);
INSERT INTO `t_base_pinyin` VALUES ('bin', 19982);
INSERT INTO `t_base_pinyin` VALUES ('bie', 19986);
INSERT INTO `t_base_pinyin` VALUES ('biao', 19990);
INSERT INTO `t_base_pinyin` VALUES ('bian', 20002);
INSERT INTO `t_base_pinyin` VALUES ('bi', 20026);
INSERT INTO `t_base_pinyin` VALUES ('beng', 20032);
INSERT INTO `t_base_pinyin` VALUES ('ben', 20036);
INSERT INTO `t_base_pinyin` VALUES ('bei', 20051);
INSERT INTO `t_base_pinyin` VALUES ('bao', 20230);
INSERT INTO `t_base_pinyin` VALUES ('bang', 20242);
INSERT INTO `t_base_pinyin` VALUES ('ban', 20257);
INSERT INTO `t_base_pinyin` VALUES ('bai', 20265);
INSERT INTO `t_base_pinyin` VALUES ('ba', 20283);
INSERT INTO `t_base_pinyin` VALUES ('ao', 20292);
INSERT INTO `t_base_pinyin` VALUES ('ang', 20295);
INSERT INTO `t_base_pinyin` VALUES ('an', 20304);
INSERT INTO `t_base_pinyin` VALUES ('ai', 20317);
INSERT INTO `t_base_pinyin` VALUES ('a', 20319);

-- ----------------------------
-- View structure for v_pinyin
-- ----------------------------
DROP VIEW IF EXISTS `v_pinyin`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `v_pinyin` AS select `u`.`ID` AS `id`,`to_pinyin`(`u`.`NAME`) AS `py`,`u`.`NAME` AS `name` from `syuser` `u`;

-- ----------------------------
-- Function structure for to_pinyin
-- ----------------------------
DROP FUNCTION IF EXISTS `to_pinyin`;
delimiter ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `to_pinyin`(NAME VARCHAR(255) CHARSET gbk) RETURNS varchar(255) CHARSET gbk
BEGIN
    DECLARE mycode INT;
    DECLARE tmp_lcode VARCHAR(2) CHARSET gbk;
    DECLARE lcode INT;
    DECLARE tmp_rcode VARCHAR(2) CHARSET gbk;
    DECLARE rcode INT;
    DECLARE mypy VARCHAR(255) CHARSET gbk DEFAULT '';
    DECLARE lp INT;
    SET mycode = 0;
    SET lp = 1;
    SET NAME = HEX(NAME);
    WHILE lp < LENGTH(NAME) DO
        SET tmp_lcode = SUBSTRING(NAME, lp, 2);
        SET lcode = CAST(ASCII(UNHEX(tmp_lcode)) AS UNSIGNED); 
        SET tmp_rcode = SUBSTRING(NAME, lp + 2, 2);
        SET rcode = CAST(ASCII(UNHEX(tmp_rcode)) AS UNSIGNED); 
        IF lcode > 128 THEN
            SET mycode =65536 - lcode * 256 - rcode ;
            SELECT CONCAT(mypy,pin_yin_) INTO mypy FROM t_base_pinyin WHERE CODE_ >= ABS(mycode) ORDER BY CODE_ ASC LIMIT 1;
            SET lp = lp + 4;
        ELSE
            SET mypy = CONCAT(mypy,CHAR(CAST(ASCII(UNHEX(SUBSTRING(NAME, lp, 2))) AS UNSIGNED)));
            SET lp = lp + 2;
        END IF;
    END WHILE;
    RETURN LOWER(mypy);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
