TRUNCATE TABLE permission_templates;
SET search_path = public;


COPY permission_templates (id,name,kee,description,created_at,updated_at,key_pattern,organization_uuid) FROM STDIN;
1	Default template	default_template	This permission template will be used as default when no other permission configuration is available	2019-12-13 00:09:37.521000	2019-12-13 00:09:37.521000	\N	AW7-TUv6azWlGOSpVIzd
\.
