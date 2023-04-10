TYPE=VIEW
query=select `aivms`.`camera`.`ip` AS `ip`,`aivms`.`camera`.`name` AS `name`,`aivms`.`camera`.`port` AS `port`,`aivms`.`camera`.`user` AS `user`,`aivms`.`camera`.`password` AS `password`,`aivms`.`camera`.`stream_type` AS `stream_type`,`aivms`.`camera`.`onvif_chn` AS `onvif_chn`,`aivms`.`camera`.`url` AS `url`,`aivms`.`camera`.`chanel` AS `chanel`,`aivms`.`camera`.`purpose` AS `purpose`,`aivms`.`camera`.`description` AS `description`,`aivms`.`camera`.`type` AS `type`,`aivms`.`camera`.`department` AS `department`,`aivms`.`camera`.`position` AS `position`,`aivms`.`camera`.`x` AS `x`,`aivms`.`camera`.`y` AS `y`,`aivms`.`hold`.`hold` AS `hold`,`aivms`.`hold`.`code` AS `code`,`aivms`.`hold`.`host_code` AS `host_code`,`aivms`.`hold`.`host_ip` AS `host_ip`,`aivms`.`hold`.`host_port` AS `host_port`,`aivms`.`hold`.`host_user` AS `host_user`,`aivms`.`hold`.`host_passwd` AS `host_passwd`,`aivms`.`hold`.`host_chn` AS `host_chn`,`aivms`.`hold`.`host_uid` AS `host_uid` from `aivms`.`camera` join `aivms`.`hold` where (`aivms`.`camera`.`code` = `aivms`.`hold`.`code`)
md5=ba0dc26c6fec31602305fcca5d9b8349
updatable=1
algorithm=0
definer_user=imvs
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-11-19 02:28:31
create-version=2
source=SELECT\ncamera.ip,\ncamera.name,\ncamera.port,\ncamera.user,\ncamera.password,\ncamera.stream_type,\ncamera.onvif_chn,\ncamera.url,\ncamera.chanel,\ncamera.purpose,\ncamera.description,\ncamera.type,\ncamera.department,\ncamera.position,\ncamera.x,\ncamera.y,\nhold.hold,\nhold.code,\nhold.host_code,\nhold.host_ip,\nhold.host_port,\nhold.host_user,\nhold.host_passwd,\nhold.host_chn,\nhold.host_uid\nFROM\ncamera ,\nhold\nWHERE\ncamera.code = hold.code
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `aivms`.`camera`.`ip` AS `ip`,`aivms`.`camera`.`name` AS `name`,`aivms`.`camera`.`port` AS `port`,`aivms`.`camera`.`user` AS `user`,`aivms`.`camera`.`password` AS `password`,`aivms`.`camera`.`stream_type` AS `stream_type`,`aivms`.`camera`.`onvif_chn` AS `onvif_chn`,`aivms`.`camera`.`url` AS `url`,`aivms`.`camera`.`chanel` AS `chanel`,`aivms`.`camera`.`purpose` AS `purpose`,`aivms`.`camera`.`description` AS `description`,`aivms`.`camera`.`type` AS `type`,`aivms`.`camera`.`department` AS `department`,`aivms`.`camera`.`position` AS `position`,`aivms`.`camera`.`x` AS `x`,`aivms`.`camera`.`y` AS `y`,`aivms`.`hold`.`hold` AS `hold`,`aivms`.`hold`.`code` AS `code`,`aivms`.`hold`.`host_code` AS `host_code`,`aivms`.`hold`.`host_ip` AS `host_ip`,`aivms`.`hold`.`host_port` AS `host_port`,`aivms`.`hold`.`host_user` AS `host_user`,`aivms`.`hold`.`host_passwd` AS `host_passwd`,`aivms`.`hold`.`host_chn` AS `host_chn`,`aivms`.`hold`.`host_uid` AS `host_uid` from `aivms`.`camera` join `aivms`.`hold` where (`aivms`.`camera`.`code` = `aivms`.`hold`.`code`)
mariadb-version=100134
