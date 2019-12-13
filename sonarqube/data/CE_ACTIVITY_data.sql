TRUNCATE TABLE ce_activity;
SET search_path = public;


COPY ce_activity (id,uuid,task_type,component_uuid,status,is_last,is_last_key,submitter_login,submitted_at,started_at,executed_at,created_at,updated_at,execution_time_ms,analysis_uuid,error_message,error_stacktrace,worker_uuid,execution_count,error_type) FROM STDIN;
1	AW7-XaCMazWlGOSpVJps	REPORT	AW7-XZ77azWlGOSpVJpm	SUCCESS	1	REPORTAW7-XZ77azWlGOSpVJpm	\N	1576225579315	1576225580655	1576225585730	1576225585730	1576225585730	5075	AW7-XagXq8XrztPhiSTy	\N	\N	AW7-TnPiq8XrztPhiSTu	1	\N
2	AW7-XaNsazWlGOSpVJpz	REPORT	AW7-XaKIazWlGOSpVJpt	SUCCESS	1	REPORTAW7-XaKIazWlGOSpVJpt	\N	1576225579930	1576225585776	1576225587317	1576225587317	1576225587317	1541	AW7-XbrGq8XrztPhiSUp	\N	\N	AW7-TnPiq8XrztPhiSTu	1	\N
\.
