/*
 Navicat MySQL Data Transfer

 Source Server         : local_connection
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : springboot

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 12/06/2020 10:47:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '开发部');
INSERT INTO `department` VALUES (2, '测试部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `dept_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_emp_dept`(`dept_id`) USING BTREE,
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 211 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'Jerry', 'M', '1171132498@qq.com', 1);
INSERT INTO `employee` VALUES (2, 'Tom', 'F', '12121212@qq.com', 2);
INSERT INTO `employee` VALUES (3, 'uid', 'M', 'ad6e70@qq.com', 1);
INSERT INTO `employee` VALUES (4, 'uid', 'M', 'befd01@qq.com', 1);
INSERT INTO `employee` VALUES (5, 'uid', 'M', '4419d2@qq.com', 1);
INSERT INTO `employee` VALUES (6, 'uid', 'M', 'a78f33@qq.com', 1);
INSERT INTO `employee` VALUES (7, 'uid', 'M', '2a8d64@qq.com', 1);
INSERT INTO `employee` VALUES (8, 'uid', 'M', '17a815@qq.com', 1);
INSERT INTO `employee` VALUES (9, 'uid', 'M', 'dcb696@qq.com', 1);
INSERT INTO `employee` VALUES (10, 'uid', 'M', '4eace7@qq.com', 1);
INSERT INTO `employee` VALUES (11, 'uid', 'M', '795878@qq.com', 1);
INSERT INTO `employee` VALUES (12, 'uid', 'M', '5c7e59@qq.com', 1);
INSERT INTO `employee` VALUES (13, 'uid', 'M', 'ee67a10@qq.com', 1);
INSERT INTO `employee` VALUES (14, 'uid', 'M', '772c311@qq.com', 1);
INSERT INTO `employee` VALUES (15, 'uid', 'M', '8e34f12@qq.com', 1);
INSERT INTO `employee` VALUES (16, 'uid', 'M', 'c330b13@qq.com', 1);
INSERT INTO `employee` VALUES (17, 'uid', 'M', '0399b14@qq.com', 1);
INSERT INTO `employee` VALUES (18, 'uid', 'M', '6c7bb15@qq.com', 1);
INSERT INTO `employee` VALUES (19, 'uid', 'M', '09a1f16@qq.com', 1);
INSERT INTO `employee` VALUES (20, 'uid', 'M', '7dee217@qq.com', 1);
INSERT INTO `employee` VALUES (21, 'uid', 'M', 'b9ee318@qq.com', 1);
INSERT INTO `employee` VALUES (22, 'uid', 'M', 'beb4819@qq.com', 1);
INSERT INTO `employee` VALUES (23, 'uid', 'M', '8eb4e20@qq.com', 1);
INSERT INTO `employee` VALUES (24, 'uid', 'M', 'b0bfc21@qq.com', 1);
INSERT INTO `employee` VALUES (25, 'uid', 'M', '25af222@qq.com', 1);
INSERT INTO `employee` VALUES (26, 'uid', 'M', 'b42c023@qq.com', 1);
INSERT INTO `employee` VALUES (27, 'uid', 'M', '9c65224@qq.com', 1);
INSERT INTO `employee` VALUES (28, 'uid', 'M', '5476225@qq.com', 1);
INSERT INTO `employee` VALUES (29, 'uid', 'M', 'b358726@qq.com', 1);
INSERT INTO `employee` VALUES (30, 'uid', 'M', '51a3527@qq.com', 1);
INSERT INTO `employee` VALUES (31, 'uid', 'M', 'c30d228@qq.com', 1);
INSERT INTO `employee` VALUES (32, 'uid', 'M', '8965829@qq.com', 1);
INSERT INTO `employee` VALUES (33, 'uid', 'M', '9dafd30@qq.com', 1);
INSERT INTO `employee` VALUES (34, 'uid', 'M', '0a66431@qq.com', 1);
INSERT INTO `employee` VALUES (35, 'uid', 'M', '2cd4332@qq.com', 1);
INSERT INTO `employee` VALUES (36, 'uid', 'M', '9f1dd33@qq.com', 1);
INSERT INTO `employee` VALUES (37, 'uid', 'M', 'a735334@qq.com', 1);
INSERT INTO `employee` VALUES (38, 'uid', 'M', '7b8e135@qq.com', 1);
INSERT INTO `employee` VALUES (39, 'uid', 'M', '60b6336@qq.com', 1);
INSERT INTO `employee` VALUES (40, 'uid', 'M', 'b52a637@qq.com', 1);
INSERT INTO `employee` VALUES (41, 'uid', 'M', 'd791038@qq.com', 1);
INSERT INTO `employee` VALUES (42, 'uid', 'M', '45a8139@qq.com', 1);
INSERT INTO `employee` VALUES (43, 'uid', 'M', '5664040@qq.com', 1);
INSERT INTO `employee` VALUES (44, 'uid', 'M', '3065141@qq.com', 1);
INSERT INTO `employee` VALUES (45, 'uid', 'M', 'bf25d42@qq.com', 1);
INSERT INTO `employee` VALUES (46, 'uid', 'M', '1fe9443@qq.com', 1);
INSERT INTO `employee` VALUES (47, 'uid', 'M', 'f148f44@qq.com', 1);
INSERT INTO `employee` VALUES (48, 'uid', 'M', 'b07ec45@qq.com', 1);
INSERT INTO `employee` VALUES (49, 'uid', 'M', '43fb746@qq.com', 1);
INSERT INTO `employee` VALUES (50, 'uid', 'M', 'c429c47@qq.com', 1);
INSERT INTO `employee` VALUES (51, 'uid', 'M', '6306848@qq.com', 1);
INSERT INTO `employee` VALUES (52, 'uid', 'M', '1b0ab49@qq.com', 1);
INSERT INTO `employee` VALUES (53, 'uid', 'M', '0d63150@qq.com', 1);
INSERT INTO `employee` VALUES (54, 'uid', 'M', '0e2b451@qq.com', 1);
INSERT INTO `employee` VALUES (55, 'uid', 'M', 'daa8e52@qq.com', 1);
INSERT INTO `employee` VALUES (56, 'uid', 'M', '9723253@qq.com', 1);
INSERT INTO `employee` VALUES (57, 'uid', 'M', 'be59954@qq.com', 1);
INSERT INTO `employee` VALUES (58, 'uid', 'M', 'a9c4555@qq.com', 1);
INSERT INTO `employee` VALUES (59, 'uid', 'M', '17ca156@qq.com', 1);
INSERT INTO `employee` VALUES (60, 'uid', 'M', '14ce257@qq.com', 1);
INSERT INTO `employee` VALUES (61, 'uid', 'M', 'd394758@qq.com', 1);
INSERT INTO `employee` VALUES (62, 'uid', 'M', 'bd3a859@qq.com', 1);
INSERT INTO `employee` VALUES (63, 'uid', 'M', '49cd560@qq.com', 1);
INSERT INTO `employee` VALUES (64, 'uid', 'M', '808eb61@qq.com', 1);
INSERT INTO `employee` VALUES (65, 'uid', 'M', 'c047762@qq.com', 1);
INSERT INTO `employee` VALUES (66, 'uid', 'M', 'e78b263@qq.com', 1);
INSERT INTO `employee` VALUES (67, 'uid', 'M', '7ee7564@qq.com', 1);
INSERT INTO `employee` VALUES (68, 'uid', 'M', '6937765@qq.com', 1);
INSERT INTO `employee` VALUES (69, 'uid', 'M', '16b7366@qq.com', 1);
INSERT INTO `employee` VALUES (70, 'uid', 'M', 'beb8967@qq.com', 1);
INSERT INTO `employee` VALUES (71, 'uid', 'M', '98b4768@qq.com', 1);
INSERT INTO `employee` VALUES (72, 'uid', 'M', '425e869@qq.com', 1);
INSERT INTO `employee` VALUES (73, 'uid', 'M', 'e64ab70@qq.com', 1);
INSERT INTO `employee` VALUES (74, 'uid', 'M', '1b5a871@qq.com', 1);
INSERT INTO `employee` VALUES (75, 'uid', 'M', 'd145072@qq.com', 1);
INSERT INTO `employee` VALUES (76, 'uid', 'M', 'fd21673@qq.com', 1);
INSERT INTO `employee` VALUES (77, 'uid', 'M', '694ac74@qq.com', 1);
INSERT INTO `employee` VALUES (78, 'uid', 'M', '3ebd175@qq.com', 1);
INSERT INTO `employee` VALUES (79, 'uid', 'M', 'af3bf76@qq.com', 1);
INSERT INTO `employee` VALUES (80, 'uid', 'M', '7218677@qq.com', 1);
INSERT INTO `employee` VALUES (81, 'uid', 'M', 'a051878@qq.com', 1);
INSERT INTO `employee` VALUES (82, 'uid', 'M', '7d4bd79@qq.com', 1);
INSERT INTO `employee` VALUES (83, 'uid', 'M', 'c287c80@qq.com', 1);
INSERT INTO `employee` VALUES (84, 'uid', 'M', '62f6b81@qq.com', 1);
INSERT INTO `employee` VALUES (85, 'uid', 'M', '572fb82@qq.com', 1);
INSERT INTO `employee` VALUES (86, 'uid', 'M', 'b4e2483@qq.com', 1);
INSERT INTO `employee` VALUES (87, 'uid', 'M', '44ecb84@qq.com', 1);
INSERT INTO `employee` VALUES (88, 'uid', 'M', '97c6085@qq.com', 1);
INSERT INTO `employee` VALUES (89, 'uid', 'M', '8dd8186@qq.com', 1);
INSERT INTO `employee` VALUES (90, 'uid', 'M', '3717187@qq.com', 1);
INSERT INTO `employee` VALUES (91, 'uid', 'M', 'b724d88@qq.com', 1);
INSERT INTO `employee` VALUES (92, 'uid', 'M', 'cdadb89@qq.com', 1);
INSERT INTO `employee` VALUES (93, 'uid', 'M', '29b9a90@qq.com', 1);
INSERT INTO `employee` VALUES (94, 'uid', 'M', 'e66d291@qq.com', 1);
INSERT INTO `employee` VALUES (95, 'uid', 'M', '7434a92@qq.com', 1);
INSERT INTO `employee` VALUES (96, 'uid', 'M', '78d6c93@qq.com', 1);
INSERT INTO `employee` VALUES (97, 'uid', 'M', 'ff13394@qq.com', 1);
INSERT INTO `employee` VALUES (98, 'uid', 'M', 'bf9c095@qq.com', 1);
INSERT INTO `employee` VALUES (99, 'uid', 'M', '7f0b296@qq.com', 1);
INSERT INTO `employee` VALUES (100, 'uid', 'M', '50e6a97@qq.com', 1);
INSERT INTO `employee` VALUES (101, 'uid', 'M', '906d698@qq.com', 1);
INSERT INTO `employee` VALUES (102, 'uid', 'M', '7551e99@qq.com', 1);
INSERT INTO `employee` VALUES (103, 'uid', 'M', '1f7fc100@qq.com', 1);
INSERT INTO `employee` VALUES (104, 'uid', 'M', '68bf1101@qq.com', 1);
INSERT INTO `employee` VALUES (105, 'uid', 'M', 'd6362102@qq.com', 1);
INSERT INTO `employee` VALUES (106, 'uid', 'M', '689d1103@qq.com', 1);
INSERT INTO `employee` VALUES (107, 'uid', 'M', 'f6511104@qq.com', 1);
INSERT INTO `employee` VALUES (108, 'uid', 'M', '1d3e3105@qq.com', 1);
INSERT INTO `employee` VALUES (109, 'uid', 'M', '8414c106@qq.com', 1);
INSERT INTO `employee` VALUES (110, 'uid', 'M', '63a51107@qq.com', 1);
INSERT INTO `employee` VALUES (111, 'uid', 'M', 'c9860108@qq.com', 1);
INSERT INTO `employee` VALUES (112, 'uid', 'M', 'f3de7109@qq.com', 1);
INSERT INTO `employee` VALUES (113, 'uid', 'M', '102a1110@qq.com', 1);
INSERT INTO `employee` VALUES (114, 'uid', 'M', '41aba111@qq.com', 1);
INSERT INTO `employee` VALUES (115, 'uid', 'M', '9cea5112@qq.com', 1);
INSERT INTO `employee` VALUES (116, 'uid', 'M', '8aa64113@qq.com', 1);
INSERT INTO `employee` VALUES (117, 'uid', 'M', 'ccd6f114@qq.com', 1);
INSERT INTO `employee` VALUES (118, 'uid', 'M', '2d2a4115@qq.com', 1);
INSERT INTO `employee` VALUES (119, 'uid', 'M', 'e3863116@qq.com', 1);
INSERT INTO `employee` VALUES (120, 'uid', 'M', 'f0755117@qq.com', 1);
INSERT INTO `employee` VALUES (121, 'uid', 'M', '7816c118@qq.com', 1);
INSERT INTO `employee` VALUES (122, 'uid', 'M', 'adffd119@qq.com', 1);
INSERT INTO `employee` VALUES (123, 'uid', 'M', '347e2120@qq.com', 1);
INSERT INTO `employee` VALUES (124, 'uid', 'M', '2d6d1121@qq.com', 1);
INSERT INTO `employee` VALUES (125, 'uid', 'M', '3e236122@qq.com', 1);
INSERT INTO `employee` VALUES (126, 'uid', 'M', 'e795c123@qq.com', 1);
INSERT INTO `employee` VALUES (127, 'uid', 'M', '3825f124@qq.com', 1);
INSERT INTO `employee` VALUES (128, 'uid', 'M', '4d3c7125@qq.com', 1);
INSERT INTO `employee` VALUES (129, 'uid', 'M', '42086126@qq.com', 1);
INSERT INTO `employee` VALUES (130, 'uid', 'M', 'add3b127@qq.com', 1);
INSERT INTO `employee` VALUES (131, 'uid', 'M', 'bcfcc128@qq.com', 1);
INSERT INTO `employee` VALUES (132, 'uid', 'M', '1ce26129@qq.com', 1);
INSERT INTO `employee` VALUES (133, 'uid', 'M', 'cc0d6130@qq.com', 1);
INSERT INTO `employee` VALUES (134, 'uid', 'M', '08f83131@qq.com', 1);
INSERT INTO `employee` VALUES (135, 'uid', 'M', 'd38f4132@qq.com', 1);
INSERT INTO `employee` VALUES (136, 'uid', 'M', 'b23c3133@qq.com', 1);
INSERT INTO `employee` VALUES (137, 'uid', 'M', 'fab88134@qq.com', 1);
INSERT INTO `employee` VALUES (138, 'uid', 'M', '82117135@qq.com', 1);
INSERT INTO `employee` VALUES (139, 'uid', 'M', 'b46dc136@qq.com', 1);
INSERT INTO `employee` VALUES (140, 'uid', 'M', '271b0137@qq.com', 1);
INSERT INTO `employee` VALUES (141, 'uid', 'M', 'b65f0138@qq.com', 1);
INSERT INTO `employee` VALUES (142, 'uid', 'M', '52970139@qq.com', 1);
INSERT INTO `employee` VALUES (143, 'uid', 'M', '9b27a140@qq.com', 1);
INSERT INTO `employee` VALUES (144, 'uid', 'M', 'a9815141@qq.com', 1);
INSERT INTO `employee` VALUES (145, 'uid', 'M', '1fb2b142@qq.com', 1);
INSERT INTO `employee` VALUES (146, 'uid', 'M', 'adeb2143@qq.com', 1);
INSERT INTO `employee` VALUES (147, 'uid', 'M', 'c0d88144@qq.com', 1);
INSERT INTO `employee` VALUES (148, 'uid', 'M', '0032b145@qq.com', 1);
INSERT INTO `employee` VALUES (149, 'uid', 'M', 'd81f0146@qq.com', 1);
INSERT INTO `employee` VALUES (150, 'uid', 'M', '06a57147@qq.com', 1);
INSERT INTO `employee` VALUES (151, 'uid', 'M', '64e73148@qq.com', 1);
INSERT INTO `employee` VALUES (152, 'uid', 'M', 'c0677149@qq.com', 1);
INSERT INTO `employee` VALUES (153, 'uid', 'M', 'a6131150@qq.com', 1);
INSERT INTO `employee` VALUES (154, 'uid', 'M', '927a6151@qq.com', 1);
INSERT INTO `employee` VALUES (155, 'uid', 'M', '3b4af152@qq.com', 1);
INSERT INTO `employee` VALUES (156, 'uid', 'M', '7235b153@qq.com', 1);
INSERT INTO `employee` VALUES (157, 'uid', 'M', 'a5760154@qq.com', 1);
INSERT INTO `employee` VALUES (158, 'uid', 'M', '69fea155@qq.com', 1);
INSERT INTO `employee` VALUES (159, 'uid', 'M', '6cbe3156@qq.com', 1);
INSERT INTO `employee` VALUES (160, 'uid', 'M', 'a33ab157@qq.com', 1);
INSERT INTO `employee` VALUES (161, 'uid', 'M', '3cdc6158@qq.com', 1);
INSERT INTO `employee` VALUES (162, 'uid', 'M', '863b2159@qq.com', 1);
INSERT INTO `employee` VALUES (163, 'uid', 'M', '7afc5160@qq.com', 1);
INSERT INTO `employee` VALUES (164, 'uid', 'M', '2638a161@qq.com', 1);
INSERT INTO `employee` VALUES (165, 'uid', 'M', '8a216162@qq.com', 1);
INSERT INTO `employee` VALUES (166, 'uid', 'M', '61df6163@qq.com', 1);
INSERT INTO `employee` VALUES (167, 'uid', 'M', '172ca164@qq.com', 1);
INSERT INTO `employee` VALUES (168, 'uid', 'M', '0bf45165@qq.com', 1);
INSERT INTO `employee` VALUES (169, 'uid', 'M', '43c12166@qq.com', 1);
INSERT INTO `employee` VALUES (170, 'uid', 'M', '75c2b167@qq.com', 1);
INSERT INTO `employee` VALUES (171, 'uid', 'M', '89fcb168@qq.com', 1);
INSERT INTO `employee` VALUES (172, 'uid', 'M', '7358e169@qq.com', 1);
INSERT INTO `employee` VALUES (173, 'uid', 'M', '5c501170@qq.com', 1);
INSERT INTO `employee` VALUES (174, 'uid', 'M', '14887171@qq.com', 1);
INSERT INTO `employee` VALUES (175, 'uid', 'M', '68ae0172@qq.com', 1);
INSERT INTO `employee` VALUES (176, 'uid', 'M', 'f32cd173@qq.com', 1);
INSERT INTO `employee` VALUES (177, 'uid', 'M', 'a8cf9174@qq.com', 1);
INSERT INTO `employee` VALUES (178, 'uid', 'M', 'd8a06175@qq.com', 1);
INSERT INTO `employee` VALUES (179, 'uid', 'M', 'e6c37176@qq.com', 1);
INSERT INTO `employee` VALUES (180, 'uid', 'M', '659e3177@qq.com', 1);
INSERT INTO `employee` VALUES (181, 'uid', 'M', '5560a178@qq.com', 1);
INSERT INTO `employee` VALUES (182, 'uid', 'M', '8ca14179@qq.com', 1);
INSERT INTO `employee` VALUES (183, 'uid', 'M', 'de2f8180@qq.com', 1);
INSERT INTO `employee` VALUES (184, 'uid', 'M', 'c8b8e181@qq.com', 1);
INSERT INTO `employee` VALUES (185, 'uid', 'M', '76a52182@qq.com', 1);
INSERT INTO `employee` VALUES (186, 'uid', 'M', 'bbbdf183@qq.com', 1);
INSERT INTO `employee` VALUES (187, 'uid', 'M', 'c2b82184@qq.com', 1);
INSERT INTO `employee` VALUES (188, 'uid', 'M', 'a00c4185@qq.com', 1);
INSERT INTO `employee` VALUES (189, 'uid', 'M', 'e963a186@qq.com', 1);
INSERT INTO `employee` VALUES (190, 'uid', 'M', 'c60ee187@qq.com', 1);
INSERT INTO `employee` VALUES (191, 'uid', 'M', '765cf188@qq.com', 1);
INSERT INTO `employee` VALUES (192, 'uid', 'M', 'c728d189@qq.com', 1);
INSERT INTO `employee` VALUES (193, 'uid', 'M', '0f5c6190@qq.com', 1);
INSERT INTO `employee` VALUES (194, 'uid', 'M', 'c673c191@qq.com', 1);
INSERT INTO `employee` VALUES (195, 'uid', 'M', '8fea5192@qq.com', 1);
INSERT INTO `employee` VALUES (197, 'uid', 'M', '8da6e194@qq.com', 1);
INSERT INTO `employee` VALUES (198, 'uid', 'M', '95fc0195@qq.com', 1);
INSERT INTO `employee` VALUES (199, 'uid', 'M', '1e46b196@qq.com', 1);
INSERT INTO `employee` VALUES (200, 'uid', 'M', '32584197@qq.com', 1);
INSERT INTO `employee` VALUES (201, 'uid', 'M', 'c61b1198@qq.com', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `perms` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'clp', '123456', 'user:add');
INSERT INTO `user` VALUES (2, 'admin', 'admin', 'user:update');
INSERT INTO `user` VALUES (3, 'test', '123456', NULL);

SET FOREIGN_KEY_CHECKS = 1;
