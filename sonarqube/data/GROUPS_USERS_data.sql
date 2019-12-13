TRUNCATE TABLE groups_users;
SET search_path = public;


COPY groups_users (user_id,group_id) FROM STDIN;
2	2
2	1
1	1
1	2
\.
