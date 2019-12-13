TRUNCATE TABLE user_roles;
SET search_path = public;


COPY user_roles (id,user_id,resource_id,role,organization_uuid) FROM STDIN;
\.
