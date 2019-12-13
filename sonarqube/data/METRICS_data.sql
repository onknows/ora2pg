TRUNCATE TABLE metrics;
SET search_path = public;


COPY metrics (id,name,description,direction,domain,short_name,qualitative,val_type,user_managed,enabled,worst_value,best_value,optimized_best_value,hidden,delete_historical_data,decimal_scale) FROM STDIN;
126	effort_to_reach_maintainability_rating_a	Effort to reach maintainability rating A	-1	Maintainability	Effort to Reach Maintainability Rating A	1	WORK_DUR	0	1	\N	0	1	0	0	\N
127	reliability_remediation_effort	Reliability Remediation Effort	-1	Reliability	Reliability Remediation Effort	1	WORK_DUR	0	1	\N	0	1	0	0	\N
128	new_reliability_remediation_effort	Reliability remediation effort on new code	-1	Reliability	Reliability Remediation Effort on New Code	1	WORK_DUR	0	1	\N	0	1	0	1	\N
129	reliability_rating	Reliability rating	-1	Reliability	Reliability Rating	1	RATING	0	1	5	1	0	0	0	\N
130	new_reliability_rating	Reliability rating on new code	-1	Reliability	Reliability Rating on New Code	1	RATING	0	1	5	1	1	0	1	\N
131	security_remediation_effort	Security remediation effort	-1	Security	Security Remediation Effort	1	WORK_DUR	0	1	\N	0	1	0	0	\N
132	new_security_remediation_effort	Security remediation effort on new code	-1	Security	Security Remediation Effort on New Code	1	WORK_DUR	0	1	\N	0	1	0	1	\N
133	security_rating	Security rating	-1	Security	Security Rating	1	RATING	0	1	5	1	0	0	0	\N
134	new_security_rating	Security rating on new code	-1	Security	Security Rating on New Code	1	RATING	0	1	5	1	1	0	1	\N
135	ncloc_data	\N	0	Size	ncloc_data	0	DATA	0	1	\N	\N	0	1	0	\N
136	comment_lines_data	\N	0	Size	comment_lines_data	0	DATA	0	1	\N	\N	0	1	0	\N
137	executable_lines_data	\N	0	Coverage	executable_lines_data	0	DATA	0	1	\N	\N	0	1	0	\N
138	alert_status	The project status with regard to its quality gate.	1	Releasability	Quality Gate Status	1	LEVEL	0	1	\N	\N	0	0	0	\N
139	quality_gate_details	The project detailed status with regard to its quality gate	0	General	Quality Gate Details	0	DATA	0	1	\N	\N	0	0	0	\N
140	quality_profiles	Details of quality profiles used during analysis	0	General	Profiles	0	DATA	0	1	\N	\N	0	1	0	\N
141	last_commit_date	\N	0	SCM	Date of Last Commit	0	MILLISEC	0	1	\N	\N	0	1	0	\N
142	burned_budget	\N	0	Management	Burned budget	0	FLOAT	1	1	\N	\N	0	0	0	1
143	business_value	\N	1	Management	Business value	1	FLOAT	1	1	\N	\N	0	0	0	1
144	team_size	\N	0	Management	Team size	0	INT	1	1	\N	\N	0	0	0	\N
1	lines	Lines	-1	Size	Lines	0	INT	0	1	\N	\N	0	0	0	\N
2	generated_lines	Number of generated lines	-1	Size	Generated Lines	0	INT	0	1	\N	0	1	0	0	\N
3	ncloc	Non commenting lines of code	-1	Size	Lines of Code	0	INT	0	1	\N	\N	0	0	0	\N
4	new_lines	New lines	-1	Size	New Lines	0	INT	0	1	\N	\N	0	0	1	\N
5	ncloc_language_distribution	Non Commenting Lines of Code Distributed By Language	-1	Size	Lines of Code Per Language	0	DATA	0	1	\N	\N	0	0	0	\N
6	generated_ncloc	Generated non Commenting Lines of Code	-1	Size	Generated Lines of Code	0	INT	0	1	\N	0	1	0	0	\N
7	classes	Classes	-1	Size	Classes	0	INT	0	1	\N	\N	0	0	0	\N
8	files	Number of files	-1	Size	Files	0	INT	0	1	\N	\N	0	0	0	\N
9	directories	Directories	-1	Size	Directories	0	INT	0	1	\N	\N	0	0	0	\N
10	functions	Functions	-1	Size	Functions	0	INT	0	1	\N	\N	0	0	0	\N
11	accessors	Accessors	-1	Size	Accessors	0	INT	0	1	\N	\N	0	1	0	\N
12	statements	Number of statements	-1	Size	Statements	0	INT	0	1	\N	\N	0	0	0	\N
13	public_api	Public API	-1	Documentation	Public API	0	INT	0	1	\N	\N	0	1	0	\N
14	projects	Number of projects	-1	Size	Projects	0	INT	0	1	\N	\N	0	0	0	\N
15	comment_lines	Number of comment lines	1	Size	Comment Lines	0	INT	0	1	\N	\N	0	0	0	\N
16	comment_lines_density	Comments balanced by ncloc + comment lines	1	Size	Comments (%)	1	PERCENT	0	1	0	100	0	0	0	1
17	public_documented_api_density	Public documented classes and functions balanced by ncloc	1	Documentation	Public Documented API (%)	1	PERCENT	0	1	0	100	1	1	0	1
18	public_undocumented_api	Public undocumented classes, functions and variables	-1	Documentation	Public Undocumented API	1	INT	0	1	\N	0	1	1	0	\N
19	commented_out_code_lines	Commented lines of code	-1	Documentation	Commented-Out LOC	1	INT	0	1	\N	0	1	1	0	\N
20	complexity	Cyclomatic complexity	-1	Complexity	Cyclomatic Complexity	0	INT	0	1	\N	\N	0	0	0	\N
21	file_complexity	Complexity average by file	-1	Complexity	Complexity / File	1	FLOAT	0	1	\N	\N	0	1	0	1
22	complexity_in_classes	Cyclomatic complexity in classes	-1	Complexity	Complexity in Classes	0	INT	0	1	\N	\N	0	1	1	\N
23	class_complexity	Complexity average by class	-1	Complexity	Complexity / Class	1	FLOAT	0	1	\N	\N	0	1	0	1
24	complexity_in_functions	Cyclomatic complexity in functions	-1	Complexity	Complexity in Functions	0	INT	0	1	\N	\N	0	1	1	\N
25	function_complexity	Complexity average by function	-1	Complexity	Complexity / Function	1	FLOAT	0	1	\N	\N	0	1	0	1
26	class_complexity_distribution	Classes distribution /complexity	0	Complexity	Class Distribution / Complexity	1	DISTRIB	0	1	\N	\N	0	1	0	\N
27	function_complexity_distribution	Functions distribution /complexity	0	Complexity	Function Distribution / Complexity	1	DISTRIB	0	1	\N	\N	0	1	0	\N
28	file_complexity_distribution	Files distribution /complexity	0	Complexity	File Distribution / Complexity	1	DISTRIB	0	1	\N	\N	0	1	0	\N
29	cognitive_complexity	Cognitive complexity	-1	Complexity	Cognitive Complexity	0	INT	0	1	\N	0	1	0	0	\N
30	tests	Number of unit tests	-1	Coverage	Unit Tests	0	INT	0	1	\N	\N	0	0	0	\N
31	test_execution_time	Execution duration of unit tests	-1	Coverage	Unit Test Duration	0	MILLISEC	0	1	\N	\N	0	0	0	\N
32	test_errors	Number of unit test errors	-1	Coverage	Unit Test Errors	1	INT	0	1	\N	0	1	0	0	\N
33	skipped_tests	Number of skipped unit tests	-1	Coverage	Skipped Unit Tests	1	INT	0	1	\N	0	1	0	0	\N
34	test_failures	Number of unit test failures	-1	Coverage	Unit Test Failures	1	INT	0	1	\N	0	1	0	0	\N
35	test_success_density	Density of successful unit tests	1	Coverage	Unit Test Success (%)	1	PERCENT	0	1	0	100	1	0	0	1
36	test_data	Unit tests details	-1	Coverage	Unit Test Details	0	DATA	0	1	\N	\N	0	0	0	\N
37	coverage	Coverage by tests	1	Coverage	Coverage	1	PERCENT	0	1	0	100	0	0	0	1
38	new_coverage	Coverage of new/changed code	1	Coverage	Coverage on New Code	1	PERCENT	0	1	0	100	0	0	1	1
39	lines_to_cover	Lines to cover	-1	Coverage	Lines to Cover	0	INT	0	1	\N	\N	0	0	0	\N
40	new_lines_to_cover	Lines to cover on new code	-1	Coverage	Lines to Cover on New Code	0	INT	0	1	\N	\N	0	0	1	\N
41	uncovered_lines	Uncovered lines	-1	Coverage	Uncovered Lines	0	INT	0	1	\N	0	0	0	0	\N
42	new_uncovered_lines	Uncovered lines on new code	-1	Coverage	Uncovered Lines on New Code	0	INT	0	1	\N	0	0	0	1	\N
43	line_coverage	Line coverage	1	Coverage	Line Coverage	1	PERCENT	0	1	0	100	0	0	0	1
44	new_line_coverage	Line coverage of added/changed code	1	Coverage	Line Coverage on New Code	1	PERCENT	0	1	0	100	0	0	1	1
45	coverage_line_hits_data	Coverage hits by line	0	Coverage	Coverage Hits by Line	0	DATA	0	1	\N	\N	0	0	1	\N
46	conditions_to_cover	Conditions to cover	0	Coverage	Conditions to Cover	0	INT	0	1	\N	\N	0	0	0	\N
47	new_conditions_to_cover	Conditions to cover on new code	0	Coverage	Conditions to Cover on New Code	0	INT	0	1	\N	\N	0	0	1	\N
48	uncovered_conditions	Uncovered conditions	-1	Coverage	Uncovered Conditions	0	INT	0	1	\N	0	0	0	0	\N
49	new_uncovered_conditions	Uncovered conditions on new code	-1	Coverage	Uncovered Conditions on New Code	0	INT	0	1	\N	0	0	0	1	\N
50	branch_coverage	Condition coverage	1	Coverage	Condition Coverage	1	PERCENT	0	1	0	100	0	0	0	1
51	new_branch_coverage	Condition coverage of new/changed code	1	Coverage	Condition Coverage on New Code	1	PERCENT	0	1	0	100	0	0	1	1
52	conditions_by_line	Conditions by line	0	Coverage	Conditions by Line	0	DATA	0	1	\N	\N	0	0	1	\N
53	covered_conditions_by_line	Covered conditions by line	0	Coverage	Covered Conditions by Line	0	DATA	0	1	\N	\N	0	0	1	\N
54	it_coverage	Integration tests coverage	1	Coverage	IT Coverage	1	PERCENT	0	1	0	100	0	1	0	1
55	new_it_coverage	Integration tests coverage of new/changed code	1	Coverage	Coverage by IT on New Code	1	PERCENT	0	1	0	100	0	1	1	1
56	it_lines_to_cover	Lines to cover by Integration Tests	1	Coverage	IT Lines to Cover	0	INT	0	1	\N	\N	0	1	0	\N
57	new_it_lines_to_cover	Lines to cover on new code by integration tests	-1	Coverage	Lines to Cover by IT on New Code	0	INT	0	1	\N	\N	0	1	1	\N
58	it_uncovered_lines	Uncovered lines by integration tests	-1	Coverage	IT Uncovered Lines	0	INT	0	1	\N	\N	0	1	0	\N
59	new_it_uncovered_lines	New lines that are not covered by integration tests	-1	Coverage	Uncovered Lines by IT on New Code	0	INT	0	1	\N	0	0	1	1	\N
60	it_line_coverage	Line coverage by integration tests	1	Coverage	IT Line Coverage	1	PERCENT	0	1	0	100	0	1	0	1
61	new_it_line_coverage	Integration tests line coverage of added/changed code	1	Coverage	Line Coverage by IT on New Code	1	PERCENT	0	1	0	100	0	1	1	1
62	it_coverage_line_hits_data	Coverage hits by line by integration tests	0	Coverage	IT Coverage Hits by Line	0	DATA	0	1	\N	\N	0	1	1	\N
63	it_conditions_to_cover	Integration Tests conditions to cover	1	Coverage	IT Branches to Cover	0	INT	0	1	\N	\N	0	1	0	\N
64	new_it_conditions_to_cover	Branches to cover by Integration Tests on New Code	0	Coverage	Branches to Cover by IT on New Code	0	INT	0	1	\N	\N	0	1	1	\N
65	it_uncovered_conditions	Uncovered conditions by integration tests	-1	Coverage	IT Uncovered Conditions	0	INT	0	1	\N	\N	0	1	0	\N
66	new_it_uncovered_conditions	New conditions that are not covered by integration tests	-1	Coverage	Uncovered Conditions by IT on New Code	0	INT	0	1	\N	0	0	1	1	\N
67	it_branch_coverage	Condition coverage by integration tests	1	Coverage	IT Condition Coverage	1	PERCENT	0	1	0	100	0	1	0	1
68	new_it_branch_coverage	Integration tests condition coverage of new/changed code	1	Coverage	Condition Coverage by IT on New Code	1	PERCENT	0	1	0	100	0	1	1	1
69	it_conditions_by_line	IT conditions by line	0	Coverage	IT Conditions by Line	0	DATA	0	1	\N	\N	0	0	1	\N
70	it_covered_conditions_by_line	IT covered conditions by line	0	Coverage	IT Covered Conditions by Line	0	DATA	0	1	\N	\N	0	0	1	\N
71	overall_coverage	Overall test coverage	1	Coverage	Overall Coverage	1	PERCENT	0	1	0	100	0	1	0	1
72	new_overall_coverage	Overall coverage of new/changed code	1	Coverage	Overall Coverage on New Code	1	PERCENT	0	1	0	100	0	1	1	1
73	overall_lines_to_cover	Overall lines to cover by all tests	1	Coverage	Overall Lines to Cover	0	INT	0	1	\N	\N	0	1	0	\N
74	new_overall_lines_to_cover	New lines to cover by all tests	-1	Coverage	Overall Lines to Cover on New Code	0	INT	0	1	\N	\N	0	1	1	\N
75	overall_uncovered_lines	Uncovered lines by all tests	-1	Coverage	Overall Uncovered Lines	0	INT	0	1	\N	\N	0	1	0	\N
76	new_overall_uncovered_lines	New lines that are not covered by any tests	-1	Coverage	Overall Uncovered Lines on New Code	0	INT	0	1	\N	0	0	1	1	\N
77	overall_line_coverage	Line coverage by all tests	1	Coverage	Overall Line Coverage	1	PERCENT	0	1	0	100	0	1	0	1
78	new_overall_line_coverage	Line coverage of added/changed code by all tests	1	Coverage	Overall Line Coverage on New Code	1	PERCENT	0	1	0	100	0	1	1	1
79	overall_coverage_line_hits_data	Coverage hits by all tests and by line	0	Coverage	Overall Coverage Hits by Line	0	DATA	0	1	\N	\N	0	0	1	\N
80	overall_conditions_to_cover	Branches to cover by all tests	1	Coverage	Overall Branches to Cover	0	INT	0	1	\N	\N	0	1	0	\N
81	new_overall_conditions_to_cover	New branches to cover by all tests	0	Coverage	Overall Branches to Cover on New Code	0	INT	0	1	\N	\N	0	1	1	\N
82	overall_uncovered_conditions	Uncovered conditions by all tests	-1	Coverage	Overall Uncovered Conditions	0	INT	0	1	\N	\N	0	1	0	\N
83	new_overall_uncovered_conditions	New conditions that are not covered by any test	-1	Coverage	Overall Uncovered Conditions on New Code	0	INT	0	1	\N	0	0	1	1	\N
84	overall_branch_coverage	Condition coverage by all tests	1	Coverage	Overall Condition Coverage	1	PERCENT	0	1	0	100	0	1	0	1
85	new_overall_branch_coverage	Condition coverage of new/changed code by all tests	1	Coverage	Overall Condition Coverage on New Code	1	PERCENT	0	1	0	100	0	1	1	1
86	overall_conditions_by_line	Overall conditions by all tests and by line	0	Coverage	Overall Conditions by Line	0	DATA	0	1	\N	\N	0	0	1	\N
87	overall_covered_conditions_by_line	Overall covered conditions by all tests and by line	0	Coverage	Overall Covered Conditions by Line	0	DATA	0	1	\N	\N	0	0	1	\N
88	duplicated_lines	Duplicated lines	-1	Duplications	Duplicated Lines	1	INT	0	1	\N	0	1	0	0	\N
89	new_duplicated_lines	Duplicated Lines on New Code	-1	Duplications	Duplicated Lines on New Code	1	INT	0	1	\N	0	0	0	1	\N
90	duplicated_blocks	Duplicated blocks	-1	Duplications	Duplicated Blocks	1	INT	0	1	\N	0	1	0	0	\N
91	new_duplicated_blocks	Duplicated blocks on new code	-1	Duplications	Duplicated Blocks on New Code	1	INT	0	1	\N	0	0	0	1	\N
92	duplicated_files	Duplicated files	-1	Duplications	Duplicated Files	1	INT	0	1	\N	0	1	0	0	\N
93	duplicated_lines_density	Duplicated lines balanced by statements	-1	Duplications	Duplicated Lines (%)	1	PERCENT	0	1	100	0	1	0	0	1
94	new_duplicated_lines_density	Duplicated lines on new code balanced by statements	-1	Duplications	Duplicated Lines on New Code (%)	1	PERCENT	0	1	100	0	0	0	1	1
95	duplications_data	Duplications details	0	Duplications	Duplication Details	0	DATA	0	1	\N	\N	0	0	1	\N
96	violations	Issues	-1	Issues	Issues	1	INT	0	1	\N	0	1	0	0	\N
97	blocker_violations	Blocker issues	-1	Issues	Blocker Issues	1	INT	0	1	\N	0	1	0	0	\N
98	critical_violations	Critical issues	-1	Issues	Critical Issues	1	INT	0	1	\N	0	1	0	0	\N
99	major_violations	Major issues	-1	Issues	Major Issues	1	INT	0	1	\N	0	1	0	0	\N
100	minor_violations	Minor issues	-1	Issues	Minor Issues	1	INT	0	1	\N	0	1	0	0	\N
101	info_violations	Info issues	-1	Issues	Info Issues	1	INT	0	1	\N	0	1	0	0	\N
102	new_violations	New issues	-1	Issues	New Issues	1	INT	0	1	\N	0	1	0	1	\N
103	new_blocker_violations	New Blocker issues	-1	Issues	New Blocker Issues	1	INT	0	1	\N	0	1	0	1	\N
104	new_critical_violations	New Critical issues	-1	Issues	New Critical Issues	1	INT	0	1	\N	0	1	0	1	\N
105	new_major_violations	New Major issues	-1	Issues	New Major Issues	1	INT	0	1	\N	0	1	0	1	\N
106	new_minor_violations	New Minor issues	-1	Issues	New Minor Issues	1	INT	0	1	\N	0	1	0	1	\N
107	new_info_violations	New Info issues	-1	Issues	New Info Issues	1	INT	0	1	\N	0	1	0	1	\N
108	false_positive_issues	False positive issues	-1	Issues	False Positive Issues	0	INT	0	1	\N	0	1	0	0	\N
109	wont_fix_issues	Won't fix issues	-1	Issues	Won't Fix Issues	0	INT	0	1	\N	0	1	0	0	\N
110	open_issues	Open issues	-1	Issues	Open Issues	0	INT	0	1	\N	0	1	0	0	\N
111	reopened_issues	Reopened issues	-1	Issues	Reopened Issues	1	INT	0	1	\N	0	1	0	0	\N
112	confirmed_issues	Confirmed issues	-1	Issues	Confirmed Issues	1	INT	0	1	\N	0	1	0	0	\N
113	code_smells	Code Smells	-1	Maintainability	Code Smells	0	INT	0	1	\N	0	1	0	0	\N
114	new_code_smells	New Code Smells	-1	Maintainability	New Code Smells	1	INT	0	1	\N	0	1	0	1	\N
115	bugs	Bugs	-1	Reliability	Bugs	0	INT	0	1	\N	0	1	0	0	\N
116	new_bugs	New Bugs	-1	Reliability	New Bugs	1	INT	0	1	\N	0	1	0	1	\N
117	vulnerabilities	Vulnerabilities	-1	Security	Vulnerabilities	0	INT	0	1	\N	0	1	0	0	\N
118	new_vulnerabilities	New Vulnerabilities	-1	Security	New Vulnerabilities	1	INT	0	1	\N	0	1	0	1	\N
119	sqale_index	Total effort (in days) to fix all the issues on the component and therefore to comply to all the requirements.	-1	Maintainability	Technical Debt	1	WORK_DUR	0	1	\N	0	1	0	0	\N
120	new_technical_debt	Added technical debt	-1	Maintainability	Added Technical Debt	1	WORK_DUR	0	1	\N	0	1	0	1	\N
121	sqale_rating	A-to-E rating based on the technical debt ratio	-1	Maintainability	Maintainability Rating	1	RATING	0	1	5	1	0	0	0	\N
122	new_maintainability_rating	Maintainability rating on new code	-1	Maintainability	Maintainability Rating on New Code	1	RATING	0	1	5	1	1	0	1	\N
123	development_cost	SQALE development cost	-1	Maintainability	SQALE Development Cost	1	STRING	0	1	\N	0	1	1	0	\N
124	sqale_debt_ratio	Ratio of the actual technical debt compared to the estimated cost to develop the whole source code from scratch	-1	Maintainability	Technical Debt Ratio	1	PERCENT	0	1	100	0	1	0	0	1
125	new_sqale_debt_ratio	Technical Debt Ratio of new/changed code.	-1	Maintainability	Technical Debt Ratio on New Code	1	PERCENT	0	1	100	0	1	0	0	1
\.
