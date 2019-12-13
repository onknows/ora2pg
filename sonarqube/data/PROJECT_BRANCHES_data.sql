TRUNCATE TABLE project_branches;
SET search_path = public;


COPY project_branches (uuid,project_uuid,kee,branch_type,merge_branch_uuid,created_at,updated_at) FROM STDIN;
AW7-XZ77azWlGOSpVJpm	AW7-XZ77azWlGOSpVJpm	master	LONG	\N	1576225578842	1576225582304
AW7-XaKIazWlGOSpVJpt	AW7-XaKIazWlGOSpVJpt	master	LONG	\N	1576225579701	1576225586416
\.
