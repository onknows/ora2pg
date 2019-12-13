TRUNCATE TABLE organization_members;
SET search_path = public;


COPY organization_members (organization_uuid,user_id) FROM STDIN;
AW7-TUv6azWlGOSpVIzd	1
AW7-TUv6azWlGOSpVIzd	2
\.
