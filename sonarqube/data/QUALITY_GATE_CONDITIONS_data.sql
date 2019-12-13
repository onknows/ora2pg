TRUNCATE TABLE quality_gate_conditions;
SET search_path = public;


COPY quality_gate_conditions (id,qgate_id,metric_id,period,operator,value_error,value_warning,created_at,updated_at) FROM STDIN;
1	1	134	1	GT	1	\N	2019-12-13 00:08:39.563000	\N
2	1	130	1	GT	1	\N	2019-12-13 00:08:39.574000	\N
3	1	122	1	GT	1	\N	2019-12-13 00:08:39.578000	\N
4	1	38	1	LT	80	\N	2019-12-13 00:08:39.582000	\N
5	1	94	1	GT	3	\N	2019-12-13 00:08:39.586000	\N
\.
