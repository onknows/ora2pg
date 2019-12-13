TRUNCATE TABLE perm_tpl_characteristics;
SET search_path = public;


COPY perm_tpl_characteristics (id,template_id,permission_key,with_project_creator,created_at,updated_at) FROM STDIN;
\.
