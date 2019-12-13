TRUNCATE TABLE ce_task_input;
SET search_path = public;


COPY ce_task_input (task_uuid,input_data,created_at,updated_at) FROM STDIN;
\.
