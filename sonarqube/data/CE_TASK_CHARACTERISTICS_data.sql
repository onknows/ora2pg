TRUNCATE TABLE ce_task_characteristics;
SET search_path = public;


COPY ce_task_characteristics (uuid,task_uuid,kee,text_value) FROM STDIN;
\.
