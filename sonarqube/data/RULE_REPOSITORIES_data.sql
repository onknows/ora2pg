TRUNCATE TABLE rule_repositories;
SET search_path = public;


COPY rule_repositories (kee,language,name,created_at) FROM STDIN;
python	py	SonarAnalyzer	1576224561103
common-py	py	Common Python	1576224561103
common-js	js	Common JavaScript	1576224561103
common-flex	flex	Common Flex	1576224561103
common-java	java	Common Java	1576224561103
common-json	json	Common JSON	1576224561103
javascript	js	SonarAnalyzer	1576224561103
common-ts	ts	Common TypeScript	1576224561103
Pylint	py	Pylint	1576224561103
flex	flex	SonarQube	1576224561103
xml	xml	SonarAnalyzer	1576224561103
csharpsquid	cs	SonarAnalyzer	1576224561103
json	json	SonarQube	1576224561103
php	php	SonarAnalyzer	1576224561103
squid	java	SonarAnalyzer	1576224561103
typescript	ts	SonarAnalyzer	1576224561103
common-cs	cs	Common C#	1576224561103
common-xml	xml	Common XML	1576224561103
common-php	php	Common PHP	1576224561103
\.
