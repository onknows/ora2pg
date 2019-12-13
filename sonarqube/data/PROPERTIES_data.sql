TRUNCATE TABLE properties;
SET search_path = public;


COPY properties (id,prop_key,resource_id,user_id,is_empty,text_value,clob_value,created_at) FROM STDIN;
1	sonar.core.startTime	\N	\N	0	2019-12-13T00:08:22-0800	\N	1576224515590
2	sonar.core.id	\N	\N	0	AW7-TWZZazWlGOSpVIzf	\N	1576224515673
3	sonar.qualitygate	\N	\N	0	1	\N	1576224519591
\.
