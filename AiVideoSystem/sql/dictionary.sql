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

 Date: 10/04/2023 08:48:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'N', 'StreamType', 'RTSP', 'RTSP格式', 0, '');
INSERT INTO `dictionary` VALUES (2, 'N', 'StreamType', 'SDK', 'SDK播放', 1, '');
INSERT INTO `dictionary` VALUES (3, 'N', 'StreamType', 'ONVIF', 'Onvif播放', 2, NULL);
INSERT INTO `dictionary` VALUES (4, 'N', 'WorkDirection', '1', '机头在左', 0, NULL);
INSERT INTO `dictionary` VALUES (5, 'N', 'WorkDirection', '2', '机头在中', 1, NULL);
INSERT INTO `dictionary` VALUES (6, 'N', 'PositionType', 'Preset', '预置位方式', 0, NULL);
INSERT INTO `dictionary` VALUES (7, 'N', 'PositionType', 'Angle', '角度方式', 1, NULL);
INSERT INTO `dictionary` VALUES (8, 'N', 'CameraType', 'HIK', '海康摄像头', 0, NULL);
INSERT INTO `dictionary` VALUES (9, 'N', 'CameraType', 'ZA', '佐安摄像头', 1, NULL);
INSERT INTO `dictionary` VALUES (10, 'N', 'CameraType', 'IR', '红外双目摄像头', 2, NULL);
INSERT INTO `dictionary` VALUES (11, 'N', 'AlarmType', '所有报警', '所有报警', 0, NULL);
INSERT INTO `dictionary` VALUES (12, 'N', 'AlarmType', '护帮报警', '护帮报警', 1, NULL);
INSERT INTO `dictionary` VALUES (13, 'N', 'AlarmType', '入侵报警', '入侵报警', 2, NULL);
INSERT INTO `dictionary` VALUES (14, 'N', 'AlarmType', '安全帽报警', '安全帽报警', 3, NULL);
INSERT INTO `dictionary` VALUES (15, 'N', 'AlarmType', '工装报警', '工装报警', 4, NULL);
INSERT INTO `dictionary` VALUES (16, 'N', 'AlarmType', '堆煤报警', '堆煤报警', 5, NULL);
INSERT INTO `dictionary` VALUES (17, 'N', 'AlarmType', '大块煤报警', '大块煤报警', 6, NULL);
INSERT INTO `dictionary` VALUES (18, 'N', 'AlarmType', '皮带带人', '皮带带人', 7, NULL);
INSERT INTO `dictionary` VALUES (19, 'N', 'AlarmType', '人员离岗', '人员离岗', 8, NULL);
INSERT INTO `dictionary` VALUES (20, 'N', 'PTZSpeed', '1', '1级速度', 0, NULL);
INSERT INTO `dictionary` VALUES (21, 'N', 'PTZSpeed', '2', '2级速度', 1, NULL);
INSERT INTO `dictionary` VALUES (22, 'N', 'PTZSpeed', '3', '3级速度', 2, NULL);
INSERT INTO `dictionary` VALUES (23, 'N', 'PTZSpeed', '4', '4级速度', 3, NULL);
INSERT INTO `dictionary` VALUES (24, 'N', 'PTZSpeed', '5', '5级速度', 4, NULL);
INSERT INTO `dictionary` VALUES (25, 'N', 'PTZSpeed', '6', '6级速度', 5, NULL);
INSERT INTO `dictionary` VALUES (26, 'N', 'PTZSpeed', '7', '7级速度', 6, NULL);
INSERT INTO `dictionary` VALUES (27, 'N', 'PTZSpeed', '8', '8级速度', 7, NULL);
INSERT INTO `dictionary` VALUES (28, 'N', 'DeviceStatus', '正常', '正常', 0, NULL);
INSERT INTO `dictionary` VALUES (29, 'N', 'DeviceStatus', '报警', '报警', 1, NULL);
INSERT INTO `dictionary` VALUES (30, 'N', 'DeviceStatus', '维护', '维护', 2, NULL);
INSERT INTO `dictionary` VALUES (31, 'N', 'DeviceStatus', '停用', '停用', 3, NULL);
INSERT INTO `dictionary` VALUES (32, 'N', 'SecondScreen', 'HoldView', '顺槽/支架监控', 0, NULL);
INSERT INTO `dictionary` VALUES (33, 'N', 'SecondScreen', 'ControlView', '手动控制显示', 1, NULL);
INSERT INTO `dictionary` VALUES (34, 'N', 'SecondScreen', 'TraceView', '煤壁/跟机监控', 2, NULL);
INSERT INTO `dictionary` VALUES (35, 'N', 'MainScreen', 'MonitorView', '自定义智能监控', 0, NULL);
INSERT INTO `dictionary` VALUES (36, 'N', 'MainScreen', 'Montior4View', '四画面智能监控', 1, NULL);
INSERT INTO `dictionary` VALUES (37, 'N', 'MainScreen', 'Montior6View', '六画面智能监控', 2, NULL);
INSERT INTO `dictionary` VALUES (38, 'N', 'HoldInterval', '3', '摄像头间隔护帮数', 0, NULL);
INSERT INTO `dictionary` VALUES (39, 'N', 'HoldStart', '2', '摄像头开始护帮数', 0, NULL);
INSERT INTO `dictionary` VALUES (40, 'N', 'ServerIp', '', '服务器的IP', 0, NULL);
INSERT INTO `dictionary` VALUES (41, 'N', 'ServerPort', '8228', '服务器接收客户端的端口', 0, NULL);
INSERT INTO `dictionary` VALUES (42, 'N', 'ServerPositionPort', '8218', '服务器接收煤机位置的端口', 0, NULL);
INSERT INTO `dictionary` VALUES (43, 'N', 'CameraPurpose', 'Hold', '护帮用摄像头', 0, NULL);
INSERT INTO `dictionary` VALUES (44, 'N', 'CameraPurpose', 'Alarm', '报警用摄像头', 1, NULL);
INSERT INTO `dictionary` VALUES (45, '', '', '', '', 0, NULL);

SET FOREIGN_KEY_CHECKS = 1;
