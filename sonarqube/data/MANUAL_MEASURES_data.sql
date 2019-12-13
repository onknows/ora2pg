TRUNCATE TABLE manual_measures;
SET search_path = public;


COPY manual_measures (id,metric_id,value,text_value,user_login,description,created_at,updated_at,component_uuid) FROM STDIN;
\.
