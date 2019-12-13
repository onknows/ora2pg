TRUNCATE TABLE group_roles;
SET search_path = public;


COPY group_roles (id,group_id,resource_id,role,organization_uuid) FROM STDIN;
1	1	\N	admin	AW7-TUv6azWlGOSpVIzd
2	1	\N	profileadmin	AW7-TUv6azWlGOSpVIzd
3	1	\N	gateadmin	AW7-TUv6azWlGOSpVIzd
22	1	1	issueadmin	AW7-TUv6azWlGOSpVIzd
5	1	\N	provisioning	AW7-TUv6azWlGOSpVIzd
6	\N	\N	scan	AW7-TUv6azWlGOSpVIzd
7	\N	\N	provisioning	AW7-TUv6azWlGOSpVIzd
21	1	1	admin	AW7-TUv6azWlGOSpVIzd
23	1	2	admin	AW7-TUv6azWlGOSpVIzd
24	1	2	issueadmin	AW7-TUv6azWlGOSpVIzd
\.
