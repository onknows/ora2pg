TRUNCATE TABLE quality_gates;
SET search_path = public;


COPY quality_gates (id,name,created_at,updated_at) FROM STDIN;
1	SonarQube way	2019-12-13 00:08:39.546000	\N
\.
