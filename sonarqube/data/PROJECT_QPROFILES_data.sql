TRUNCATE TABLE project_qprofiles;
SET search_path = public;


COPY project_qprofiles (id,project_uuid,profile_key) FROM STDIN;
\.
