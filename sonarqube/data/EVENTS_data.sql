TRUNCATE TABLE events;
SET search_path = public;


COPY events (id,name,category,description,event_data,event_date,created_at,component_uuid,analysis_uuid,uuid) FROM STDIN;
1	2.1.0.BUILD-SNAPSHOT	Version	\N	\N	1576225568515	1576225582919	AW7-XZ77azWlGOSpVJpm	AW7-XagXq8XrztPhiSTy	AW7-Xa9Hq8XrztPhiSUl
2	1.0-SNAPSHOT	Version	\N	\N	1576225570526	1576225586769	AW7-XaKIazWlGOSpVJpt	AW7-XbrGq8XrztPhiSUp	AW7-Xb5Rq8XrztPhiSU_
\.
