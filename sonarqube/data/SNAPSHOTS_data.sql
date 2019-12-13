TRUNCATE TABLE snapshots;
SET search_path = public;


COPY snapshots (id,status,islast,version,purge_status,period1_mode,period1_param,period2_mode,period2_param,period3_mode,period3_param,period4_mode,period4_param,period5_mode,period5_param,created_at,build_date,period1_date,period2_date,period3_date,period4_date,period5_date,component_uuid,uuid) FROM STDIN;
1	P	1	2.1.0.BUILD-SNAPSHOT	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1576225568515	1576225582456	\N	\N	\N	\N	\N	AW7-XZ77azWlGOSpVJpm	AW7-XagXq8XrztPhiSTy
2	P	1	1.0-SNAPSHOT	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1576225570526	1576225586498	\N	\N	\N	\N	\N	AW7-XaKIazWlGOSpVJpt	AW7-XbrGq8XrztPhiSUp
\.
