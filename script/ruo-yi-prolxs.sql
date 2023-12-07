/*
 Navicat Premium Data Transfer

 Source Server         : rick
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : ruo-yi-pro

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 21/04/2023 09:50:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `activity_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `start_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `end_Time` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `owner` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '负责人',
  `status` int(11) NULL DEFAULT NULL COMMENT '0未开始报名 1正在报名 2报名结束 3等待结果',
  `publish_Time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `description` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `update_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1618480660', 112, '测试', '2023-04-13 00:00:00', '2023-04-29 00:00:00', 0, '测试', 0, '2023-04-15 14:03:40', '测试', '团队', '测试', 'https://cdn.shibe.online/shibes/4a6b8ade2eb73e0d1e089b31ab654a448cc8f516.jpg', 'admin', '2023-04-14 12:35:57.140000', 'admin', '2023-04-15 14:03:40.745000');
INSERT INTO `activity` VALUES ('5590708262', 113, '测试', '2023-04-06 00:00:00', '2023-04-15 00:00:00', 0, '测试', 0, '2023-04-15 12:01:32', '测试', '团队', '测试u', 'https://cdn.shibe.online/shibes/1424a2f7a87023eb1bd858ce9a3084fadac67ec6.jpg', 'admin', '2023-04-14 16:46:56.598000', 'admin', '2023-04-14 16:46:56.598000');
INSERT INTO `activity` VALUES ('5292830220', 114, '1', '2023-04-06 00:00:00', '2023-04-28 00:00:00', 0, '1', 0, '2023-04-15 14:03:46', '1', '团队', '1', 'https://cdn.shibe.online/shibes/c40bf92c594019ec40a9ccb357a7a8c4336df02d.jpg', 'admin', '2023-04-14 18:18:15.092000', 'admin', '2023-04-15 14:03:46.381000');
INSERT INTO `activity` VALUES ('2515825157', 115, '测试2', '2023-04-15 13:59:15', '2024-06-14 00:00:00', 0, '李祥生·', 0, '2023-04-15 14:03:50', '计算机', '团队', '无', 'https://cdn.shibe.online/shibes/e84f063e0025db4a62ca67093d8069805ef5d694.jpg', 'admin', '2023-04-15 13:59:46.744000', 'admin', '2023-04-15 14:03:50.311000');
INSERT INTO `activity` VALUES ('9391392310', 116, '测试4', '2023-04-15 14:00:03', '2023-04-22 00:00:00', 0, '林建军', 0, NULL, '11', '团队', '111', 'https://cdn.shibe.online/shibes/eef073ef7c085cbfa2d2858cefce7dd8dfea9541.jpg', 'admin', '2023-04-15 14:00:21.126000', 'admin', '2023-04-15 14:00:21.126000');
INSERT INTO `activity` VALUES ('1528426439', 117, '测试5', '2023-04-15 14:00:33', '2023-04-22 00:00:00', 0, '李祥生', 0, NULL, '2', '团队', NULL, 'https://cdn.shibe.online/shibes/14756a563e1ffb84e85790b73c09ac6edddac8be.jpg', 'admin', '2023-04-15 14:00:48.510000', 'admin', '2023-04-15 14:00:48.510000');
INSERT INTO `activity` VALUES ('6174352803', 118, '测试5', '2023-04-06 00:00:00', '2023-04-21 00:00:00', 0, '李祥生', 0, NULL, '111', '团队', '11', 'https://cdn.shibe.online/shibes/bbc57c3c17f6948b98b35bb881817d5fc63209f9.jpg', 'admin', '2023-04-15 14:01:37.551000', 'admin', '2023-04-15 14:01:37.551000');
INSERT INTO `activity` VALUES ('5711549022', 119, 'ceshi7', '2023-04-06 00:00:00', '2023-04-06 00:00:00', 0, '李祥生', 0, NULL, '1111', '团队', '11', 'https://cdn.shibe.online/shibes/c22d49ea9fb1ac2a48545db94c8ab9d2b35613b5.jpg', 'admin', '2023-04-15 14:02:10.098000', 'admin', '2023-04-15 14:02:10.098000');
INSERT INTO `activity` VALUES ('762559133', 120, '测试9', '2023-04-15 14:02:23', '2023-04-15 14:02:27', 0, '111', 0, NULL, '11', '团队', '11', 'https://cdn.shibe.online/shibes/099ec5e96296a6aad81a75131cfbe0851fcaef62.jpg', 'admin', '2023-04-15 14:02:31.499000', 'admin', '2023-04-15 14:02:31.499000');
INSERT INTO `activity` VALUES ('1850584836', 121, '测试10', '2023-04-07 00:00:00', '2023-04-22 00:00:00', 0, '李祥生', 0, '2023-04-16 21:58:29', '1111', '个人', '11', 'https://cdn.shibe.online/shibes/d8b6afc5f67dc986e1a08c6fc3c7ce87a61f67fa.jpg', 'admin', '2023-04-15 14:03:00.140000', 'admin', '2023-04-15 14:03:00.140000');
INSERT INTO `activity` VALUES ('7467260688', 122, '测试11', '2023-04-14 00:00:00', '2023-04-22 00:00:00', 0, '李祥生', 0, '2023-04-16 21:58:23', '11', '个人', '11', 'https://cdn.shibe.online/shibes/e2cfeddfb460fec38a5cacc288f9679405cd81e8.jpg', 'admin', '2023-04-15 14:03:35.937000', 'admin', '2023-04-15 14:03:35.937000');

-- ----------------------------
-- Table structure for activity_teamships
-- ----------------------------
DROP TABLE IF EXISTS `activity_teamships`;
CREATE TABLE `activity_teamships`  (
  `atshipsId` tinyint(10) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `activityId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '竞赛Id',
  `teamId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '团队Id',
  `delete` tinyint(4) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`atshipsId`) USING BTREE,
  INDEX `at_activity_Id`(`activityId`) USING BTREE,
  INDEX `at_team_Id`(`teamId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_teamships
-- ----------------------------

-- ----------------------------
-- Table structure for activity_userships
-- ----------------------------
DROP TABLE IF EXISTS `activity_userships`;
CREATE TABLE `activity_userships`  (
  `aushipsId` tinyint(10) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `activityId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '竞赛ID',
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生ID',
  `delete` tinyint(4) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`aushipsId`) USING BTREE,
  INDEX `au_activity_Id`(`activityId`) USING BTREE,
  INDEX `au_user_Id`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_userships
-- ----------------------------

-- ----------------------------
-- Table structure for file_info
-- ----------------------------
DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info`  (
  `Id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `activityId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '竞赛Id',
  `teamId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '团队Id',
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生Id',
  `fileUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  `updateTime` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `delete` tinyint(4) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_info
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1646410131151675394, 'activity', '竞赛信息表', NULL, NULL, 'Activity', 'crud', 'com.ruoyi.contest', 'contest', 'activity', '竞赛管理', '李祥生', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"}', 'admin', '2023-04-13 15:07:10', 'admin', '2023-04-14 11:55:31', NULL);
INSERT INTO `gen_table` VALUES (1646412527328190465, 'activity_teamships', '', NULL, NULL, 'ActivityTeamships', 'crud', 'com.ruoyi.system', 'system', 'teamships', '', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-13 15:07:10', 'admin', '2023-04-13 15:07:10', NULL);
INSERT INTO `gen_table` VALUES (1646412527449825282, 'activity_userships', '', NULL, NULL, 'ActivityUserships', 'crud', 'com.ruoyi.system', 'system', 'userships', '', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-13 15:07:10', 'admin', '2023-04-13 15:07:10', NULL);
INSERT INTO `gen_table` VALUES (1646412527487574017, 'file_info', '', NULL, NULL, 'FileInfo', 'crud', 'com.ruoyi.system', 'system', 'info', '', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-13 15:07:10', 'admin', '2023-04-13 15:07:10', NULL);
INSERT INTO `gen_table` VALUES (1646412527542099970, 'team_info', '队伍信息表', NULL, NULL, 'TeamInfo', 'crud', 'com.ruoyi.contest', 'contest', 'info', '团队管理', '李祥生', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"}', 'admin', '2023-04-13 15:07:10', 'admin', '2023-04-19 11:48:38', NULL);
INSERT INTO `gen_table` VALUES (1646412527592431618, 'team_memberships', '', NULL, NULL, 'TeamMemberships', 'crud', 'com.ruoyi.system', 'system', 'memberships', '', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-13 15:07:10', 'admin', '2023-04-13 15:07:10', NULL);
INSERT INTO `gen_table` VALUES (1646412527651151874, 'teammember', '', NULL, NULL, 'Teammember', 'crud', 'com.ruoyi.system', 'system', 'teammember', '', 'ruoyi', '0', '/', NULL, 'admin', '2023-04-13 15:07:10', 'admin', '2023-04-13 15:07:10', NULL);
INSERT INTO `gen_table` VALUES (1646412527693094914, 'user', '学生信息表', NULL, NULL, 'User', 'crud', 'com.ruoyi.contest', 'contest', 'user', '学生管理', '李祥生', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"}', 'admin', '2023-04-13 15:07:11', 'admin', '2023-04-14 10:28:51', NULL);
INSERT INTO `gen_table` VALUES (1647123087246123009, 'log', '公告表', NULL, NULL, 'Log', 'crud', 'com.ruoyi.contest', 'contest', 'log', '公告管理', '李祥生', '0', '/', '{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":1}', 'admin', '2023-04-15 14:21:38', 'admin', '2023-04-15 14:23:57', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1646410131269115905, 1646410131151675394, 'id', '主键ID', 'int(255)', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646410131273310209, 1646410131151675394, 'name', '竞赛名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646410131294281729, 1646410131151675394, 'deleted', '', 'tinyint(1)', 'Integer', 'deleted', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646410131298476033, 1646410131151675394, 'owner', '负责人', 'varchar(255)', 'String', 'owner', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646410131306864641, 1646410131151675394, 'status', '状态', 'int(11)', 'Long', 'status', '0', '0', '0', '0', '0', '1', '0', 'EQ', 'radio', '', 8, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646410131311058946, 1646410131151675394, 'website', '网站', 'varchar(255)', 'String', 'website', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646410131315253249, 1646410131151675394, 'type', '类型', 'varchar(100)', 'String', 'type', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646410131315253250, 1646410131151675394, 'description', '描述', 'varchar(1024)', 'String', 'description', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 12, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646410131323641858, 1646410131151675394, 'img', '', 'varchar(255)', 'String', 'img', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'imageUpload', '', 13, 'admin', '2023-04-13 15:08:59', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646412527424659458, 1646412527328190465, 'atshipsId', '主键Id', 'tinyint(10)', 'Integer', 'atshipsId', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527428853761, 1646412527328190465, 'activityId', '竞赛Id', 'varchar(100)', 'String', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527441436673, 1646412527328190465, 'teamId', '团队Id', 'varchar(100)', 'String', 'teamId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527441436674, 1646412527328190465, 'delete', '逻辑删除', 'tinyint(4)', 'Integer', 'delete', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527470796801, 1646412527449825282, 'aushipsId', '主键Id', 'tinyint(10)', 'Integer', 'aushipsId', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527470796802, 1646412527449825282, 'activityId', '竞赛ID', 'varchar(255)', 'String', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527479185409, 1646412527449825282, 'userId', '学生ID', 'varchar(255)', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527479185410, 1646412527449825282, 'delete', '逻辑删除', 'tinyint(4)', 'Integer', 'delete', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527521128449, 1646412527487574017, 'Id', '主键Id', 'tinyint(4)', 'Integer', 'Id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-18 17:36:46');
INSERT INTO `gen_table_column` VALUES (1646412527521128450, 1646412527487574017, 'activityId', '竞赛Id', 'varchar(255)', 'String', 'activityId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-18 17:36:46');
INSERT INTO `gen_table_column` VALUES (1646412527525322754, 1646412527487574017, 'teamId', '团队Id', 'varchar(255)', 'String', 'teamId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-18 17:36:46');
INSERT INTO `gen_table_column` VALUES (1646412527525322755, 1646412527487574017, 'userId', '学生Id', 'varchar(255)', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-18 17:36:46');
INSERT INTO `gen_table_column` VALUES (1646412527525322756, 1646412527487574017, 'fileUrl', '文件路径', 'varchar(255)', 'String', 'fileUrl', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-18 17:36:46');
INSERT INTO `gen_table_column` VALUES (1646412527525322757, 1646412527487574017, 'updateTime', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-18 17:36:46');
INSERT INTO `gen_table_column` VALUES (1646412527525322758, 1646412527487574017, 'delete', '逻辑删除', 'tinyint(4)', 'Integer', 'delete', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-18 17:36:46');
INSERT INTO `gen_table_column` VALUES (1646412527584043011, 1646412527542099970, 'track', '赛道', 'varchar(100)', 'String', 'track', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1646412527621791746, 1646412527592431618, 'tmshipsId', '主键Id', 'tinyint(10)', 'Integer', 'tmshipsId', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527630180353, 1646412527592431618, 'teamId', '团队Id', 'varchar(255)', 'String', 'teamId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527634374657, 1646412527592431618, 'userId', '学生Id', 'varchar(255)', 'String', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527667929089, 1646412527651151874, 'teamName', '团队名', 'varchar(255)', 'String', 'teamName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 1, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527672123393, 1646412527651151874, 'teamId', '团队Id', 'int(255)', 'Long', 'teamId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527672123394, 1646412527651151874, 'memberName', '队员姓名', 'varchar(255)', 'String', 'memberName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527672123395, 1646412527651151874, 'memberUid', '队员学号', 'varchar(100)', 'String', 'memberUid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527680512001, 1646412527651151874, 'teacher', '指导教师', 'varchar(255)', 'String', 'teacher', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527680512002, 1646412527651151874, 'teacherId', '指导教师教工号', 'varchar(255)', 'String', 'teacherId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527684706306, 1646412527651151874, 'id', '主键id', 'tinyint(10)', 'Integer', 'id', '1', '0', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-13 15:18:30');
INSERT INTO `gen_table_column` VALUES (1646412527722455042, 1646412527693094914, 'uid', '学号', 'varchar(1024)', 'String', 'uid', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 1, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527726649346, 1646412527693094914, 'name', '姓名', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527730843649, 1646412527693094914, 'email', '邮箱', 'varchar(255)', 'String', 'email', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527730843650, 1646412527693094914, 'academy', '学院', 'varchar(255)', 'String', 'academy', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527730843651, 1646412527693094914, 'deleted', '', 'tinyint(1) unsigned', 'Integer', 'deleted', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 5, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527730843652, 1646412527693094914, 'gender', '性别', 'tinyint(1)', 'Integer', 'gender', '0', '0', '0', '1', '1', '0', '0', 'EQ', 'input', '', 6, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527739232258, 1646412527693094914, 'role', '', 'varchar(255)', 'String', 'role', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 7, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527739232261, 1646412527693094914, 'grade', '年级', 'varchar(255)', 'String', 'grade', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527743426562, 1646412527693094914, 'password', '密码', 'varchar(255)', 'String', 'password', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 12, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527743426563, 1646412527693094914, 'phone', '手机号', 'varchar(255)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646412527747620867, 1646412527693094914, 'Invitation', '', 'varchar(255)', 'String', 'Invitation', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 14, 'admin', '2023-04-13 15:18:30', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646686639678205954, 1646412527693094914, 'id', 'ID', 'int(100)', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 15, 'admin', '2023-04-14 09:27:44', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646699134400733185, 1646412527693094914, 'I_d_Number', '身份证号', 'varchar(1024)', 'String', 'iDNumber', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'textarea', '', 8, 'admin', '2023-04-14 10:17:22', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646699134430093314, 1646412527693094914, 'student_Class', '班级', 'varchar(255)', 'String', 'studentClass', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-04-14 10:17:22', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646699134463647746, 1646412527693094914, 'specialized_Subject', '专业', 'varchar(255)', 'String', 'specializedSubject', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-04-14 10:17:23', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646699134513979394, 1646412527693094914, 'create_by', '', 'varchar(100)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 16, 'admin', '2023-04-14 10:17:23', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646699134530756609, 1646412527693094914, 'create_time', '', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 17, 'admin', '2023-04-14 10:17:23', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646699134530756610, 1646412527693094914, 'update_by', '', 'varchar(100)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2023-04-14 10:17:23', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646699134547533825, 1646412527693094914, 'update_time', '', 'datetime(6)', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 19, 'admin', '2023-04-14 10:17:23', 'admin', '2023-04-14 10:28:51');
INSERT INTO `gen_table_column` VALUES (1646704033838563329, 1646410131151675394, 'start_Time', '开始时间', 'varchar(255)', 'String', 'startTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 4, 'admin', '2023-04-14 10:36:51', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646704033855340545, 1646410131151675394, 'end_Time', '结束时间', 'varchar(255)', 'String', 'endTime', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 5, 'admin', '2023-04-14 10:36:51', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646704033905672193, 1646410131151675394, 'publish_Time', '', 'datetime', 'Date', 'publishname', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'datetime', '', 9, 'admin', '2023-04-14 10:36:51', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1646705022092083201, 1646410131151675394, 'activity_id', '竞赛ID', 'varchar(255)', 'String', 'activityId', '0', '0', '1', '0', '0', '1', '1', 'LIKE', 'input', '', 1, 'admin', '2023-04-14 10:40:46', 'admin', '2023-04-14 11:55:31');
INSERT INTO `gen_table_column` VALUES (1647123087338397698, 1647123087246123009, 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-15 14:22:01', 'admin', '2023-04-15 14:23:57');
INSERT INTO `gen_table_column` VALUES (1647123087350980609, 1647123087246123009, 'log', '公告', 'text', 'String', 'log', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'editor', '', 2, 'admin', '2023-04-15 14:22:01', 'admin', '2023-04-15 14:23:57');
INSERT INTO `gen_table_column` VALUES (1647123087350980610, 1647123087246123009, 'create_by', '', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 3, 'admin', '2023-04-15 14:22:01', 'admin', '2023-04-15 14:23:57');
INSERT INTO `gen_table_column` VALUES (1647123087367757826, 1647123087246123009, 'create_time', '', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2023-04-15 14:22:01', 'admin', '2023-04-15 14:23:57');
INSERT INTO `gen_table_column` VALUES (1647123087367757827, 1647123087246123009, 'update_by', '', 'varchar(100)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-04-15 14:22:01', 'admin', '2023-04-15 14:23:57');
INSERT INTO `gen_table_column` VALUES (1647123087367757828, 1647123087246123009, 'update_time', '', 'datetime(6)', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-04-15 14:22:01', 'admin', '2023-04-15 14:23:57');
INSERT INTO `gen_table_column` VALUES (1648249964237066241, 1646412527542099970, 'activity_name', '参加竞赛名称', 'varchar(255)', 'String', 'activityName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2023-04-18 16:59:49', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648249964270620673, 1646412527542099970, 'teacher', '指导教师', 'varchar(255)', 'String', 'teacher', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-04-18 16:59:49', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648249964304175106, 1646412527542099970, 'teacher_member', '教工号', 'varchar(255)', 'String', 'teacherMember', '0', '0', '0', '0', '1', '0', '0', 'EQ', 'input', '', 8, 'admin', '2023-04-18 16:59:49', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648253217205030914, 1646412527542099970, 'team_name', '队名', 'varchar(20)', 'String', 'teamName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-04-18 17:12:45', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648253217238585346, 1646412527542099970, 'team_leader_name', '队长姓名', 'varchar(100)', 'String', 'teamLeaderName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-04-18 17:12:45', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648253217372803073, 1646412527542099970, 'team_member_name', '队员', 'varchar(255)', 'String', 'teamMemberName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2023-04-18 17:12:45', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648253217406357506, 1646412527542099970, 'team_member_id', '队员学号', 'varchar(255)', 'String', 'teamMemberId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-04-18 17:12:45', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648510301498662913, 1646412527542099970, 'create_by', '', 'varchar(100)', 'String', 'createBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-04-19 10:14:18', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648510301582548993, 1646412527542099970, 'create_time', '', 'datetime(6)', 'Date', 'createTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-04-19 10:14:18', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648510301599326210, 1646412527542099970, 'update_by', '', 'varchar(100)', 'String', 'updateBy', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', 14, 'admin', '2023-04-19 10:14:18', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648510301611909121, 1646412527542099970, 'update_time', '', 'datetime(6)', 'Date', 'updateTime', '0', '0', NULL, NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 15, 'admin', '2023-04-19 10:14:18', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648522794807754753, 1646412527542099970, 'id', '主键id', 'int(100)', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-04-19 11:03:57', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648532971778871298, 1646412527542099970, 'deleted', '逻辑删除', 'tinyint(4)', 'Integer', 'deleted', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 4, 'admin', '2023-04-19 11:44:23', 'admin', '2023-04-19 11:48:38');
INSERT INTO `gen_table_column` VALUES (1648532971866951681, 1646412527542099970, 'team_id', '团队ID', 'int(100)', 'Long', 'teamId', '0', '0', '0', '0', '0', '0', '0', 'EQ', 'input', '', 11, 'admin', '2023-04-19 11:44:23', 'admin', '2023-04-19 11:48:38');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `update_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, '<p>欢迎大家使用海南大学计算机科学与技术学院软件工程NIIT方向李祥生团队设计的竞赛报名管理系统</p>', 'admin', '2023-04-15 14:39:26.987000', 'admin', '2023-04-15 14:39:26.987000');
INSERT INTO `log` VALUES (2, '<p>1111<p>', 'admin', NULL, 'admin', NULL);
INSERT INTO `log` VALUES (3, '<p>在使用过程中有任何不便 请联系2601055687@qq.com</p>', 'admin', '2023-04-19 10:05:20.520000', 'admin', '2023-04-19 10:05:20.520000');

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `SCHED_NAME` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_DURABLE` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_NONCONCURRENT` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_UPDATE_DATA` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `JOB_DATA` blob NULL,
  PRIMARY KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` bigint(20) NOT NULL COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-04-13 14:44:00', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-04-13 14:44:00', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-04-13 14:44:00', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-04-13 14:44:00', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-04-13 14:44:00', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (11, 'OSS预览列表资源开关', 'sys.oss.previewListResource', 'true', 'Y', 'admin', '2023-04-13 14:44:00', '', NULL, 'true:开启, false:关闭');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '其他操作');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-04-13 14:44:00', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1646409040959799298, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-13 15:04:39');
INSERT INTO `sys_logininfor` VALUES (1646425137410940929, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-13 16:08:37');
INSERT INTO `sys_logininfor` VALUES (1646469385661349889, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-13 19:04:26');
INSERT INTO `sys_logininfor` VALUES (1646476259911725058, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-13 19:31:45');
INSERT INTO `sys_logininfor` VALUES (1646661404614610946, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-14 07:47:27');
INSERT INTO `sys_logininfor` VALUES (1646722871401578497, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-14 11:51:42');
INSERT INTO `sys_logininfor` VALUES (1646795404515631105, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-14 16:39:55');
INSERT INTO `sys_logininfor` VALUES (1646819885913120769, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-14 18:17:12');
INSERT INTO `sys_logininfor` VALUES (1647114649849966593, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-15 13:48:29');
INSERT INTO `sys_logininfor` VALUES (1648249841830498306, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-18 16:59:20');
INSERT INTO `sys_logininfor` VALUES (1648346173840723970, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-18 23:22:07');
INSERT INTO `sys_logininfor` VALUES (1648504917220278274, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-19 09:52:55');
INSERT INTO `sys_logininfor` VALUES (1648624803917504514, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '1', '验证码已失效', '2023-04-19 17:49:18');
INSERT INTO `sys_logininfor` VALUES (1648624822850592769, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-19 17:49:22');
INSERT INTO `sys_logininfor` VALUES (1648659385127723009, 'admin', '127.0.0.1', '内网IP', 'MSEdge', 'Windows 10 or Windows Server 2016', '0', '登录成功', '2023-04-19 20:06:43');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '显示状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-04-13 14:43:59', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-04-13 14:43:59', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-04-13 14:43:59', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, 'PLUS官网', 0, 4, 'https://gitee.com/dromara/RuoYi-Vue-Plus', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2023-04-13 14:43:59', '', NULL, 'RuoYi-Vue-Plus官网地址');
INSERT INTO `sys_menu` VALUES (5, '测试菜单', 0, 5, 'demo', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'star', 'admin', '2023-04-13 14:44:19', NULL, NULL, '');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-04-13 14:43:59', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-04-13 14:43:59', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-04-13 14:43:59', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-04-13 14:43:59', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-04-13 14:43:59', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-04-13 14:43:59', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-04-13 14:43:59', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-04-13 14:43:59', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-04-13 14:43:59', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-04-13 14:43:59', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (112, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-04-13 14:43:59', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-04-13 14:43:59', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-04-13 14:43:59', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-04-13 14:43:59', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, 'Admin监控', 2, 5, 'Admin', 'monitor/admin/index', '', 1, 0, 'C', '0', '0', 'monitor:admin:list', 'dashboard', 'admin', '2023-04-13 14:43:59', '', NULL, 'Admin监控菜单');
INSERT INTO `sys_menu` VALUES (118, '文件管理', 1, 10, 'oss', 'system/oss/index', '', 1, 0, 'C', '0', '0', 'system:oss:list', 'upload', 'admin', '2023-04-13 14:43:59', '', NULL, '文件管理菜单');
INSERT INTO `sys_menu` VALUES (120, '任务调度中心', 2, 5, 'XxlJob', 'monitor/xxljob/index', '', 1, 0, 'C', '0', '0', 'monitor:xxljob:list', 'job', 'admin', '2023-04-13 14:43:59', '', NULL, 'Xxl-Job控制台菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-04-13 14:43:59', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-04-13 14:43:59', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1500, '测试单表', 5, 1, 'demo', 'demo/demo/index', NULL, 1, 0, 'C', '0', '0', 'demo:demo:list', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '测试单表菜单');
INSERT INTO `sys_menu` VALUES (1501, '测试单表查询', 1500, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:demo:query', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1502, '测试单表新增', 1500, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:demo:add', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1503, '测试单表修改', 1500, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:demo:edit', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1504, '测试单表删除', 1500, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:demo:remove', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1505, '测试单表导出', 1500, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:demo:export', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1506, '测试树表', 5, 1, 'tree', 'demo/tree/index', NULL, 1, 0, 'C', '0', '0', 'demo:tree:list', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '测试树表菜单');
INSERT INTO `sys_menu` VALUES (1507, '测试树表查询', 1506, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:tree:query', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1508, '测试树表新增', 1506, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:tree:add', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1509, '测试树表修改', 1506, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:tree:edit', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1510, '测试树表删除', 1506, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:tree:remove', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1511, '测试树表导出', 1506, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'demo:tree:export', '#', 'admin', '2023-04-13 14:44:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1600, '文件查询', 118, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:query', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1601, '文件上传', 118, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:upload', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1602, '文件下载', 118, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:download', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1603, '文件删除', 118, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:remove', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1604, '配置添加', 118, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:add', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1605, '配置编辑', 118, 6, '#', '', '', 1, 0, 'F', '0', '0', 'system:oss:edit', '#', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646672299373756418, '学生管理', 1, 1, 'user', 'contest/user/index', NULL, 1, 0, 'C', '0', '0', 'contest:user:list', 'example', 'admin', '2023-04-14 08:31:53', 'admin', '2023-04-19 17:51:09', '学生管理菜单');
INSERT INTO `sys_menu` VALUES (1646672299373756419, '学生查询', 1646672299373756418, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:user:query', '#', 'admin', '2023-04-14 08:31:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646672299373756420, '学生新增', 1646672299373756418, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:user:add', '#', 'admin', '2023-04-14 08:31:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646672299373756421, '学生修改', 1646672299373756418, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:user:edit', '#', 'admin', '2023-04-14 08:31:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646672299373756422, '学生删除', 1646672299373756418, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:user:remove', '#', 'admin', '2023-04-14 08:31:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646672299373756423, '学生导出', 1646672299373756418, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:user:export', '#', 'admin', '2023-04-14 08:31:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646707919118827521, '竞赛管理', 1, 1, 'activity', 'contest/activity/index', NULL, 1, 0, 'C', '0', '0', 'contest:activity:list', 'build', 'admin', '2023-04-14 10:58:55', 'admin', '2023-04-19 17:50:45', '竞赛管理菜单');
INSERT INTO `sys_menu` VALUES (1646707919118827522, '竞赛查询', 1646707919118827521, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:activity:query', '#', 'admin', '2023-04-14 10:58:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646707919118827523, '竞赛新增', 1646707919118827521, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:activity:add', '#', 'admin', '2023-04-14 10:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646707919118827524, '竞赛修改', 1646707919118827521, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:activity:edit', '#', 'admin', '2023-04-14 10:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646707919118827525, '竞赛删除', 1646707919118827521, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:activity:remove', '#', 'admin', '2023-04-14 10:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1646707919118827526, '竞赛导出', 1646707919118827521, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:activity:export', '#', 'admin', '2023-04-14 10:58:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1647123595981643777, '公告管理', 1, 1, 'log', 'contest/log/index', NULL, 1, 0, 'C', '0', '0', 'contest:log:list', 'table', 'admin', '2023-04-15 14:24:49', 'admin', '2023-04-19 17:50:33', '公告管理菜单');
INSERT INTO `sys_menu` VALUES (1647123595981643778, '公告查询', 1647123595981643777, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:log:query', '#', 'admin', '2023-04-15 14:24:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1647123595981643779, '公告新增', 1647123595981643777, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:log:add', '#', 'admin', '2023-04-15 14:24:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1647123595981643780, '公告修改', 1647123595981643777, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:log:edit', '#', 'admin', '2023-04-15 14:24:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1647123595981643781, '公告删除', 1647123595981643777, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:log:remove', '#', 'admin', '2023-04-15 14:24:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1647123595981643782, '公告导出', 1647123595981643777, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:log:export', '#', 'admin', '2023-04-15 14:24:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1648313437453193217, '团队管理', 1, 1, 'info', 'contest/info/index', NULL, 1, 0, 'C', '0', '0', 'contest:info:list', 'druid', 'admin', '2023-04-18 21:48:08', 'admin', '2023-04-19 17:50:56', '团队管理菜单');
INSERT INTO `sys_menu` VALUES (1648313437453193218, '团队查询', 1648313437453193217, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:info:query', '#', 'admin', '2023-04-18 21:48:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1648313437453193219, '团队新增', 1648313437453193217, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:info:add', '#', 'admin', '2023-04-18 21:48:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1648313437453193220, '团队修改', 1648313437453193217, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:info:edit', '#', 'admin', '2023-04-18 21:48:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1648313437453193221, '团队删除', 1648313437453193217, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:info:remove', '#', 'admin', '2023-04-18 21:48:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1648313437453193222, '团队导出', 1648313437453193217, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'contest:info:export', '#', 'admin', '2023-04-18 21:48:08', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` bigint(20) NOT NULL COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-04-13 14:44:00', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-04-13 14:44:00', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1646410131667574785, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '', '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"activity\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-13 15:08:59');
INSERT INTO `sys_oper_log` VALUES (1646412109952999426, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 15:16:50\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":1},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.JingSai\",\"moduleName\":\"ruoyi-JingSai\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 15:16:50\",\"columnId\":\"1646410131260727297\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activityId\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityId\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"required\":false,\"list\":true,\"insert\":false,\"usableColumn\":false,\"pk\":true,\"edit\":true,\"superColumn\":false,\"increment\":false,\"query\":false,\"capJavaField\":\"ActivityId\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 15:16:50\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":false,\"list\":true,\"insert\":false,\"usableColumn\":false,\"pk\":true,\"edit\":true,\"superColumn\":false,\"increment\":true,\"query\":false,\"capJavaField\":\"Id\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 15:16:50\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaT', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-13 15:16:51');
INSERT INTO `sys_oper_log` VALUES (1646412127577464833, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-13 15:16:55');
INSERT INTO `sys_oper_log` VALUES (1646412258662047745, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-13 15:17:26');
INSERT INTO `sys_oper_log` VALUES (1646412527797952513, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '', '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"file_info,user,team_info,team_memberships,teammember,activity_teamships,activity_userships\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-13 15:18:30');
INSERT INTO `sys_oper_log` VALUES (1646478149567266818, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '', '/system/menu', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:36:36\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 19:39:15\",\"parentName\":null,\"parentId\":1,\"children\":[],\"menuId\":\"1646412258511052801\",\"menuName\":\"竞赛管理\",\"orderNum\":1,\"path\":\"activity\",\"component\":\"ruoyi-JingSai/activity/index\",\"queryParam\":null,\"isFrame\":\"1\",\"isCache\":\"0\",\"menuType\":\"M\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"ruoyi-JingSai:activity:list\",\"icon\":\"build\",\"remark\":\"竞赛管理菜单\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-13 19:39:16');
INSERT INTO `sys_oper_log` VALUES (1646478899877920770, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 19:42:14\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.JingSai\",\"moduleName\":\"jingsai\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 19:42:14\",\"columnId\":\"1646410131260727297\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activityId\",\"columnComment\":\"活动id\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityId\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":false,\"usableColumn\":false,\"insert\":false,\"edit\":true,\"pk\":true,\"superColumn\":false,\"query\":false,\"capJavaField\":\"ActivityId\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 19:42:14\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"主键id\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":false,\"usableColumn\":false,\"insert\":false,\"edit\":true,\"pk\":true,\"superColumn\":false,\"query\":false,\"capJavaField\":\"Id\",\"increment\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 19:42:14\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"活动姓名\",\"columnType\":\"varchar(255)', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-13 19:42:14');
INSERT INTO `sys_oper_log` VALUES (1646478912586661889, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-13 19:42:18');
INSERT INTO `sys_oper_log` VALUES (1646487627360550914, 'OSS对象存储', 1, 'com.ruoyi.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '', '/system/oss/upload', '127.0.0.1', '内网IP', '', '', 1, '创建Bucket失败, 请核对配置信息:[Unable to execute HTTP request: Connect to 127.0.0.1:9000 [/127.0.0.1] failed: Connection refused: connect]', '2023-04-13 20:16:55');
INSERT INTO `sys_oper_log` VALUES (1646487749448351746, 'OSS对象存储', 1, 'com.ruoyi.web.controller.system.SysOssController.upload()', 'POST', 1, 'admin', '', '/system/oss/upload', '127.0.0.1', '内网IP', '', '', 1, '创建Bucket失败, 请核对配置信息:[Unable to execute HTTP request: Connect to 127.0.0.1:9000 [/127.0.0.1] failed: Connection refused: connect]', '2023-04-13 20:17:24');
INSERT INTO `sys_oper_log` VALUES (1646491819202494465, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 20:33:34\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.JingSai\",\"moduleName\":\"jingsai\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 20:33:34\",\"columnId\":\"1646410131260727297\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activityId\",\"columnComment\":\"活动id\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityId\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"required\":false,\"list\":true,\"pk\":true,\"insert\":false,\"superColumn\":false,\"edit\":true,\"usableColumn\":false,\"capJavaField\":\"ActivityId\",\"query\":false,\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 20:33:34\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"主键id\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"0\",\"isList\":\"0\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":false,\"list\":false,\"pk\":true,\"insert\":false,\"superColumn\":false,\"edit\":false,\"usableColumn\":false,\"capJavaField\":\"Id\",\"query\":false,\"increment\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-13 20:33:34\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"活动姓名\",\"columnType\":\"varchar(25', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-13 20:33:35');
INSERT INTO `sys_oper_log` VALUES (1646491829684060162, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-13 20:33:37');
INSERT INTO `sys_oper_log` VALUES (1646665566198845441, '对象存储状态修改', 2, 'com.ruoyi.web.controller.system.SysOssConfigController.changeStatus()', 'PUT', 1, 'admin', '', '/system/oss/config/changeStatus', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":1,\"configKey\":\"minio\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"domain\":null,\"isHttps\":null,\"status\":\"1\",\"region\":null,\"ext1\":null,\"remark\":null,\"accessPolicy\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 08:03:59');
INSERT INTO `sys_oper_log` VALUES (1646665580862132226, '对象存储状态修改', 2, 'com.ruoyi.web.controller.system.SysOssConfigController.changeStatus()', 'PUT', 1, 'admin', '', '/system/oss/config/changeStatus', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":2,\"configKey\":\"qiniu\",\"accessKey\":null,\"secretKey\":null,\"bucketName\":null,\"prefix\":null,\"endpoint\":null,\"domain\":null,\"isHttps\":null,\"status\":\"0\",\"region\":null,\"ext1\":null,\"remark\":null,\"accessPolicy\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 08:04:03');
INSERT INTO `sys_oper_log` VALUES (1646667376099741698, '对象存储配置', 2, 'com.ruoyi.web.controller.system.SysOssConfigController.edit()', 'PUT', 1, 'admin', '', '/system/oss/config', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"ossConfigId\":2,\"configKey\":\"qiniu\",\"accessKey\":\"auJucSgs0p45Yzt9lwKwiQZ_KT6hujWQpdHmu3KE\",\"secretKey\":\"7J24PpVOzeN4L2ltyE6v0tgr4IYah1bwVUuHKwHs\",\"bucketName\":\"niit123\",\"prefix\":\"\",\"endpoint\":\"s3-cn-south-1.qiniucs.com\",\"domain\":\"\",\"isHttps\":\"N\",\"status\":\"0\",\"region\":\"\",\"ext1\":\"\",\"remark\":null,\"accessPolicy\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 08:11:11');
INSERT INTO `sys_oper_log` VALUES (1646667975142821890, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:13:33\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.JingSai\",\"moduleName\":\"jingsai\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:13:33\",\"columnId\":\"1646410131260727297\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activityId\",\"columnComment\":\"活动id\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityId\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"0\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":false,\"superColumn\":false,\"pk\":true,\"insert\":false,\"edit\":false,\"usableColumn\":false,\"increment\":false,\"capJavaField\":\"ActivityId\",\"query\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:13:33\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"主键id\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"0\",\"isList\":\"0\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":false,\"required\":false,\"superColumn\":false,\"pk\":true,\"insert\":false,\"edit\":false,\"usableColumn\":false,\"increment\":true,\"capJavaField\":\"Id\",\"query\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:13:33\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"活动姓名\",\"columnType\":\"varchar(2', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 08:13:34');
INSERT INTO `sys_oper_log` VALUES (1646668043065380866, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:13:49\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.JingSai\",\"moduleName\":\"jingsai\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:13:49\",\"columnId\":\"1646410131260727297\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activityId\",\"columnComment\":\"活动id\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityId\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"0\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":false,\"superColumn\":false,\"pk\":true,\"insert\":false,\"edit\":false,\"usableColumn\":false,\"increment\":false,\"capJavaField\":\"ActivityId\",\"query\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:13:49\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"主键id\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"0\",\"isInsert\":null,\"isEdit\":\"0\",\"isList\":\"0\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":false,\"required\":false,\"superColumn\":false,\"pk\":true,\"insert\":false,\"edit\":false,\"usableColumn\":false,\"increment\":true,\"capJavaField\":\"Id\",\"query\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:13:49\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"活动姓名\",\"columnType\":\"varchar(2', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 08:13:50');
INSERT INTO `sys_oper_log` VALUES (1646668055509880834, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-14 08:13:53');
INSERT INTO `sys_oper_log` VALUES (1646670338968649729, '用户管理', 5, 'com.ruoyi.web.controller.system.SysUserController.export()', 'POST', 1, 'admin', '', '/system/user/export', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"userId\":null,\"deptId\":null,\"userName\":null,\"nickName\":null,\"userType\":null,\"email\":null,\"phonenumber\":null,\"sex\":null,\"avatar\":null,\"status\":null,\"delFlag\":null,\"loginIp\":null,\"loginDate\":null,\"remark\":null,\"dept\":null,\"roles\":null,\"roleIds\":null,\"postIds\":null,\"roleId\":null,\"admin\":false}', '', 0, '', '2023-04-14 08:22:57');
INSERT INTO `sys_oper_log` VALUES (1646672281225003009, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:30:40\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":1},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:30:40\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"pk\":true,\"superColumn\":false,\"edit\":true,\"usableColumn\":false,\"insert\":false,\"capJavaField\":\"Uid\",\"increment\":false,\"query\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:30:40\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"pk\":false,\"superColumn\":false,\"edit\":true,\"usableColumn\":false,\"insert\":true,\"capJavaField\":\"Name\",\"increment\":false,\"query\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:30:40\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"jav', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 08:30:40');
INSERT INTO `sys_oper_log` VALUES (1646672300573327362, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 08:30:45');
INSERT INTO `sys_oper_log` VALUES (1646678340576624641, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:54:44\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:54:44\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"insert\":false,\"edit\":true,\"superColumn\":false,\"pk\":true,\"usableColumn\":false,\"query\":false,\"increment\":false,\"capJavaField\":\"Uid\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:54:44\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"insert\":true,\"edit\":true,\"superColumn\":false,\"pk\":false,\"usableColumn\":false,\"query\":true,\"increment\":false,\"capJavaField\":\"Name\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 08:54:44\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"j', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 08:54:45');
INSERT INTO `sys_oper_log` VALUES (1646678352379396097, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 08:54:48');
INSERT INTO `sys_oper_log` VALUES (1646679843441930241, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:00:43\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:00:43\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"insert\":false,\"edit\":true,\"usableColumn\":false,\"pk\":true,\"superColumn\":false,\"capJavaField\":\"Uid\",\"query\":false,\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:00:43\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"insert\":true,\"edit\":true,\"usableColumn\":false,\"pk\":false,\"superColumn\":false,\"capJavaField\":\"Name\",\"query\":true,\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:00:43\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:00:43');
INSERT INTO `sys_oper_log` VALUES (1646679857304104962, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 09:00:46');
INSERT INTO `sys_oper_log` VALUES (1646681047630778369, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:05:30\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:05:30\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"pk\":true,\"edit\":true,\"superColumn\":false,\"insert\":true,\"usableColumn\":false,\"increment\":false,\"query\":false,\"capJavaField\":\"Uid\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:05:30\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"pk\":false,\"edit\":true,\"superColumn\":false,\"insert\":true,\"usableColumn\":false,\"increment\":false,\"query\":true,\"capJavaField\":\"Name\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:05:30\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"j', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:05:30');
INSERT INTO `sys_oper_log` VALUES (1646681057890045953, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 09:05:33');
INSERT INTO `sys_oper_log` VALUES (1646682164603338754, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:09:56\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:09:56\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"edit\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"pk\":true,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:09:56\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"edit\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"pk\":false,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:09:56\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"jav', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:09:57');
INSERT INTO `sys_oper_log` VALUES (1646682174694834178, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 09:09:59');
INSERT INTO `sys_oper_log` VALUES (1646683166245040129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:13:55\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:13:55\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"pk\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:13:55\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:13:55\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"jav', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:13:55');
INSERT INTO `sys_oper_log` VALUES (1646683553224110082, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:15:27\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:15:27\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"pk\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:15:27\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:15:27\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"jav', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:15:28');
INSERT INTO `sys_oper_log` VALUES (1646683605162176513, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 09:15:40');
INSERT INTO `sys_oper_log` VALUES (1646683833168736257, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:16:34\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:16:34\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"pk\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:16:34\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:16:34\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"jav', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:16:34');
INSERT INTO `sys_oper_log` VALUES (1646684577762553858, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:19:31\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:19:31\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"pk\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:19:31\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:19:31\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"jav', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:19:32');
INSERT INTO `sys_oper_log` VALUES (1646685073168576514, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:21:29\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:21:29\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"pk\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:21:29\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"0\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"pk\":false,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:21:29\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"ja', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:21:30');
INSERT INTO `sys_oper_log` VALUES (1646685477130383361, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:23:06\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:23:06\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"1\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"pk\":true,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:23:06\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:23:06\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"jav', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:23:06');
INSERT INTO `sys_oper_log` VALUES (1646686639787257858, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/user', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:27:44');
INSERT INTO `sys_oper_log` VALUES (1646687655001763842, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:31:45\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:31:45\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:31:45\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 09:31:45\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"ja', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 09:31:46');
INSERT INTO `sys_oper_log` VALUES (1646687769019723777, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 09:32:13');
INSERT INTO `sys_oper_log` VALUES (1646689925227606017, '学生管理', 1, 'com.ruoyi.contest.controller.UserController.add()', 'POST', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"李祥生\",\"email\":null,\"academy\":\"计算机科学与技术\",\"gender\":null,\"studentClass\":\"java4\",\"grade\":\"2021\",\"specializedSubject\":\"软件工程\",\"phone\":null,\"id\":null,\"idnumber\":null}', '', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'student_class\' in \'field list\'\r\n### The error may exist in com/ruoyi/contest/mapper/UserMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.UserMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO user  ( id, uid, name,  academy,     student_class, grade, specialized_subject, password,   create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?,  ?,     ?, ?, ?, ?,   ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'student_class\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'student_class\' in \'field list\'', '2023-04-14 09:40:47');
INSERT INTO `sys_oper_log` VALUES (1646689942868848642, '学生管理', 1, 'com.ruoyi.contest.controller.UserController.add()', 'POST', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"李祥生\",\"email\":null,\"academy\":\"计算机科学与技术\",\"gender\":null,\"studentClass\":\"java4\",\"grade\":\"2021\",\"specializedSubject\":\"软件工程\",\"phone\":null,\"id\":null,\"idnumber\":null}', '', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'student_class\' in \'field list\'\r\n### The error may exist in com/ruoyi/contest/mapper/UserMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.UserMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO user  ( id, uid, name,  academy,     student_class, grade, specialized_subject, password,   create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?,  ?,     ?, ?, ?, ?,   ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'student_class\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'student_class\' in \'field list\'', '2023-04-14 09:40:51');
INSERT INTO `sys_oper_log` VALUES (1646691563606540290, '学生管理', 1, 'com.ruoyi.contest.controller.UserController.add()', 'POST', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"测试\",\"email\":null,\"academy\":\"测试\",\"gender\":null,\"studentClass\":\"测试\",\"grade\":\"测试\",\"specializedSubject\":\"测试\",\"phone\":null,\"id\":null,\"idnumber\":null}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/UserMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.UserMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO user  ( id, uid, name,  academy,     student_class, grade, specialized_subject, password,   create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?,  ?,     ?, ?, ?, ?,   ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-14 09:47:17');
INSERT INTO `sys_oper_log` VALUES (1646693029813551106, '学生管理', 1, 'com.ruoyi.contest.controller.UserController.add()', 'POST', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"测试\",\"email\":null,\"academy\":\"测试\",\"gender\":null,\"studentClass\":\"测试\",\"grade\":\"测试\",\"specializedSubject\":\"测试\",\"phone\":null,\"id\":null,\"idnumber\":null}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/UserMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.UserMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO user  ( id, uid, name,  academy,     student_class, grade, specialized_subject, password,   create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?,  ?,     ?, ?, ?, ?,   ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-14 09:53:07');
INSERT INTO `sys_oper_log` VALUES (1646693558539165697, '学生管理', 1, 'com.ruoyi.contest.controller.UserController.add()', 'POST', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"测试\",\"email\":null,\"academy\":\"测试\",\"gender\":null,\"studentClass\":\"测试\",\"grade\":\"测试\",\"specializedSubject\":\"测试\",\"phone\":null,\"id\":null,\"idnumber\":null}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/UserMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.UserMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO user  ( id, uid, name,  academy,     student_class, grade, specialized_subject, password,   create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?,  ?,     ?, ?, ?, ?,   ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-14 09:55:13');
INSERT INTO `sys_oper_log` VALUES (1646694257767403521, '学生管理', 1, 'com.ruoyi.contest.controller.UserController.add()', 'POST', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"测试\",\"email\":null,\"academy\":\"测试\",\"gender\":null,\"studentClass\":\"测试\",\"grade\":\"测试\",\"specializedSubject\":\"测试\",\"phone\":null,\"id\":null,\"idnumber\":null}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/UserMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.UserMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO user  ( id, uid, name,  academy,     student_class, grade, specialized_subject, password,   create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?,  ?,     ?, ?, ?, ?,   ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-14 09:58:00');
INSERT INTO `sys_oper_log` VALUES (1646695690734567425, '学生管理', 1, 'com.ruoyi.contest.controller.UserController.add()', 'POST', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"测试\",\"email\":null,\"academy\":\"测试\",\"gender\":null,\"studentClass\":\"测试\",\"grade\":\"测试\",\"specializedSubject\":\"测试\",\"phone\":null,\"id\":1,\"idnumber\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:03:41');
INSERT INTO `sys_oper_log` VALUES (1646697724636438530, '学生管理', 5, 'com.ruoyi.contest.controller.UserController.export()', 'POST', 1, 'admin', '', '/contest/user/export', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":null,\"name\":null,\"email\":null,\"academy\":null,\"gender\":null,\"studentClass\":null,\"grade\":null,\"specializedSubject\":null,\"phone\":null,\"id\":null,\"idnumber\":null}', '', 0, '', '2023-04-14 10:11:46');
INSERT INTO `sys_oper_log` VALUES (1646699135096987650, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/user', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:17:23');
INSERT INTO `sys_oper_log` VALUES (1646699840738304001, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:20:10\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:20:10\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"pk\":false,\"insert\":true,\"edit\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"capJavaField\":\"Uid\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:20:10\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"pk\":false,\"insert\":true,\"edit\":true,\"usableColumn\":false,\"superColumn\":false,\"increment\":false,\"query\":true,\"capJavaField\":\"Name\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:20:10\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"ja', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:20:11');
INSERT INTO `sys_oper_log` VALUES (1646699980412821506, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 10:20:44');
INSERT INTO `sys_oper_log` VALUES (1646701055589142530, '学生管理', 2, 'com.ruoyi.contest.controller.UserController.edit()', 'PUT', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"李祥生\",\"email\":null,\"academy\":\"测试\",\"gender\":null,\"studentClass\":\"测试\",\"grade\":\"测试\",\"specializedSubject\":\"测试\",\"phone\":null,\"id\":1,\"idnumber\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:25:01');
INSERT INTO `sys_oper_log` VALUES (1646701736056246274, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:27:42\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:27:42\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false,\"usableColumn\":false,\"superColumn\":false,\"insert\":true,\"edit\":true,\"pk\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:27:42\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false,\"usableColumn\":false,\"superColumn\":false,\"insert\":true,\"edit\":true,\"pk\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:27:42\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"ja', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:27:43');
INSERT INTO `sys_oper_log` VALUES (1646701938259447809, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:28:30\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:28:30\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"textarea\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false,\"usableColumn\":false,\"superColumn\":false,\"insert\":true,\"edit\":true,\"pk\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:28:30\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false,\"usableColumn\":false,\"superColumn\":false,\"insert\":true,\"edit\":true,\"pk\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:28:30\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"ja', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:28:31');
INSERT INTO `sys_oper_log` VALUES (1646702023902941186, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:28:51\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527693094914\",\"tableName\":\"user\",\"tableComment\":\"学生信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"User\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"user\",\"functionName\":\"学生管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:28:51\",\"columnId\":\"1646412527722455042\",\"tableId\":\"1646412527693094914\",\"columnName\":\"uid\",\"columnComment\":\"学号\",\"columnType\":\"varchar(1024)\",\"javaType\":\"String\",\"javaField\":\"uid\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"query\":true,\"capJavaField\":\"Uid\",\"increment\":false,\"usableColumn\":false,\"superColumn\":false,\"insert\":true,\"edit\":true,\"pk\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:28:51\",\"columnId\":\"1646412527726649346\",\"tableId\":\"1646412527693094914\",\"columnName\":\"name\",\"columnComment\":\"姓名\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"name\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"query\":true,\"capJavaField\":\"Name\",\"increment\":false,\"usableColumn\":false,\"superColumn\":false,\"insert\":true,\"edit\":true,\"pk\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:28:51\",\"columnId\":\"1646412527730843649\",\"tableId\":\"1646412527693094914\",\"columnName\":\"email\",\"columnComment\":\"邮箱\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaF', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:28:51');
INSERT INTO `sys_oper_log` VALUES (1646702034288037889, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"user\"}', '', 0, '', '2023-04-14 10:28:54');
INSERT INTO `sys_oper_log` VALUES (1646703325877796865, '学生管理', 2, 'com.ruoyi.contest.controller.UserController.edit()', 'PUT', 1, 'admin', '', '/contest/user', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"uid\":\"20213002970\",\"name\":\"李祥生\",\"email\":\"11\",\"academy\":\"测试\",\"gender\":null,\"studentClass\":\"测试\",\"grade\":\"测试\",\"specializedSubject\":\"测试\",\"phone\":null,\"id\":1,\"idnumber\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:34:02');
INSERT INTO `sys_oper_log` VALUES (1646704034144747522, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/activity', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:36:51');
INSERT INTO `sys_oper_log` VALUES (1646705022347935745, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/activity', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:40:46');
INSERT INTO `sys_oper_log` VALUES (1646705120356237313, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:41:09\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.JingSai\",\"moduleName\":\"jingsai\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-14 10:36:51\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:41:09\",\"columnId\":\"1646704033771454465\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activity_d\",\"columnComment\":\"活动ID\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityD\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"0\",\"isEdit\":\"0\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"edit\":false,\"superColumn\":false,\"pk\":false,\"insert\":false,\"usableColumn\":false,\"query\":true,\"increment\":false,\"capJavaField\":\"ActivityD\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:41:09\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"edit\":true,\"superColumn\":false,\"pk\":true,\"insert\":false,\"usableColumn\":false,\"query\":false,\"increment\":true,\"capJavaField\":\"Id\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:41:09\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:41:10');
INSERT INTO `sys_oper_log` VALUES (1646705140857995265, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/activity', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:41:15');
INSERT INTO `sys_oper_log` VALUES (1646705974853402625, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:44:33\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.JingSai\",\"moduleName\":\"jingsai\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-14 10:40:46\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:44:33\",\"columnId\":\"1646705022092083201\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activity_id\",\"columnComment\":\"竞赛ID\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"0\",\"isEdit\":\"0\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"edit\":false,\"superColumn\":false,\"pk\":false,\"insert\":false,\"usableColumn\":false,\"query\":true,\"increment\":false,\"capJavaField\":\"ActivityId\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:44:33\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"主键ID\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"edit\":true,\"superColumn\":false,\"pk\":true,\"insert\":false,\"usableColumn\":false,\"query\":false,\"increment\":true,\"capJavaField\":\"Id\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:44:33\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"竞赛名称\",\"columnType\":\"varchar(255)', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:44:33');
INSERT INTO `sys_oper_log` VALUES (1646706659154100226, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-14 10:47:17');
INSERT INTO `sys_oper_log` VALUES (1646707910860242945, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:52:14\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-14 10:40:46\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:52:14\",\"columnId\":\"1646705022092083201\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activity_id\",\"columnComment\":\"竞赛ID\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"0\",\"isEdit\":\"0\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"edit\":false,\"superColumn\":false,\"pk\":false,\"insert\":false,\"usableColumn\":false,\"query\":true,\"increment\":false,\"capJavaField\":\"ActivityId\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:52:14\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"主键ID\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"edit\":true,\"superColumn\":false,\"pk\":true,\"insert\":false,\"usableColumn\":false,\"query\":false,\"increment\":true,\"capJavaField\":\"Id\"},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 10:52:14\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"竞赛名称\",\"columnType\":\"varchar(255)', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 10:52:15');
INSERT INTO `sys_oper_log` VALUES (1646707919248850945, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-14 10:52:17');
INSERT INTO `sys_oper_log` VALUES (1646723832845107201, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 11:55:30\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646410131151675394\",\"tableName\":\"activity\",\"tableComment\":\"竞赛信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Activity\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"activity\",\"functionName\":\"竞赛管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-14 10:40:46\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 11:55:30\",\"columnId\":\"1646705022092083201\",\"tableId\":\"1646410131151675394\",\"columnName\":\"activity_id\",\"columnComment\":\"竞赛ID\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"activityId\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"0\",\"isEdit\":\"0\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":false,\"usableColumn\":false,\"insert\":false,\"superColumn\":false,\"pk\":false,\"query\":true,\"capJavaField\":\"ActivityId\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 11:55:30\",\"columnId\":\"1646410131269115905\",\"tableId\":\"1646410131151675394\",\"columnName\":\"id\",\"columnComment\":\"主键ID\",\"columnType\":\"int(255)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"usableColumn\":false,\"insert\":false,\"superColumn\":false,\"pk\":true,\"query\":false,\"capJavaField\":\"Id\",\"increment\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:08:59\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-14 11:55:30\",\"columnId\":\"1646410131273310209\",\"tableId\":\"1646410131151675394\",\"columnName\":\"name\",\"columnComment\":\"竞赛名称\",\"columnType\":\"varchar(255)', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 11:55:31');
INSERT INTO `sys_oper_log` VALUES (1646724033081180162, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-14 11:56:19');
INSERT INTO `sys_oper_log` VALUES (1646724040878391297, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"activity\"}', '', 0, '', '2023-04-14 11:56:21');
INSERT INTO `sys_oper_log` VALUES (1646725702883917826, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":null,\"name\":\"测试\",\"startTime\":\"2023-04-05 00:00:00\",\"endTime\":\"2023-04-15 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"测试\",\"description\":\"测试\"}', '', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'\r\n### The error may exist in com/ruoyi/contest/mapper/ActivityMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.ActivityMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO activity  ( id,  name, start_time, end_time,  owner,   website, type, description,  create_by, create_time, update_by, update_time )  VALUES  ( ?,  ?, ?, ?,  ?,   ?, ?, ?,  ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'', '2023-04-14 12:02:57');
INSERT INTO `sys_oper_log` VALUES (1646725709540278273, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":null,\"name\":\"测试\",\"startTime\":\"2023-04-05 00:00:00\",\"endTime\":\"2023-04-15 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"测试\",\"description\":\"测试\"}', '', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'\r\n### The error may exist in com/ruoyi/contest/mapper/ActivityMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.ActivityMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO activity  ( id,  name, start_time, end_time,  owner,   website, type, description,  create_by, create_time, update_by, update_time )  VALUES  ( ?,  ?, ?, ?,  ?,   ?, ?, ?,  ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'', '2023-04-14 12:02:58');
INSERT INTO `sys_oper_log` VALUES (1646728955730259970, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":null,\"name\":\"测试\",\"startTime\":\"2023-04-13 00:00:00\",\"endTime\":\"2023-04-29 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"测试\",\"description\":\"测试\"}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/ActivityMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.ActivityMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO activity  ( id,  name, start_time, end_time,  owner,   website, type, description,  create_by, create_time, update_by, update_time )  VALUES  ( ?,  ?, ?, ?,  ?,   ?, ?, ?,  ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-14 12:15:52');
INSERT INTO `sys_oper_log` VALUES (1646728961224798210, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":null,\"name\":\"测试\",\"startTime\":\"2023-04-13 00:00:00\",\"endTime\":\"2023-04-29 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"测试\",\"description\":\"测试\"}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/ActivityMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.ActivityMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO activity  ( id,  name, start_time, end_time,  owner,   website, type, description,  create_by, create_time, update_by, update_time )  VALUES  ( ?,  ?, ?, ?,  ?,   ?, ?, ?,  ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-14 12:15:54');
INSERT INTO `sys_oper_log` VALUES (1646728964404080641, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":null,\"name\":\"测试\",\"startTime\":\"2023-04-13 00:00:00\",\"endTime\":\"2023-04-29 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"测试\",\"description\":\"测试\"}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/ActivityMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.ActivityMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO activity  ( id,  name, start_time, end_time,  owner,   website, type, description,  create_by, create_time, update_by, update_time )  VALUES  ( ?,  ?, ?, ?,  ?,   ?, ?, ?,  ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-14 12:15:55');
INSERT INTO `sys_oper_log` VALUES (1646730983277764610, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":null,\"name\":\"测试\",\"startTime\":\"2023-04-13 00:00:00\",\"endTime\":\"2023-04-29 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"测试\",\"description\":\"测试\"}', '', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'activity_id\' doesn\'t have a default value\r\n### The error may exist in com/ruoyi/contest/mapper/ActivityMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.ActivityMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO activity  ( name, start_time, end_time,  owner,   website, type, description,  create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?,  ?,   ?, ?, ?,  ?, ?, ?, ? )\r\n### Cause: java.sql.SQLException: Field \'activity_id\' doesn\'t have a default value\n; Field \'activity_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'activity_id\' doesn\'t have a default value', '2023-04-14 12:23:56');
INSERT INTO `sys_oper_log` VALUES (1646734008830574594, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":112,\"name\":\"测试\",\"startTime\":\"2023-04-13 00:00:00\",\"endTime\":\"2023-04-29 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"测试\",\"description\":\"测试\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 12:35:57');
INSERT INTO `sys_oper_log` VALUES (1646797172888723457, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":113,\"name\":\"测试\",\"startTime\":\"2023-04-06 00:00:00\",\"endTime\":\"2023-04-15 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"测试\",\"description\":\"测试u\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 16:46:57');
INSERT INTO `sys_oper_log` VALUES (1646820151509032961, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":114,\"name\":\"1\",\"startTime\":\"2023-04-06 00:00:00\",\"endTime\":\"2023-04-28 00:00:00\",\"owner\":\"1\",\"website\":\"1\",\"type\":\"1\",\"description\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-14 18:18:15');
INSERT INTO `sys_oper_log` VALUES (1647117492367597570, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":115,\"name\":\"测试2\",\"startTime\":\"2023-04-15 13:59:15\",\"endTime\":\"2024-06-14 00:00:00\",\"owner\":\"李祥生·\",\"website\":\"计算机\",\"type\":\"团队\",\"description\":\"无\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 13:59:47');
INSERT INTO `sys_oper_log` VALUES (1647117636806844418, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":116,\"name\":\"测试4\",\"startTime\":\"2023-04-15 14:00:03\",\"endTime\":\"2023-04-22 00:00:00\",\"owner\":\"林建军\",\"website\":\"11\",\"type\":\"团队\",\"description\":\"111\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:00:21');
INSERT INTO `sys_oper_log` VALUES (1647117751323926529, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":117,\"name\":\"测试5\",\"startTime\":\"2023-04-15 14:00:33\",\"endTime\":\"2023-04-22 00:00:00\",\"owner\":\"李祥生\",\"website\":\"2\",\"type\":\"团队\",\"description\":null}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:00:49');
INSERT INTO `sys_oper_log` VALUES (1647117957423636481, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":118,\"name\":\"测试5\",\"startTime\":\"2023-04-06 00:00:00\",\"endTime\":\"2023-04-21 00:00:00\",\"owner\":\"李祥生\",\"website\":\"111\",\"type\":\"团队\",\"description\":\"11\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:01:38');
INSERT INTO `sys_oper_log` VALUES (1647118093637853185, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":119,\"name\":\"ceshi7\",\"startTime\":\"2023-04-06 00:00:00\",\"endTime\":\"2023-04-06 00:00:00\",\"owner\":\"李祥生\",\"website\":\"1111\",\"type\":\"团队\",\"description\":\"11\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:02:10');
INSERT INTO `sys_oper_log` VALUES (1647118183509204994, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":120,\"name\":\"测试9\",\"startTime\":\"2023-04-15 14:02:23\",\"endTime\":\"2023-04-15 14:02:27\",\"owner\":\"111\",\"website\":\"11\",\"type\":\"团队\",\"description\":\"11\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:02:32');
INSERT INTO `sys_oper_log` VALUES (1647118303801843714, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":121,\"name\":\"测试10\",\"startTime\":\"2023-04-07 00:00:00\",\"endTime\":\"2023-04-22 00:00:00\",\"owner\":\"李祥生\",\"website\":\"1111\",\"type\":\"团队\",\"description\":\"11\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:03:00');
INSERT INTO `sys_oper_log` VALUES (1647118453882429441, '竞赛管理', 1, 'com.ruoyi.contest.controller.ActivityController.add()', 'POST', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":122,\"name\":\"测试11\",\"startTime\":\"2023-04-14 00:00:00\",\"endTime\":\"2023-04-22 00:00:00\",\"owner\":\"李祥生\",\"website\":\"11\",\"type\":\"团队\",\"description\":\"11\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:03:36');
INSERT INTO `sys_oper_log` VALUES (1647118473784401922, '竞赛管理', 2, 'com.ruoyi.contest.controller.ActivityController.edit()', 'PUT', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":\"1618480660\",\"id\":112,\"name\":\"测试\",\"startTime\":\"2023-04-13 00:00:00\",\"endTime\":\"2023-04-29 00:00:00\",\"owner\":\"测试\",\"website\":\"测试\",\"type\":\"团队\",\"description\":\"测试\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:03:41');
INSERT INTO `sys_oper_log` VALUES (1647118497490608130, '竞赛管理', 2, 'com.ruoyi.contest.controller.ActivityController.edit()', 'PUT', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":\"5292830220\",\"id\":114,\"name\":\"1\",\"startTime\":\"2023-04-06 00:00:00\",\"endTime\":\"2023-04-28 00:00:00\",\"owner\":\"1\",\"website\":\"1\",\"type\":\"团队\",\"description\":\"1\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:03:46');
INSERT INTO `sys_oper_log` VALUES (1647118513953251329, '竞赛管理', 2, 'com.ruoyi.contest.controller.ActivityController.edit()', 'PUT', 1, 'admin', '', '/contest/activity', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":\"2515825157\",\"id\":115,\"name\":\"测试2\",\"startTime\":\"2023-04-15 13:59:15\",\"endTime\":\"2024-06-14 00:00:00\",\"owner\":\"李祥生·\",\"website\":\"计算机\",\"type\":\"团队\",\"description\":\"无\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:03:50');
INSERT INTO `sys_oper_log` VALUES (1647123087686524930, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '', '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"log\"', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:22:01');
INSERT INTO `sys_oper_log` VALUES (1647123576213889025, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-15 14:23:57\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":1},\"tableId\":\"1647123087246123009\",\"tableName\":\"log\",\"tableComment\":\"公告表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"Log\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"log\",\"functionName\":\"公告管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-15 14:22:01\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-15 14:23:57\",\"columnId\":\"1647123087338397698\",\"tableId\":\"1647123087246123009\",\"columnName\":\"id\",\"columnComment\":\"ID\",\"columnType\":\"int(11)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"pk\":true,\"insert\":false,\"usableColumn\":false,\"edit\":true,\"superColumn\":false,\"capJavaField\":\"Id\",\"increment\":true,\"query\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-15 14:22:01\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-15 14:23:57\",\"columnId\":\"1647123087350980609\",\"tableId\":\"1647123087246123009\",\"columnName\":\"log\",\"columnComment\":\"公告\",\"columnType\":\"text\",\"javaType\":\"String\",\"javaField\":\"log\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"EQ\",\"htmlType\":\"editor\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"edit\":true,\"superColumn\":false,\"capJavaField\":\"Log\",\"increment\":false,\"query\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-15 14:22:01\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-15 14:23:57\",\"columnId\":\"1647123087350980610\",\"tableId\":\"1647123087246123009\",\"columnName\":\"create_by\",\"columnComment\":\"\",\"columnType\":\"varchar(255)\",\"javaType\":\"String\",\"javaField\":\"createBy\",\"isPk\":\"0\",', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:23:57');
INSERT INTO `sys_oper_log` VALUES (1647123597088940033, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"log\"}', '', 0, '', '2023-04-15 14:24:02');
INSERT INTO `sys_oper_log` VALUES (1647126510829977601, '公告管理', 1, 'com.ruoyi.contest.controller.LogController.add()', 'POST', 1, 'admin', '', '/contest/log', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"log\":\"<p>欢迎大家使用海南大学计算机科学与技术学院软件工程NIIT方向李祥生团队设计的竞赛报名管理系统</p>\"}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/LogMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.LogMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO log  ( id, log, create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-15 14:35:37');
INSERT INTO `sys_oper_log` VALUES (1647126527254872066, '公告管理', 1, 'com.ruoyi.contest.controller.LogController.add()', 'POST', 1, 'admin', '', '/contest/log', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"log\":\"<p>欢迎大家使用海南大学计算机科学与技术学院软件工程NIIT方向李祥生团队设计的竞赛报名管理系统</p>\"}', '', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\r\n### The error may exist in com/ruoyi/contest/mapper/LogMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.LogMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO log  ( id, log, create_by, create_time, update_by, update_time )  VALUES  ( ?, ?, ?, ?, ?, ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1\n; Data truncation: Out of range value for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'id\' at row 1', '2023-04-15 14:35:41');
INSERT INTO `sys_oper_log` VALUES (1647127476627230721, '公告管理', 1, 'com.ruoyi.contest.controller.LogController.add()', 'POST', 1, 'admin', '', '/contest/log', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":1,\"log\":\"<p>欢迎大家使用海南大学计算机科学与技术学院软件工程NIIT方向李祥生团队设计的竞赛报名管理系统</p>\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-15 14:39:27');
INSERT INTO `sys_oper_log` VALUES (1648249964526473217, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 16:59:49');
INSERT INTO `sys_oper_log` VALUES (1648253217599295489, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 17:12:45');
INSERT INTO `sys_oper_log` VALUES (1648254382617563138, '竞赛管理', 5, 'com.ruoyi.contest.controller.ActivityController.export()', 'POST', 1, 'admin', '', '/contest/activity/export', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":null,\"name\":\"测试\",\"startTime\":null,\"endTime\":null,\"owner\":null,\"website\":null,\"type\":null,\"description\":null}', '', 0, '', '2023-04-18 17:17:23');
INSERT INTO `sys_oper_log` VALUES (1648254506852847618, '竞赛管理', 5, 'com.ruoyi.contest.controller.ActivityController.export()', 'POST', 1, 'admin', '', '/contest/activity/export', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"activityId\":null,\"id\":null,\"name\":\"测试2\",\"startTime\":null,\"endTime\":null,\"owner\":null,\"website\":null,\"type\":null,\"description\":null}', '', 0, '', '2023-04-18 17:17:52');
INSERT INTO `sys_oper_log` VALUES (1648256849233219586, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 17:27:11');
INSERT INTO `sys_oper_log` VALUES (1648257802040676353, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 17:30:58');
INSERT INTO `sys_oper_log` VALUES (1648257820441088002, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 17:31:02');
INSERT INTO `sys_oper_log` VALUES (1648259263990501377, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/file_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 17:36:46');
INSERT INTO `sys_oper_log` VALUES (1648259408396193794, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 17:37:21');
INSERT INTO `sys_oper_log` VALUES (1648261238547189761, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-18 17:44:37\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":1},\"tableId\":\"1646412527542099970\",\"tableName\":\"team_info\",\"tableComment\":\"队伍信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"TeamInfo\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"info\",\"functionName\":\"团队管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-18 17:44:37\",\"columnId\":\"1646412527563071489\",\"tableId\":\"1646412527542099970\",\"columnName\":\"Id\",\"columnComment\":\"主键id\",\"columnType\":\"tinyint(4)\",\"javaType\":\"Integer\",\"javaField\":\"Id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"pk\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"edit\":true,\"query\":false,\"capJavaField\":\"Id\",\"increment\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-18 17:44:37\",\"columnId\":\"1648253217205030914\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_name\",\"columnComment\":\"队名\",\"columnType\":\"varchar(20)\",\"javaType\":\"String\",\"javaField\":\"teamName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"edit\":true,\"query\":true,\"capJavaField\":\"TeamName\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-18 17:44:37\",\"columnId\":\"1648253217238585346\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_leader_name\",\"columnComment\":\"队长学号\",\"columnType\":\"varchar(100', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 17:44:37');
INSERT INTO `sys_oper_log` VALUES (1648261569758793730, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-18 17:45:56\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527542099970\",\"tableName\":\"team_info\",\"tableComment\":\"队伍信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"TeamInfo\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"info\",\"functionName\":\"团队管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-18 17:45:56\",\"columnId\":\"1646412527563071489\",\"tableId\":\"1646412527542099970\",\"columnName\":\"Id\",\"columnComment\":\"主键id\",\"columnType\":\"tinyint(4)\",\"javaType\":\"Integer\",\"javaField\":\"Id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"pk\":true,\"insert\":false,\"usableColumn\":false,\"superColumn\":false,\"edit\":true,\"query\":false,\"capJavaField\":\"Id\",\"increment\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-18 17:45:56\",\"columnId\":\"1648253217205030914\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_name\",\"columnComment\":\"队名\",\"columnType\":\"varchar(20)\",\"javaType\":\"String\",\"javaField\":\"teamName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"pk\":false,\"insert\":true,\"usableColumn\":false,\"superColumn\":false,\"edit\":true,\"query\":true,\"capJavaField\":\"TeamName\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-18 17:45:56\",\"columnId\":\"1648253217238585346\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_leader_name\",\"columnComment\":\"队长姓名\",\"columnType\":\"varchar(1', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-18 17:45:56');
INSERT INTO `sys_oper_log` VALUES (1648508046233985026, '公告管理', 1, 'com.ruoyi.contest.controller.LogController.add()', 'POST', 1, 'admin', '', '/contest/log', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":3,\"log\":\"<p>在使用过程中有任何不便 请联系2601055687@qq.com</p>\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 10:05:21');
INSERT INTO `sys_oper_log` VALUES (1648508387461586946, '团队管理', 1, 'com.ruoyi.contest.controller.TeamInfoController.add()', 'POST', 1, 'admin', '', '/contest/info', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"teamName\":\"测试\",\"teamLeaderName\":\"测试\",\"track\":\"测试\",\"activityName\":\"测试\",\"teacher\":\"测试\",\"teamMemberName\":\"测试\",\"teamMemberId\":\"测试\",\"id\":1}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 10:06:42');
INSERT INTO `sys_oper_log` VALUES (1648510260897800193, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 10:14:08\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527542099970\",\"tableName\":\"team_info\",\"tableComment\":\"队伍信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"TeamInfo\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"info\",\"functionName\":\"团队管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 10:14:08\",\"columnId\":\"1646412527563071489\",\"tableId\":\"1646412527542099970\",\"columnName\":\"Id\",\"columnComment\":\"id\",\"columnType\":\"tinyint(4)\",\"javaType\":\"Integer\",\"javaField\":\"Id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"edit\":true,\"superColumn\":false,\"insert\":false,\"usableColumn\":false,\"pk\":true,\"query\":false,\"capJavaField\":\"Id\",\"increment\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 10:14:08\",\"columnId\":\"1648253217205030914\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_name\",\"columnComment\":\"队名\",\"columnType\":\"varchar(20)\",\"javaType\":\"String\",\"javaField\":\"teamName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"edit\":true,\"superColumn\":false,\"insert\":true,\"usableColumn\":false,\"pk\":false,\"query\":true,\"capJavaField\":\"TeamName\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 10:14:08\",\"columnId\":\"1648253217238585346\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_leader_name\",\"columnComment\":\"队长姓名\",\"columnType\":\"varchar(100', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 10:14:09');
INSERT INTO `sys_oper_log` VALUES (1648510301704183810, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 10:14:18');
INSERT INTO `sys_oper_log` VALUES (1648514297462415361, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 10:30:11\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527542099970\",\"tableName\":\"team_info\",\"tableComment\":\"队伍信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"TeamInfo\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"info\",\"functionName\":\"团队管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-13 15:18:30\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 10:30:11\",\"columnId\":\"1646412527563071489\",\"tableId\":\"1646412527542099970\",\"columnName\":\"Id\",\"columnComment\":\"主键id\",\"columnType\":\"tinyint(4)\",\"javaType\":\"Integer\",\"javaField\":\"Id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"list\":true,\"required\":true,\"edit\":true,\"superColumn\":false,\"insert\":false,\"usableColumn\":false,\"pk\":true,\"query\":false,\"capJavaField\":\"Id\",\"increment\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 10:30:11\",\"columnId\":\"1648253217205030914\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_name\",\"columnComment\":\"队名\",\"columnType\":\"varchar(20)\",\"javaType\":\"String\",\"javaField\":\"teamName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"list\":true,\"required\":true,\"edit\":true,\"superColumn\":false,\"insert\":true,\"usableColumn\":false,\"pk\":false,\"query\":true,\"capJavaField\":\"TeamName\",\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 10:30:11\",\"columnId\":\"1648253217238585346\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_leader_name\",\"columnComment\":\"队长姓名\",\"columnType\":\"varchar(1', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 10:30:11');
INSERT INTO `sys_oper_log` VALUES (1648514487225311233, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"team_info\"}', '', 0, '', '2023-04-19 10:30:56');
INSERT INTO `sys_oper_log` VALUES (1648521109930676225, '团队管理', 1, 'com.ruoyi.contest.controller.TeamInfoController.add()', 'POST', 1, 'admin', '', '/contest/info', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":2,\"teamName\":\"测试\",\"teamLeaderName\":\"测试\",\"track\":\"测试\",\"activityName\":\"测试\",\"teacher\":\"测试\",\"teacherMember\":null,\"teamMemberName\":\"测试\",\"teamMemberId\":\"测试\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 10:57:15');
INSERT INTO `sys_oper_log` VALUES (1648522795445288961, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:03:57');
INSERT INTO `sys_oper_log` VALUES (1648523356869656577, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:06:10\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527542099970\",\"tableName\":\"team_info\",\"tableComment\":\"队伍信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"TeamInfo\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"info\",\"functionName\":\"团队管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-19 11:03:57\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:06:10\",\"columnId\":\"1648522794807754753\",\"tableId\":\"1646412527542099970\",\"columnName\":\"id\",\"columnComment\":\"主键id\",\"columnType\":\"tinyint(4)\",\"javaType\":\"Integer\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"usableColumn\":false,\"superColumn\":false,\"insert\":false,\"pk\":true,\"capJavaField\":\"Id\",\"increment\":true,\"query\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:06:10\",\"columnId\":\"1648253217205030914\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_name\",\"columnComment\":\"队名\",\"columnType\":\"varchar(20)\",\"javaType\":\"String\",\"javaField\":\"teamName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"usableColumn\":false,\"superColumn\":false,\"insert\":true,\"pk\":false,\"capJavaField\":\"TeamName\",\"increment\":false,\"query\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:06:10\",\"columnId\":\"1648253217238585346\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_leader_name\",\"columnComment\":\"队长姓名\",\"columnType\":\"varchar(1', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:06:11');
INSERT INTO `sys_oper_log` VALUES (1648523375928573953, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"team_info\"}', '', 0, '', '2023-04-19 11:06:16');
INSERT INTO `sys_oper_log` VALUES (1648523804313812993, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:07:57\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527542099970\",\"tableName\":\"team_info\",\"tableComment\":\"队伍信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"TeamInfo\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"info\",\"functionName\":\"团队管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-19 11:03:57\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:07:57\",\"columnId\":\"1648522794807754753\",\"tableId\":\"1646412527542099970\",\"columnName\":\"id\",\"columnComment\":\"主键id\",\"columnType\":\"tinyint(4)\",\"javaType\":\"Integer\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"edit\":true,\"usableColumn\":false,\"superColumn\":false,\"insert\":false,\"pk\":true,\"capJavaField\":\"Id\",\"increment\":true,\"query\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:07:57\",\"columnId\":\"1648253217205030914\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_name\",\"columnComment\":\"队名\",\"columnType\":\"varchar(20)\",\"javaType\":\"String\",\"javaField\":\"teamName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"edit\":true,\"usableColumn\":false,\"superColumn\":false,\"insert\":true,\"pk\":false,\"capJavaField\":\"TeamName\",\"increment\":false,\"query\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:07:57\",\"columnId\":\"1648253217238585346\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_leader_name\",\"columnComment\":\"队长姓名\",\"columnType\":\"varchar(1', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:07:58');
INSERT INTO `sys_oper_log` VALUES (1648523826669453313, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"team_info\"}', '', 0, '', '2023-04-19 11:08:03');
INSERT INTO `sys_oper_log` VALUES (1648532241135308802, '团队管理', 3, 'com.ruoyi.contest.controller.TeamInfoController.remove()', 'DELETE', 1, 'admin', '', '/contest/info/,', '127.0.0.1', '内网IP', '{}', '', 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.NullPointerException: target is null for method getClass\r\n### The error may exist in com/ruoyi/contest/mapper/TeamInfoMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.TeamInfoMapper.deleteBatchIds\r\n### The error occurred while executing an update\r\n### Cause: java.lang.NullPointerException: target is null for method getClass', '2023-04-19 11:41:29');
INSERT INTO `sys_oper_log` VALUES (1648532280972808193, '团队管理', 3, 'com.ruoyi.contest.controller.TeamInfoController.remove()', 'DELETE', 1, 'admin', '', '/contest/info/,', '127.0.0.1', '内网IP', '{}', '', 1, 'nested exception is org.apache.ibatis.exceptions.PersistenceException: \r\n### Error updating database.  Cause: java.lang.NullPointerException: target is null for method getClass\r\n### The error may exist in com/ruoyi/contest/mapper/TeamInfoMapper.java (best guess)\r\n### The error may involve com.ruoyi.contest.mapper.TeamInfoMapper.deleteBatchIds\r\n### The error occurred while executing an update\r\n### Cause: java.lang.NullPointerException: target is null for method getClass', '2023-04-19 11:41:39');
INSERT INTO `sys_oper_log` VALUES (1648532971992780801, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:44:23');
INSERT INTO `sys_oper_log` VALUES (1648533429155139586, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:46:12');
INSERT INTO `sys_oper_log` VALUES (1648533441851297793, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '', '/tool/gen/synchDb/team_info', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:46:15');
INSERT INTO `sys_oper_log` VALUES (1648534041049567234, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '', '/tool/gen', '127.0.0.1', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:48:38\",\"params\":{\"treeCode\":null,\"treeName\":null,\"treeParentCode\":null,\"parentMenuId\":\"1\"},\"tableId\":\"1646412527542099970\",\"tableName\":\"team_info\",\"tableComment\":\"队伍信息表\",\"subTableName\":null,\"subTableFkName\":null,\"className\":\"TeamInfo\",\"tplCategory\":\"crud\",\"packageName\":\"com.ruoyi.contest\",\"moduleName\":\"contest\",\"businessName\":\"info\",\"functionName\":\"团队管理\",\"functionAuthor\":\"李祥生\",\"genType\":\"0\",\"genPath\":\"/\",\"pkColumn\":null,\"subTable\":null,\"columns\":[{\"createBy\":\"admin\",\"createTime\":\"2023-04-19 11:03:57\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:48:38\",\"columnId\":\"1648522794807754753\",\"tableId\":\"1646412527542099970\",\"columnName\":\"id\",\"columnComment\":\"主键id\",\"columnType\":\"int(100)\",\"javaType\":\"Long\",\"javaField\":\"id\",\"isPk\":\"1\",\"isIncrement\":\"1\",\"isRequired\":\"1\",\"isInsert\":null,\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":null,\"queryType\":\"EQ\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":1,\"required\":true,\"list\":true,\"pk\":true,\"insert\":false,\"edit\":true,\"usableColumn\":false,\"superColumn\":false,\"capJavaField\":\"Id\",\"query\":false,\"increment\":true},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:48:38\",\"columnId\":\"1648253217205030914\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_name\",\"columnComment\":\"队名\",\"columnType\":\"varchar(20)\",\"javaType\":\"String\",\"javaField\":\"teamName\",\"isPk\":\"0\",\"isIncrement\":\"0\",\"isRequired\":\"1\",\"isInsert\":\"1\",\"isEdit\":\"1\",\"isList\":\"1\",\"isQuery\":\"1\",\"queryType\":\"LIKE\",\"htmlType\":\"input\",\"dictType\":\"\",\"sort\":2,\"required\":true,\"list\":true,\"pk\":false,\"insert\":true,\"edit\":true,\"usableColumn\":false,\"superColumn\":false,\"capJavaField\":\"TeamName\",\"query\":true,\"increment\":false},{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 17:12:45\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 11:48:38\",\"columnId\":\"1648253217238585346\",\"tableId\":\"1646412527542099970\",\"columnName\":\"team_leader_name\",\"columnComment\":\"队长姓名\",\"columnType\":\"varchar(100)\",', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:48:38');
INSERT INTO `sys_oper_log` VALUES (1648534102722613250, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"team_info\"}', '', 0, '', '2023-04-19 11:48:53');
INSERT INTO `sys_oper_log` VALUES (1648535828984930306, '团队管理', 3, 'com.ruoyi.contest.controller.TeamInfoController.remove()', 'DELETE', 1, 'admin', '', '/contest/info/2', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:55:45');
INSERT INTO `sys_oper_log` VALUES (1648535839093202945, '团队管理', 3, 'com.ruoyi.contest.controller.TeamInfoController.remove()', 'DELETE', 1, 'admin', '', '/contest/info/1', '127.0.0.1', '内网IP', '{}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 11:55:47');
INSERT INTO `sys_oper_log` VALUES (1648625118012153857, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '', '/system/menu', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-04-15 14:24:49\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 17:50:32\",\"parentName\":null,\"parentId\":1,\"children\":[],\"menuId\":\"1647123595981643777\",\"menuName\":\"公告管理\",\"orderNum\":1,\"path\":\"log\",\"component\":\"contest/log/index\",\"queryParam\":null,\"isFrame\":\"1\",\"isCache\":\"0\",\"menuType\":\"C\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"contest:log:list\",\"icon\":\"table\",\"remark\":\"公告管理菜单\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 17:50:33');
INSERT INTO `sys_oper_log` VALUES (1648625167823708161, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '', '/system/menu', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-04-14 10:58:55\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 17:50:44\",\"parentName\":null,\"parentId\":1,\"children\":[],\"menuId\":\"1646707919118827521\",\"menuName\":\"竞赛管理\",\"orderNum\":1,\"path\":\"activity\",\"component\":\"contest/activity/index\",\"queryParam\":null,\"isFrame\":\"1\",\"isCache\":\"0\",\"menuType\":\"C\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"contest:activity:list\",\"icon\":\"build\",\"remark\":\"竞赛管理菜单\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 17:50:45');
INSERT INTO `sys_oper_log` VALUES (1648625214300790786, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '', '/system/menu', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-04-18 21:48:08\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 17:50:55\",\"parentName\":null,\"parentId\":1,\"children\":[],\"menuId\":\"1648313437453193217\",\"menuName\":\"团队管理\",\"orderNum\":1,\"path\":\"info\",\"component\":\"contest/info/index\",\"queryParam\":null,\"isFrame\":\"1\",\"isCache\":\"0\",\"menuType\":\"C\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"contest:info:list\",\"icon\":\"druid\",\"remark\":\"团队管理菜单\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 17:50:56');
INSERT INTO `sys_oper_log` VALUES (1648625272161214466, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '', '/system/menu', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-04-14 08:31:53\",\"updateBy\":\"admin\",\"updateTime\":\"2023-04-19 17:51:09\",\"parentName\":null,\"parentId\":1,\"children\":[],\"menuId\":\"1646672299373756418\",\"menuName\":\"学生管理\",\"orderNum\":1,\"path\":\"user\",\"component\":\"contest/user/index\",\"queryParam\":null,\"isFrame\":\"1\",\"isCache\":\"0\",\"menuType\":\"C\",\"visible\":\"0\",\"status\":\"0\",\"perms\":\"contest:user:list\",\"icon\":\"example\",\"remark\":\"学生管理菜单\"}', '{\"code\":200,\"msg\":\"操作成功\",\"data\":null}', 0, '', '2023-04-19 17:51:10');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `oss_id` bigint(20) NOT NULL COMMENT '对象存储主键',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '原名',
  `file_suffix` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文件后缀名',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'URL地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '上传人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新人',
  `service` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'minio' COMMENT '服务商',
  PRIMARY KEY (`oss_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'OSS对象存储表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oss_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss_config`;
CREATE TABLE `sys_oss_config`  (
  `oss_config_id` bigint(20) NOT NULL COMMENT '主建',
  `config_key` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '配置key',
  `access_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'accessKey',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '秘钥',
  `bucket_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '桶名称',
  `prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前缀',
  `endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '访问站点',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '自定义域名',
  `is_https` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否https（Y=是,N=否）',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '域',
  `access_policy` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '1' COMMENT '桶权限类型(0=private 1=public 2=custom)',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '状态（0=正常,1=停用）',
  `ext1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '扩展字段',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`oss_config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '对象存储配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oss_config
-- ----------------------------
INSERT INTO `sys_oss_config` VALUES (1, 'minio', 'ruoyi', 'ruoyi123', 'ruoyi', '', '127.0.0.1:9000', '', 'N', '', '1', '1', '', 'admin', '2023-04-13 14:44:01', 'admin', '2023-04-14 08:03:59', NULL);
INSERT INTO `sys_oss_config` VALUES (2, 'qiniu', 'auJucSgs0p45Yzt9lwKwiQZ_KT6hujWQpdHmu3KE', '7J24PpVOzeN4L2ltyE6v0tgr4IYah1bwVUuHKwHs', 'niit123', '', 's3-cn-south-1.qiniucs.com', '', 'N', '', '1', '0', '', 'admin', '2023-04-13 14:44:01', 'admin', '2023-04-14 08:11:11', '');
INSERT INTO `sys_oss_config` VALUES (3, 'aliyun', 'XXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXX', 'ruoyi', '', 'oss-cn-beijing.aliyuncs.com', '', 'N', '', '1', '1', '', 'admin', '2023-04-13 14:44:01', 'admin', '2023-04-13 14:44:01', NULL);
INSERT INTO `sys_oss_config` VALUES (4, 'qcloud', 'XXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXX', 'ruoyi-1250000000', '', 'cos.ap-beijing.myqcloud.com', '', 'N', 'ap-beijing', '1', '1', '', 'admin', '2023-04-13 14:44:01', 'admin', '2023-04-13 14:44:01', NULL);
INSERT INTO `sys_oss_config` VALUES (5, 'image', 'ruoyi', 'ruoyi123', 'ruoyi', 'image', '127.0.0.1:9000', '', 'N', '', '1', '1', '', 'admin', '2023-04-13 14:44:01', 'admin', '2023-04-13 14:44:01', NULL);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-04-13 14:43:59', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-04-13 14:43:59', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-04-13 14:43:59', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (3, '本部门及以下', 'test1', 3, '4', 1, 1, '0', '0', 'admin', '2023-04-13 14:44:19', 'admin', NULL, NULL);
INSERT INTO `sys_role` VALUES (4, '仅本人', 'test2', 4, '5', 1, 1, '0', '0', 'admin', '2023-04-13 14:44:19', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (3, 1);
INSERT INTO `sys_role_menu` VALUES (3, 5);
INSERT INTO `sys_role_menu` VALUES (3, 100);
INSERT INTO `sys_role_menu` VALUES (3, 101);
INSERT INTO `sys_role_menu` VALUES (3, 102);
INSERT INTO `sys_role_menu` VALUES (3, 103);
INSERT INTO `sys_role_menu` VALUES (3, 104);
INSERT INTO `sys_role_menu` VALUES (3, 105);
INSERT INTO `sys_role_menu` VALUES (3, 106);
INSERT INTO `sys_role_menu` VALUES (3, 107);
INSERT INTO `sys_role_menu` VALUES (3, 108);
INSERT INTO `sys_role_menu` VALUES (3, 500);
INSERT INTO `sys_role_menu` VALUES (3, 501);
INSERT INTO `sys_role_menu` VALUES (3, 1001);
INSERT INTO `sys_role_menu` VALUES (3, 1002);
INSERT INTO `sys_role_menu` VALUES (3, 1003);
INSERT INTO `sys_role_menu` VALUES (3, 1004);
INSERT INTO `sys_role_menu` VALUES (3, 1005);
INSERT INTO `sys_role_menu` VALUES (3, 1006);
INSERT INTO `sys_role_menu` VALUES (3, 1007);
INSERT INTO `sys_role_menu` VALUES (3, 1008);
INSERT INTO `sys_role_menu` VALUES (3, 1009);
INSERT INTO `sys_role_menu` VALUES (3, 1010);
INSERT INTO `sys_role_menu` VALUES (3, 1011);
INSERT INTO `sys_role_menu` VALUES (3, 1012);
INSERT INTO `sys_role_menu` VALUES (3, 1013);
INSERT INTO `sys_role_menu` VALUES (3, 1014);
INSERT INTO `sys_role_menu` VALUES (3, 1015);
INSERT INTO `sys_role_menu` VALUES (3, 1016);
INSERT INTO `sys_role_menu` VALUES (3, 1017);
INSERT INTO `sys_role_menu` VALUES (3, 1018);
INSERT INTO `sys_role_menu` VALUES (3, 1019);
INSERT INTO `sys_role_menu` VALUES (3, 1020);
INSERT INTO `sys_role_menu` VALUES (3, 1021);
INSERT INTO `sys_role_menu` VALUES (3, 1022);
INSERT INTO `sys_role_menu` VALUES (3, 1023);
INSERT INTO `sys_role_menu` VALUES (3, 1024);
INSERT INTO `sys_role_menu` VALUES (3, 1025);
INSERT INTO `sys_role_menu` VALUES (3, 1026);
INSERT INTO `sys_role_menu` VALUES (3, 1027);
INSERT INTO `sys_role_menu` VALUES (3, 1028);
INSERT INTO `sys_role_menu` VALUES (3, 1029);
INSERT INTO `sys_role_menu` VALUES (3, 1030);
INSERT INTO `sys_role_menu` VALUES (3, 1031);
INSERT INTO `sys_role_menu` VALUES (3, 1032);
INSERT INTO `sys_role_menu` VALUES (3, 1033);
INSERT INTO `sys_role_menu` VALUES (3, 1034);
INSERT INTO `sys_role_menu` VALUES (3, 1035);
INSERT INTO `sys_role_menu` VALUES (3, 1036);
INSERT INTO `sys_role_menu` VALUES (3, 1037);
INSERT INTO `sys_role_menu` VALUES (3, 1038);
INSERT INTO `sys_role_menu` VALUES (3, 1039);
INSERT INTO `sys_role_menu` VALUES (3, 1040);
INSERT INTO `sys_role_menu` VALUES (3, 1041);
INSERT INTO `sys_role_menu` VALUES (3, 1042);
INSERT INTO `sys_role_menu` VALUES (3, 1043);
INSERT INTO `sys_role_menu` VALUES (3, 1044);
INSERT INTO `sys_role_menu` VALUES (3, 1045);
INSERT INTO `sys_role_menu` VALUES (3, 1500);
INSERT INTO `sys_role_menu` VALUES (3, 1501);
INSERT INTO `sys_role_menu` VALUES (3, 1502);
INSERT INTO `sys_role_menu` VALUES (3, 1503);
INSERT INTO `sys_role_menu` VALUES (3, 1504);
INSERT INTO `sys_role_menu` VALUES (3, 1505);
INSERT INTO `sys_role_menu` VALUES (3, 1506);
INSERT INTO `sys_role_menu` VALUES (3, 1507);
INSERT INTO `sys_role_menu` VALUES (3, 1508);
INSERT INTO `sys_role_menu` VALUES (3, 1509);
INSERT INTO `sys_role_menu` VALUES (3, 1510);
INSERT INTO `sys_role_menu` VALUES (3, 1511);
INSERT INTO `sys_role_menu` VALUES (4, 5);
INSERT INTO `sys_role_menu` VALUES (4, 1500);
INSERT INTO `sys_role_menu` VALUES (4, 1501);
INSERT INTO `sys_role_menu` VALUES (4, 1502);
INSERT INTO `sys_role_menu` VALUES (4, 1503);
INSERT INTO `sys_role_menu` VALUES (4, 1504);
INSERT INTO `sys_role_menu` VALUES (4, 1505);
INSERT INTO `sys_role_menu` VALUES (4, 1506);
INSERT INTO `sys_role_menu` VALUES (4, 1507);
INSERT INTO `sys_role_menu` VALUES (4, 1508);
INSERT INTO `sys_role_menu` VALUES (4, 1509);
INSERT INTO `sys_role_menu` VALUES (4, 1510);
INSERT INTO `sys_role_menu` VALUES (4, 1511);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'sys_user' COMMENT '用户类型（sys_user系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '疯狂的狮子Li', 'sys_user', 'crazyLionLi@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-04-19 20:06:43', 'admin', '2023-04-13 14:43:59', 'admin', '2023-04-19 20:06:43', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'lionli', '疯狂的狮子Li', 'sys_user', 'crazyLionLi@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-04-13 14:43:59', 'admin', '2023-04-13 14:43:59', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (3, 108, 'test', '本部门及以下 密码666666', 'sys_user', '', '', '0', '', '$2a$10$b8yUzN0C71sbz.PhNOCgJe.Tu1yWC3RNrTyjSQ8p1W0.aaUXUJ.Ne', '0', '0', '127.0.0.1', '2023-04-13 14:44:19', 'admin', '2023-04-13 14:44:19', 'test', '2023-04-13 14:44:19', NULL);
INSERT INTO `sys_user` VALUES (4, 102, 'test1', '仅本人 密码666666', 'sys_user', '', '', '0', '', '$2a$10$b8yUzN0C71sbz.PhNOCgJe.Tu1yWC3RNrTyjSQ8p1W0.aaUXUJ.Ne', '0', '0', '127.0.0.1', '2023-04-13 14:44:19', 'admin', '2023-04-13 14:44:19', 'test1', '2023-04-13 14:44:19', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 3);
INSERT INTO `sys_user_role` VALUES (4, 4);

-- ----------------------------
-- Table structure for team_info
-- ----------------------------
DROP TABLE IF EXISTS `team_info`;
CREATE TABLE `team_info`  (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `team_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '队名',
  `team_leader_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '队长学号',
  `deleted` tinyint(4) NULL DEFAULT 0 COMMENT '逻辑删除',
  `track` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '赛道',
  `activity_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参加竞赛名称',
  `teacher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '指导教师',
  `teacher_member` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教工号',
  `team_member_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '队员',
  `team_member_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '队员学号',
  `team_id` int(100) NULL DEFAULT NULL COMMENT '团队ID',
  `create_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `update_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `team_leader`(`team_leader_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of team_info
-- ----------------------------

-- ----------------------------
-- Table structure for team_memberships
-- ----------------------------
DROP TABLE IF EXISTS `team_memberships`;
CREATE TABLE `team_memberships`  (
  `tmshipsId` tinyint(10) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `teamId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '团队Id',
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生Id',
  PRIMARY KEY (`tmshipsId`) USING BTREE,
  INDEX `tm_team_Id`(`teamId`) USING BTREE,
  INDEX `tm_user_Id`(`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of team_memberships
-- ----------------------------

-- ----------------------------
-- Table structure for teammember
-- ----------------------------
DROP TABLE IF EXISTS `teammember`;
CREATE TABLE `teammember`  (
  `team_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '团队名',
  `team_id` int(255) NULL DEFAULT NULL COMMENT '团队Id',
  `member_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '队员姓名',
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '队员学号',
  `id` tinyint(10) NOT NULL COMMENT '主键id',
  `activity_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teammember
-- ----------------------------

-- ----------------------------
-- Table structure for test_demo
-- ----------------------------
DROP TABLE IF EXISTS `test_demo`;
CREATE TABLE `test_demo`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '排序号',
  `test_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'key键',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '值',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 0 COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '测试单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_demo
-- ----------------------------

-- ----------------------------
-- Table structure for test_tree
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父id',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `tree_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '值',
  `version` int(11) NULL DEFAULT 0 COMMENT '版本',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新人',
  `del_flag` int(11) NULL DEFAULT 0 COMMENT '删除标志',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '测试树表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test_tree
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `academy` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gender` tinyint(1) NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user',
  `Number` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `student_Class` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `specialized_Subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `Invitation` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `create_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `update_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20213002970', '李祥生', '2601055687@qq.com', '计算机科学与技术', 0, NULL, 'user', NULL, '测试', '2021', '软件工程', '21232f297a57a5a743894a0e4a801fc3', '17889769010', NULL, NULL, 1, 'admin', '2023-04-14 10:03:41.297000', 'admin', '2023-04-14 10:34:01.645000');

-- ----------------------------
-- Table structure for xxl_job_group
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_group`;
CREATE TABLE `xxl_job_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行器AppName',
  `title` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行器名称',
  `address_type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '执行器地址类型：0=自动注册、1=手动录入',
  `address_list` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '执行器地址列表，多地址逗号分隔',
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xxl_job_group
-- ----------------------------
INSERT INTO `xxl_job_group` VALUES (1, 'xxl-job-executor', '示例执行器', 0, NULL, '2018-11-03 22:21:31');

-- ----------------------------
-- Table structure for xxl_job_info
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_info`;
CREATE TABLE `xxl_job_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT '执行器主键ID',
  `job_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `add_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `author` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '作者',
  `alarm_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报警邮件',
  `schedule_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'NONE' COMMENT '调度类型',
  `schedule_conf` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '调度配置，值含义取决于调度类型',
  `misfire_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DO_NOTHING' COMMENT '调度过期策略',
  `executor_route_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器路由策略',
  `executor_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务参数',
  `executor_block_strategy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '阻塞处理策略',
  `executor_timeout` int(11) NOT NULL DEFAULT 0 COMMENT '任务执行超时时间，单位秒',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT 0 COMMENT '失败重试次数',
  `glue_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'GLUE备注',
  `glue_updatetime` datetime(0) NULL DEFAULT NULL COMMENT 'GLUE更新时间',
  `child_jobid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子任务ID，多个逗号分隔',
  `trigger_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '调度状态：0-停止，1-运行',
  `trigger_last_time` bigint(13) NOT NULL DEFAULT 0 COMMENT '上次调度时间',
  `trigger_next_time` bigint(13) NOT NULL DEFAULT 0 COMMENT '下次调度时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xxl_job_info
-- ----------------------------
INSERT INTO `xxl_job_info` VALUES (1, 1, '测试任务1', '2018-11-03 22:21:31', '2018-11-03 22:21:31', 'XXL', '', 'CRON', '0 0 0 * * ? *', 'DO_NOTHING', 'FIRST', 'demoJobHandler', '', 'SERIAL_EXECUTION', 0, 0, 'BEAN', '', 'GLUE代码初始化', '2018-11-03 22:21:31', '', 0, 0, 0);

-- ----------------------------
-- Table structure for xxl_job_lock
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_lock`;
CREATE TABLE `xxl_job_lock`  (
  `lock_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '锁名称',
  PRIMARY KEY (`lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xxl_job_lock
-- ----------------------------
INSERT INTO `xxl_job_lock` VALUES ('schedule_lock');

-- ----------------------------
-- Table structure for xxl_job_log
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_log`;
CREATE TABLE `xxl_job_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `job_group` int(11) NOT NULL COMMENT '执行器主键ID',
  `job_id` int(11) NOT NULL COMMENT '任务，主键ID',
  `executor_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器地址，本次执行的地址',
  `executor_handler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务handler',
  `executor_param` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务参数',
  `executor_sharding_param` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '执行器任务分片参数，格式如 1/2',
  `executor_fail_retry_count` int(11) NOT NULL DEFAULT 0 COMMENT '失败重试次数',
  `trigger_time` datetime(0) NULL DEFAULT NULL COMMENT '调度-时间',
  `trigger_code` int(11) NOT NULL COMMENT '调度-结果',
  `trigger_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '调度-日志',
  `handle_time` datetime(0) NULL DEFAULT NULL COMMENT '执行-时间',
  `handle_code` int(11) NOT NULL COMMENT '执行-状态',
  `handle_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '执行-日志',
  `alarm_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '告警状态：0-默认、1-无需告警、2-告警成功、3-告警失败',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `I_trigger_time`(`trigger_time`) USING BTREE,
  INDEX `I_handle_code`(`handle_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xxl_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_log_report
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_log_report`;
CREATE TABLE `xxl_job_log_report`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trigger_day` datetime(0) NULL DEFAULT NULL COMMENT '调度-时间',
  `running_count` int(11) NOT NULL DEFAULT 0 COMMENT '运行中-日志数量',
  `suc_count` int(11) NOT NULL DEFAULT 0 COMMENT '执行成功-日志数量',
  `fail_count` int(11) NOT NULL DEFAULT 0 COMMENT '执行失败-日志数量',
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `i_trigger_day`(`trigger_day`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xxl_job_log_report
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_logglue
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_logglue`;
CREATE TABLE `xxl_job_logglue`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL COMMENT '任务，主键ID',
  `glue_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'GLUE类型',
  `glue_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT 'GLUE源代码',
  `glue_remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'GLUE备注',
  `add_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xxl_job_logglue
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_registry
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_registry`;
CREATE TABLE `xxl_job_registry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registry_group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `registry_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `registry_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `i_g_k_v`(`registry_group`, `registry_key`, `registry_value`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xxl_job_registry
-- ----------------------------

-- ----------------------------
-- Table structure for xxl_job_user
-- ----------------------------
DROP TABLE IF EXISTS `xxl_job_user`;
CREATE TABLE `xxl_job_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账号',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `role` tinyint(4) NOT NULL COMMENT '角色：0-普通用户、1-管理员',
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限：执行器ID列表，多个逗号分割',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `i_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xxl_job_user
-- ----------------------------
INSERT INTO `xxl_job_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
