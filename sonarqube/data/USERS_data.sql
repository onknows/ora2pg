TRUNCATE TABLE users;
SET search_path = public;


COPY users (id,login,name,email,crypted_password,salt,active,created_at,updated_at,scm_accounts,external_identity,external_identity_provider,user_local,is_root,onboarded) FROM STDIN;
2	akaufman	Andy Kaufman	andy.kaufman@cicd.tech	\N	\N	1	1576224779649	1576224779649	\N	akaufman	sonarqube	0	0	1
1	admin	Administrator	\N	a373a0e667abb2604c1fd571eb4ad47fe8cc0878	48bc4b0d93179b5103fd3885ea9119498e9d161b	1	1576224505340	1576224515221	\N	admin	sonarqube	1	0	0
\.
