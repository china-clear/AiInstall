TYPE=VIEW
query=select `aivms`.`camera`.`id` AS `id`,`aivms`.`camera`.`status` AS `status`,`aivms`.`camera`.`code` AS `code`,`aivms`.`camera`.`name` AS `name`,`aivms`.`camera`.`description` AS `description`,`aivms`.`camera`.`creator_id` AS `creator_id`,`aivms`.`camera`.`creator_name` AS `creator_name`,`aivms`.`camera`.`creator_time` AS `creator_time`,`aivms`.`camera`.`updater_id` AS `updater_id`,`aivms`.`camera`.`updater_name` AS `updater_name`,`aivms`.`camera`.`updater_time` AS `updater_time`,`aivms`.`camera`.`type` AS `type`,`aivms`.`camera`.`purpose` AS `purpose`,`aivms`.`camera`.`ip` AS `ip`,`aivms`.`camera`.`port` AS `port`,`aivms`.`camera`.`department` AS `department`,`aivms`.`camera`.`position` AS `position`,`aivms`.`camera`.`user` AS `user`,`aivms`.`camera`.`password` AS `password`,`aivms`.`camera`.`stream_type` AS `stream_type`,`aivms`.`camera`.`is_ai` AS `is_ai`,`aivms`.`camera`.`ai_code` AS `ai_code`,`aivms`.`camera`.`ai_ip` AS `ai_ip`,`aivms`.`camera`.`ai_port` AS `ai_port`,`aivms`.`camera`.`ai_user` AS `ai_user`,`aivms`.`camera`.`ai_passwd` AS `ai_passwd`,`aivms`.`camera`.`url` AS `url`,`aivms`.`camera`.`uid` AS `uid`,`aivms`.`camera`.`x` AS `x`,`aivms`.`camera`.`y` AS `y`,`aivms`.`camera`.`is_voice` AS `is_voice`,`aivms`.`camera`.`maintain_time` AS `maintain_time`,`aivms`.`camera`.`maintain_cycle` AS `maintain_cycle`,`aivms`.`camera`.`area_list` AS `area_list` from `aivms`.`camera`
md5=503fd70e9ba3fcf14a91f81361a7d190
updatable=1
algorithm=0
definer_user=imvs
definer_host=localhost
suid=1
with_check_option=0
timestamp=2022-11-18 02:48:14
create-version=2
source=SELECT
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `aivms`.`camera`.`id` AS `id`,`aivms`.`camera`.`status` AS `status`,`aivms`.`camera`.`code` AS `code`,`aivms`.`camera`.`name` AS `name`,`aivms`.`camera`.`description` AS `description`,`aivms`.`camera`.`creator_id` AS `creator_id`,`aivms`.`camera`.`creator_name` AS `creator_name`,`aivms`.`camera`.`creator_time` AS `creator_time`,`aivms`.`camera`.`updater_id` AS `updater_id`,`aivms`.`camera`.`updater_name` AS `updater_name`,`aivms`.`camera`.`updater_time` AS `updater_time`,`aivms`.`camera`.`type` AS `type`,`aivms`.`camera`.`purpose` AS `purpose`,`aivms`.`camera`.`ip` AS `ip`,`aivms`.`camera`.`port` AS `port`,`aivms`.`camera`.`department` AS `department`,`aivms`.`camera`.`position` AS `position`,`aivms`.`camera`.`user` AS `user`,`aivms`.`camera`.`password` AS `password`,`aivms`.`camera`.`stream_type` AS `stream_type`,`aivms`.`camera`.`is_ai` AS `is_ai`,`aivms`.`camera`.`ai_code` AS `ai_code`,`aivms`.`camera`.`ai_ip` AS `ai_ip`,`aivms`.`camera`.`ai_port` AS `ai_port`,`aivms`.`camera`.`ai_user` AS `ai_user`,`aivms`.`camera`.`ai_passwd` AS `ai_passwd`,`aivms`.`camera`.`url` AS `url`,`aivms`.`camera`.`uid` AS `uid`,`aivms`.`camera`.`x` AS `x`,`aivms`.`camera`.`y` AS `y`,`aivms`.`camera`.`is_voice` AS `is_voice`,`aivms`.`camera`.`maintain_time` AS `maintain_time`,`aivms`.`camera`.`maintain_cycle` AS `maintain_cycle`,`aivms`.`camera`.`area_list` AS `area_list` from `aivms`.`camera`
mariadb-version=100134