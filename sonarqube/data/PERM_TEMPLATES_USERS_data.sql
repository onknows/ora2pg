TRUNCATE TABLE perm_templates_users;
SET search_path = public;


COPY perm_templates_users (id,user_id,template_id,permission_reference,created_at,updated_at) FROM STDIN;
\.
