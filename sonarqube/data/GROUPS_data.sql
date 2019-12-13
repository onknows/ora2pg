TRUNCATE TABLE groups;
SET search_path = public;


COPY groups (id,name,description,created_at,updated_at,organization_uuid) FROM STDIN;
1	sonar-administrators	System administrators	2019-12-13 00:08:25.306000	2019-12-13 00:08:29.035000	AW7-TUv6azWlGOSpVIzd
2	sonar-users	Any new users created will automatically join this group	2019-12-13 00:08:25.306000	2019-12-13 00:08:29.035000	AW7-TUv6azWlGOSpVIzd
\.
