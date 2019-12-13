TRUNCATE TABLE ce_queue;
SET search_path = public;


COPY ce_queue (id,uuid,task_type,component_uuid,status,submitter_login,started_at,created_at,updated_at,worker_uuid,execution_count) FROM STDIN;
\.
