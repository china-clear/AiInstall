TYPE=VIEW
query=select `b`.`name` AS `name`,`b`.`description` AS `description`,`b`.`ip` AS `ip`,`b`.`port` AS `port`,`b`.`department` AS `department`,`b`.`position` AS `position`,`b`.`user` AS `user`,`b`.`url` AS `url`,`b`.`x` AS `x`,`b`.`y` AS `y`,`b`.`purpose` AS `purpose`,`b`.`code` AS `code`,`b`.`is_voice` AS `is_voice`,`a`.`id` AS `id`,`a`.`status` AS `status`,`a`.`camera` AS `camera`,`a`.`ai_code` AS `ai_code`,`a`.`ai_name` AS `ai_name`,`a`.`ai_chanel` AS `ai_chanel`,`a`.`seq` AS `seq`,`a`.`type` AS `type`,`a`.`time` AS `time`,`a`.`message` AS `message`,`a`.`is_upload` AS `is_upload`,`a`.`upload_time` AS `upload_time`,`a`.`is_notice` AS `is_notice`,`a`.`notice_time` AS `notice_time`,`a`.`alarm_type` AS `alarm_type`,`a`.`start_time` AS `start_time`,`a`.`stop_time` AS `stop_time`,`a`.`image_id` AS `image_id`,`a`.`alarm_desc` AS `alarm_desc`,`a`.`alarm_grade` AS `alarm_grade`,`a`.`count` AS `count`,`a`.`boxes` AS `boxes`,`a`.`steps` AS `steps`,`a`.`zones` AS `zones`,`a`.`alarm_picture` AS `alarm_picture` from `aivms`.`camera` `b` join `aivms`.`real_alarm` `a` where (`a`.`camera` = `b`.`ip`)
md5=dbee0813f1e479d19e94f818dca56c85
updatable=1
algorithm=0
definer_user=imvs
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-10-13 02:25:32
create-version=2
source=SELECT\nB.name,\nB.description,\nB.ip,\nB.port,\nB.department,\nB.position,\nB.user,\nB.url,\nB.x,\nB.y,\nB.purpose,\nB.code,\nB.is_voice,\nA.id,\nA.status,\nA.camera,\nA.ai_code,\nA.ai_name,\nA.ai_chanel,\nA.seq,\nA.type,\nA.time,\nA.message,\nA.is_upload,\nA.upload_time,\nA.is_notice,\nA.notice_time,\nA.alarm_type,\nA.start_time,\nA.stop_time,\nA.image_id,\nA.alarm_desc,\nA.alarm_grade,\nA.count,\nA.boxes,\nA.steps,\nA.zones,\nA.alarm_picture\nFROM\ncamera AS B ,\nreal_alarm AS A\nWHERE\nA.camera = B.ip
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `b`.`name` AS `name`,`b`.`description` AS `description`,`b`.`ip` AS `ip`,`b`.`port` AS `port`,`b`.`department` AS `department`,`b`.`position` AS `position`,`b`.`user` AS `user`,`b`.`url` AS `url`,`b`.`x` AS `x`,`b`.`y` AS `y`,`b`.`purpose` AS `purpose`,`b`.`code` AS `code`,`b`.`is_voice` AS `is_voice`,`a`.`id` AS `id`,`a`.`status` AS `status`,`a`.`camera` AS `camera`,`a`.`ai_code` AS `ai_code`,`a`.`ai_name` AS `ai_name`,`a`.`ai_chanel` AS `ai_chanel`,`a`.`seq` AS `seq`,`a`.`type` AS `type`,`a`.`time` AS `time`,`a`.`message` AS `message`,`a`.`is_upload` AS `is_upload`,`a`.`upload_time` AS `upload_time`,`a`.`is_notice` AS `is_notice`,`a`.`notice_time` AS `notice_time`,`a`.`alarm_type` AS `alarm_type`,`a`.`start_time` AS `start_time`,`a`.`stop_time` AS `stop_time`,`a`.`image_id` AS `image_id`,`a`.`alarm_desc` AS `alarm_desc`,`a`.`alarm_grade` AS `alarm_grade`,`a`.`count` AS `count`,`a`.`boxes` AS `boxes`,`a`.`steps` AS `steps`,`a`.`zones` AS `zones`,`a`.`alarm_picture` AS `alarm_picture` from `aivms`.`camera` `b` join `aivms`.`real_alarm` `a` where (`a`.`camera` = `b`.`ip`)
mariadb-version=100134
