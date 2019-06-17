/*
Navicat MySQL Data Transfer

Source Server         : ecs测试
Source Server Version : 80016
Source Host           : 47.102.43.84:3306
Source Database       : activititest

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-06-14 20:39:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `leaveapply`
-- ----------------------------
DROP TABLE IF EXISTS `leaveapply`;
CREATE TABLE `leaveapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_instance_id` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '发送',
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请假人id',
  `start_time` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '开始时间',
  `end_time` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '结束时间',
  `leave_time` float(10,1) NOT NULL,
  `leave_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请假类型',
  `reason` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请假原因',
  `apply_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '反倒是',
  `user_job_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of leaveapply
-- ----------------------------
INSERT INTO `leaveapply` VALUES ('8', '0', '1', '', '', '1.0', '事假', '11', 'Wed Jun 12 21:32:32 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('9', '0', '0', '', '', '1.0', '事假', '11', 'Wed Jun 12 21:32:34 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('10', '0', '0', '', '', '1.0', '事假', '11', 'Wed Jun 12 21:36:22 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('11', '0', '0', '', '', '1.0', '事假', '11', 'Wed Jun 12 21:36:31 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('12', '20001', '0', '', '', '1.0', '事假', '11', 'Wed Jun 12 21:39:33 CST 2019', '3');
INSERT INTO `leaveapply` VALUES ('13', '22501', '0', '', '', '2.0', '病假', '11', 'Thu Jun 13 09:58:26 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('14', '30005', '1', '', '', '12.0', '事假', '回家', 'Thu Jun 13 16:21:37 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('15', '30013', '1', '', '', '12.0', '事假', '回家', 'Thu Jun 13 16:26:22 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('16', '30021', '1', '', '', '11.0', '事假', '发多少', 'Thu Jun 13 16:29:35 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('17', '0', '1', '', '', '1.0', '事假', '发送到', 'Thu Jun 13 16:30:20 CST 2019', '3');
INSERT INTO `leaveapply` VALUES ('18', '0', '1', '', '', '11.0', '事假', '富士达', 'Thu Jun 13 16:33:29 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('19', '30045', '1', '', '', '1.0', '事假', '发多少', 'Thu Jun 13 16:33:56 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('20', '35005', '1', '', '', '1.0', '事假', '发送到', 'Thu Jun 13 17:31:48 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('21', '37503', '3', '2010-01-01', '2010-01-01', '11.0', '病假', 'fasdff', 'Thu Jun 13 18:44:31 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('22', '37511', '4', '2011-01-01', '2011-01-01', '32.0', '事假', '1321', 'Thu Jun 13 18:45:05 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('23', '45012', '1', '2010-01-01', '2010-01-01', '11.0', '事假', '11', 'Thu Jun 13 20:52:09 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('24', '45023', '1', '2010-01-01', '2010-01-01', '11.0', '病假', '11', 'Thu Jun 13 20:54:22 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('25', '45047', '4', '2010-01-01', '2010-01-02', '1.0', '病假', '1', 'Thu Jun 13 21:01:57 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('26', '47501', '1', '2010-01-01', '2019-01-02', '1.0', '病假', '不想上班', 'Fri Jun 14 10:06:58 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('27', '47517', '1', '2010-01-01', '201 0-02-01', '11.0', '事假', '132', 'Fri Jun 14 11:14:37 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('28', '50005', '1', '2010-01-01', '2010-01-01', '22.0', '病假', '0.0', 'Fri Jun 14 11:32:37 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('29', '50019', '1', '2010-01-01', '2010-01-01', '111.0', '产假', '发士大夫撒', 'Fri Jun 14 11:46:15 CST 2019', '4');
INSERT INTO `leaveapply` VALUES ('30', '50027', '1', '2010-01-01', '2010-01-01', '111.0', '产假', '发士大夫撒', 'Fri Jun 14 11:47:04 CST 2019', '4');
INSERT INTO `leaveapply` VALUES ('31', '50047', '1', '2010-01-01', '2010-02-01', '1.0', '年假', '11', 'Fri Jun 14 12:14:44 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('32', '55001', '1', '2010-01-01', '2010-01-01', '11.0', '年假', '撒', 'Fri Jun 14 16:56:22 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('33', '55009', '1', '2010-01-01', '2010-01-01', '11.0', '产假', '撒', 'Fri Jun 14 16:57:52 CST 2019', '3');
INSERT INTO `leaveapply` VALUES ('34', '55017', '1', '2010-01-01', '2010-01-01', '11.0', '产假', '撒', 'Fri Jun 14 17:00:00 CST 2019', '3');
INSERT INTO `leaveapply` VALUES ('35', '55025', '1', '2010-01-01', '2010-01-01', '11.0', '产假', '撒', 'Fri Jun 14 17:01:06 CST 2019', '3');
INSERT INTO `leaveapply` VALUES ('36', '55033', '1', '20', '11', '11.0', '事假', '11', 'Fri Jun 14 17:02:02 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('37', '55041', '1', '11', '22', '22.0', '事假', '22', 'Fri Jun 14 17:03:14 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('38', '55096', '2', '1', '1', '1.0', '病假', '1', 'Fri Jun 14 17:08:44 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('39', '55104', '2', '1', '1', '1.0', '年假', '1', 'Fri Jun 14 17:10:10 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('40', '55127', '2', '1', '1', '1.0', '事假', '11', 'Fri Jun 14 17:16:30 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('41', '55135', '2', '22', '22', '22.0', '事假', '22', 'Fri Jun 14 17:16:44 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('42', '55155', '2', '11', '11', '11.0', '病假', '11', 'Fri Jun 14 17:20:34 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('43', '60039', '1', '2010-01-01', '2010-01-01', '11.0', '事假', '请假测试', 'Fri Jun 14 18:55:37 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('44', '60064', '1', '2010-01-01', '2010-01-01', '1.0', '事假', '请假测试1', 'Fri Jun 14 19:02:32 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('45', '60092', '1', '2019-01-01', '2019-01-01', '1.0', '产假', '放假回家', 'Fri Jun 14 19:10:10 CST 2019', '2');
INSERT INTO `leaveapply` VALUES ('46', '60123', '1', '1', '1', '1.0', '病假', '请假1', 'Fri Jun 14 19:24:25 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('47', '60151', '1', '1', '1', '2.0', '病假', '请假1', 'Fri Jun 14 19:29:10 CST 2019', '1');
INSERT INTO `leaveapply` VALUES ('48', '65004', '1', '1', '1', '1.0', '病假', '试试', 'Fri Jun 14 20:29:40 CST 2019', '1');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `permissionname` varchar(45) NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `permissionname_UNIQUE` (`permissionname`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('3', '人事审批');
INSERT INTO `permission` VALUES ('2', '总经理审批');
INSERT INTO `permission` VALUES ('4', '普通员工权限');
INSERT INTO `permission` VALUES ('1', '部门领导审批');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(45) NOT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `rolename_UNIQUE` (`rolename`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('3', '人事');
INSERT INTO `role` VALUES ('2', '总经理');
INSERT INTO `role` VALUES ('4', '普通员工');
INSERT INTO `role` VALUES ('1', '部门经理');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `rpid` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `permissionid` int(11) NOT NULL,
  PRIMARY KEY (`rpid`),
  KEY `a_idx` (`roleid`),
  KEY `b_idx` (`permissionid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '1', '1');
INSERT INTO `role_permission` VALUES ('2', '2', '2');
INSERT INTO `role_permission` VALUES ('3', '3', '3');
INSERT INTO `role_permission` VALUES ('4', '4', '4');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tel` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'a', '1234', '110', '20');
INSERT INTO `user` VALUES ('2', 'b', '1234', '123', '23');
INSERT INTO `user` VALUES ('3', 'c', '1234', '111', '32');
INSERT INTO `user` VALUES ('4', 'd', '1234', '222', '33');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `urid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`urid`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '4');
INSERT INTO `user_role` VALUES ('2', '1', '1');
INSERT INTO `user_role` VALUES ('3', '1', '2');
INSERT INTO `user_role` VALUES ('4', '2', '1');
INSERT INTO `user_role` VALUES ('5', '1', '3');
INSERT INTO `user_role` VALUES ('7', '3', '2');
INSERT INTO `user_role` VALUES ('9', '4', '3');
