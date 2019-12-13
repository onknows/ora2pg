TRUNCATE TABLE analysis_properties;
SET search_path = public;


COPY analysis_properties (uuid,snapshot_uuid,kee,text_value,clob_value,is_empty,created_at) FROM STDIN;
\.
