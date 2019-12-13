TRUNCATE TABLE organizations;
SET search_path = public;


COPY organizations (uuid,kee,name,description,url,avatar_url,created_at,updated_at,default_perm_template_project,default_perm_template_view,guarded,user_id,default_group_id,new_project_private) FROM STDIN;
AW7-TUv6azWlGOSpVIzd	default-organization	Default Organization	\N	\N	\N	1576224508922	1576224577557	default_template	\N	1	\N	2	0
\.
