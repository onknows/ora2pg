TRUNCATE TABLE webhook_deliveries;
SET search_path = public;


COPY webhook_deliveries (uuid,component_uuid,ce_task_uuid,name,url,success,http_status,duration_ms,payload,error_stacktrace,created_at,analysis_uuid) FROM STDIN;
\.
