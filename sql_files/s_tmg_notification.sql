DROP TABLE IF EXISTS default.s_tmg_notification;
CREATE TABLE default.s_tmg_notification(
  common__timestamp bigint,
  common__subject string,
  network_user_id string,
  user_id string,
  common__network string,
  network string,
  event_type string,
  event_status string,
  notification_type string,
  notification_name string,
  from_user_id string,
  from_user_network string,
  service_name string,
  device_type string
)
USING PARQUET
PARTITIONED BY (_processing_timestamp string)
LOCATION
  '/mnt/tmg-stage-datalake/topics/s_tmg_notification/';