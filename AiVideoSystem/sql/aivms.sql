/*
 Navicat Premium Data Transfer

 Source Server         : ThinkPad
 Source Server Type    : MySQL
 Source Server Version : 100134
 Source Host           : localhost:3306
 Source Schema         : aivms

 Target Server Type    : MySQL
 Target Server Version : 100134
 File Encoding         : 65001

 Date: 10/04/2023 08:48:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for aiboard
-- ----------------------------
DROP TABLE IF EXISTS `aiboard`;
CREATE TABLE `aiboard`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分析主机（板）的名称',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '分析主机（板）的编码',
  `brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '品牌,制造商',
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分析主机（板）的描述',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分析主机（板）的状态',
  `address` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分析主机（板）的IP',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'IP地址，同address',
  `port` int(11) DEFAULT NULL COMMENT '分析主机（板）的数据端口',
  `http_port` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分析主机（板）的网页配置端口',
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分析主机（板）的登陆用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '分析主机（板）的密码',
  `chanel_count` int(11) DEFAULT NULL COMMENT '分析主机（板）的可用通道数',
  `chn_info` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '通道信息表',
  `chanels` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '分析主机的通道号与摄像头对应表',
  `chanel_line` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '通道号与在线状态表',
  `chanel_enable` text CHARACTER SET utf8 COLLATE utf8_bin COMMENT '通道号与使能状态表',
  PRIMARY KEY (`id`, `code`, `ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for camera
-- ----------------------------
DROP TABLE IF EXISTS `camera`;
CREATE TABLE `camera`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摄像头状态',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摄像头编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摄像头名称',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头描述',
  `creator_id` int(11) NOT NULL COMMENT '创建者id',
  `creator_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者名字',
  `creator_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_id` int(11) DEFAULT NULL COMMENT '更新者id',
  `updater_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新者名字',
  `updater_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头类型',
  `purpose` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头功能',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头的IP地址（IPV4）',
  `port` int(11) DEFAULT NULL COMMENT '摄像头的端口号',
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头所属部门',
  `position` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头的物理位置',
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '登陆用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '登陆密码',
  `stream_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '流接入类型：SDK、RTSP、RTMP、HLS',
  `onvif_chn` int(2) DEFAULT NULL COMMENT 'ONVIF播放的通道号',
  `is_ai` int(1) DEFAULT NULL COMMENT '是否AI摄像头，0－不是，1－是',
  `ai_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI板的编码',
  `ai_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI的IP地址',
  `ai_port` int(11) DEFAULT NULL COMMENT 'AI的端口号',
  `ai_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI用户名',
  `ai_passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI密码',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '登陆URL',
  `chanel` int(1) DEFAULT NULL COMMENT '视频通道',
  `chn` int(1) NOT NULL DEFAULT 0 COMMENT '通道号（0~7）',
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'UID(通道chn_id)',
  `x` int(11) DEFAULT NULL COMMENT '物理坐标X',
  `y` int(11) DEFAULT NULL COMMENT '物理坐标Y',
  `is_voice` int(1) DEFAULT NULL COMMENT '是否支持语音',
  `maintain_time` datetime(0) DEFAULT NULL COMMENT '上次检修日期',
  `maintain_cycle` int(11) DEFAULT NULL COMMENT '检修周期，单位为天',
  `area_list` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '区域列表',
  PRIMARY KEY (`id`, `code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for camera2
-- ----------------------------
DROP TABLE IF EXISTS `camera2`;
CREATE TABLE `camera2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摄像头状态',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摄像头编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摄像头名称',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头描述',
  `creator_id` int(11) NOT NULL COMMENT '创建者id',
  `creator_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者名字',
  `creator_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_id` int(11) DEFAULT NULL COMMENT '更新者id',
  `updater_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新者名字',
  `updater_time` datetime(0) DEFAULT NULL COMMENT '更新时间',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头类型',
  `purpose` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头功能',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头的IP地址（IPV4）',
  `port` int(11) DEFAULT NULL COMMENT '摄像头的端口号',
  `department` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头所属部门',
  `position` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头的物理位置',
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '登陆用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '登陆密码',
  `stream_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '流接入类型：SDK、RTSP、RTMP、HLS',
  `onvif_chn` int(2) DEFAULT NULL COMMENT 'ONVIF播放的通道号',
  `is_ai` int(1) DEFAULT NULL COMMENT '是否AI摄像头，0－不是，1－是',
  `ai_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI板的编码',
  `ai_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI的IP地址',
  `ai_port` int(11) DEFAULT NULL COMMENT 'AI的端口号',
  `ai_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI用户名',
  `ai_passwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI密码',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '登陆URL',
  `chanel` int(1) DEFAULT NULL COMMENT '视频通道',
  `chn` int(1) NOT NULL DEFAULT 0 COMMENT '通道号（0~7）',
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'UID(通道chn_id)',
  `x` int(11) DEFAULT NULL COMMENT '物理坐标X',
  `y` int(11) DEFAULT NULL COMMENT '物理坐标Y',
  `is_voice` int(1) DEFAULT NULL COMMENT '是否支持语音',
  `maintain_time` datetime(0) DEFAULT NULL COMMENT '上次检修日期',
  `maintain_cycle` int(11) DEFAULT NULL COMMENT '检修周期，单位为天',
  `area_list` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '区域列表',
  PRIMARY KEY (`id`, `code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for coal_weight
-- ----------------------------
DROP TABLE IF EXISTS `coal_weight`;
CREATE TABLE `coal_weight`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `camera` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '摄像头ID号',
  `ai_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI板编号',
  `ai_chanel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '通道号',
  `seq` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `time` datetime(3) DEFAULT NULL COMMENT '采集时间',
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `per_volume` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '实时煤量(0%~100%)',
  `volume` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '精确煤量(吨)',
  `speed` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '皮带速度',
  `volume_ts` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '当前煤量时间戳(ms)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4090 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '部门名称',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '部门编号',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '状态：0－删除、1－正常',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Canceled` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否弃用',
  `FieldName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `FieldValue` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '值',
  `FieldText` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `FieldSort` int(11) NOT NULL COMMENT '排序',
  `FieldType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for hold
-- ----------------------------
DROP TABLE IF EXISTS `hold`;
CREATE TABLE `hold`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `hold` int(11) NOT NULL COMMENT '护帮号',
  `code` int(1) DEFAULT NULL COMMENT '摄像头ID号',
  `ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '摄像头IP',
  `host_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `host_ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT '分析装置IP',
  `host_port` int(11) NOT NULL,
  `host_user` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `host_passwd` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `host_chn` int(2) DEFAULT NULL COMMENT '通道号',
  `host_uid` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operator` int(100) NOT NULL,
  `position` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `module` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `host` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime(0) NOT NULL,
  `operator_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 315 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `position` int(11) NOT NULL COMMENT '煤机位置',
  `left1` int(11) NOT NULL COMMENT '左边支架',
  `left2` int(11) NOT NULL,
  `right1` int(11) NOT NULL COMMENT '右边支架',
  `right2` int(11) NOT NULL,
  `idle1` int(11) NOT NULL COMMENT '不再显示的摄像头支架号，用于恢复原位',
  `idle2` int(255) NOT NULL,
  `trace` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '跟机支架号{\"左1,左2,左3,左4\",\"右1,右2,右3,右4\"}',
  `chute` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '顺槽支架号{\"左1,左2,左3,左4\",\"右1,右2,右3,右4\"}',
  `preset` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '跟机预置位{\"左1,左2,左3,左4\",\"右1,右2,右3,右4\"}+顺槽预置位{\"左1,左2,左3,左4\",\"右1,右2,右3,右4\"}',
  `angle` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '跟机角度{\"左1,左2,左3,左4\",\"右1,右2,右3,右4\"}+顺槽角度{\"左1,左2,左3,左4\",\"右1,右2,右3,右4\"}'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for real_alarm
-- ----------------------------
DROP TABLE IF EXISTS `real_alarm`;
CREATE TABLE `real_alarm`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '状态：1正常、0删除',
  `camera` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摄像头ID号',
  `ai_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI板编号',
  `ai_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI板名称',
  `ai_chanel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '通道号',
  `seq` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `time` datetime(0) NOT NULL COMMENT '采集时间',
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `is_upload` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否上传',
  `upload_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
  `is_notice` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否通知上位机',
  `notice_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '通知时间',
  `alarm_picture` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '报警图片名称',
  `alarm_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '报警类型',
  `start_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '开始时间',
  `stop_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '结束时间',
  `image_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '报警图片ID',
  `alarm_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警报描述',
  `alarm_grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警报等级',
  `count` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '越界的人/物的数量',
  `boxes` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '报警框',
  `steps` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '0：第一次报警/巡检开始\r\n1：连续追加报警/巡检中\r\n2：报警结束/巡检结束',
  `zones` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警戒区域',
  `lines` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警戒线',
  PRIMARY KEY (`id`, `time`, `camera`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for real_alarm_history
-- ----------------------------
DROP TABLE IF EXISTS `real_alarm_history`;
CREATE TABLE `real_alarm_history`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '状态：1正常、0删除',
  `camera` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '摄像头ID号',
  `ai_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI板编号',
  `ai_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'AI板名称',
  `ai_chanel` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '通道号',
  `seq` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '序列号',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '类型',
  `time` datetime(0) NOT NULL COMMENT '采集时间',
  `message` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `is_upload` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否上传',
  `upload_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
  `is_notice` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否通知上位机',
  `notice_time` datetime(0) DEFAULT CURRENT_TIMESTAMP COMMENT '通知时间',
  `alarm_picture` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '报警图片名称',
  `alarm_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '报警类型',
  `start_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '开始时间',
  `stop_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '结束时间',
  `image_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '报警图片ID',
  `alarm_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警报描述',
  `alarm_grade` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警报等级',
  `count` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '越界的人/物的数量',
  `boxes` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '报警框',
  `steps` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '0：第一次报警/巡检开始\r\n1：连续追加报警/巡检中\r\n2：报警结束/巡检结束',
  `zones` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警戒区域',
  `lines` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '警戒线',
  PRIMARY KEY (`id`, `time`, `camera`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telephone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `time` datetime(0) DEFAULT NULL,
  `is_receive` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- View structure for v_camera
-- ----------------------------
DROP VIEW IF EXISTS `v_camera`;
CREATE ALGORITHM = UNDEFINED DEFINER = `imvs`@`localhost` SQL SECURITY DEFINER VIEW `v_camera` AS SELECT
camera.id,
camera.status,
camera.code,
camera.name,
camera.description,
camera.creator_id,
camera.creator_name,
camera.creator_time,
camera.updater_id,
camera.updater_name,
camera.updater_time,
camera.type,
camera.purpose,
camera.ip,
camera.port,
camera.department,
camera.position,
camera.user,
camera.password,
camera.stream_type,
camera.is_ai,
camera.ai_code,
camera.ai_ip,
camera.ai_port,
camera.ai_user,
camera.ai_passwd,
camera.url,
camera.uid,
camera.x,
camera.y,
camera.is_voice,
camera.maintain_time,
camera.maintain_cycle,
camera.area_list
FROM
camera ; ;

-- ----------------------------
-- View structure for v_coal_weight
-- ----------------------------
DROP VIEW IF EXISTS `v_coal_weight`;
CREATE ALGORITHM = UNDEFINED DEFINER = `imvs`@`localhost` SQL SECURITY DEFINER VIEW `v_coal_weight` AS SELECT
A.id,
A.camera,
A.ai_code,
A.ai_chanel,
A.time,
A.message,
A.per_volume,
A.volume,
A.speed,
A.volume_ts,
B.code,
B.name,
B.purpose,
B.ip,
B.port,
B.department,
B.position,
B.user,
B.url,
A.seq
FROM
coal_weight AS A ,
camera AS B
WHERE
A.camera = B.ip ;

-- ----------------------------
-- View structure for v_hold
-- ----------------------------
DROP VIEW IF EXISTS `v_hold`;
CREATE ALGORITHM = UNDEFINED DEFINER = `imvs`@`localhost` SQL SECURITY DEFINER VIEW `v_hold` AS SELECT
camera.ip,
camera.name,
camera.port,
camera.user,
camera.password,
camera.stream_type,
camera.onvif_chn,
camera.url,
camera.chanel,
camera.purpose,
camera.description,
camera.type,
camera.department,
camera.position,
camera.x,
camera.y,
hold.hold,
hold.code,
hold.host_code,
hold.host_ip,
hold.host_port,
hold.host_user,
hold.host_passwd,
hold.host_chn,
hold.host_uid
FROM
camera ,
hold
WHERE
camera.code = hold.code ;

-- ----------------------------
-- View structure for v_real_alarm
-- ----------------------------
DROP VIEW IF EXISTS `v_real_alarm`;
CREATE ALGORITHM = UNDEFINED DEFINER = `imvs`@`localhost` SQL SECURITY DEFINER VIEW `v_real_alarm` AS SELECT
B.name,
B.description,
B.ip,
B.port,
B.department,
B.position,
B.user,
B.url,
B.x,
B.y,
B.purpose,
B.code,
B.is_voice,
A.id,
A.status,
A.camera,
A.ai_code,
A.ai_name,
A.ai_chanel,
A.seq,
A.type,
A.time,
A.message,
A.is_upload,
A.upload_time,
A.is_notice,
A.notice_time,
A.alarm_type,
A.start_time,
A.stop_time,
A.image_id,
A.alarm_desc,
A.alarm_grade,
A.count,
A.boxes,
A.steps,
A.zones,
A.alarm_picture
FROM
camera AS B ,
real_alarm AS A
WHERE
A.camera = B.ip ;

-- ----------------------------
-- Procedure structure for BackupAlarm
-- ----------------------------
DROP PROCEDURE IF EXISTS `BackupAlarm`;
delimiter ;;
CREATE DEFINER=`imvs`@`localhost` PROCEDURE `BackupAlarm`(IN `days` int)
BEGIN
INSERT INTO real_alarm_history SELECT * from real_alarm where DATE_SUB(CURDATE(), INTERVAL days DAY) > date(time);
DELETE FROM real_alarm where DATE_SUB(CURDATE(), INTERVAL days DAY) > date(time);

END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
