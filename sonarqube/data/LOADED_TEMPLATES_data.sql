TRUNCATE TABLE loaded_templates;
SET search_path = public;


COPY loaded_templates (id,kee,template_type) FROM STDIN;
1	SonarQube way	QUALITY_GATE
2	DisplayLogOnDeprecatedProjects	ONE_SHOT_TASK
\.
