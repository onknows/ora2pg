TRUNCATE TABLE internal_properties;
SET search_path = public;


COPY internal_properties (kee,is_empty,text_value,clob_value,created_at) FROM STDIN;
server.idChecksum	0	5c7969536b4a1b20ccb2d9e090d527b36a80e64c896d7d81cfe4993f27d255c3	\N	1576224515685
organization.default	0	AW7-TUv6azWlGOSpVIzd	\N	1576224508932
\.
