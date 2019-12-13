TRUNCATE TABLE perm_templates_groups;
SET search_path = public;


COPY perm_templates_groups (id,group_id,template_id,permission_reference,created_at,updated_at) FROM STDIN;
1	1	1	admin	2019-12-13 00:09:37.540000	2019-12-13 00:09:37.540000
2	1	1	issueadmin	2019-12-13 00:09:37.547000	2019-12-13 00:09:37.547000
3	2	1	user	2019-12-13 00:09:37.554000	2019-12-13 00:09:37.554000
4	2	1	codeviewer	2019-12-13 00:09:37.555000	2019-12-13 00:09:37.555000
\.
