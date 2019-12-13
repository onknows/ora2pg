TRUNCATE TABLE rules_parameters;
SET search_path = public;


COPY rules_parameters (id,rule_id,name,description,param_type,default_value) FROM STDIN;
159	958	foreach_space	In foreach statement there should be one space before and after "as" keyword and "=>" operator	BOOLEAN	true
160	958	no_space	There should not be any space after the opening parenthesis and before the closing parenthesis	BOOLEAN	true
161	958	function_calls_arguments_indentation	Arguments in method/function calls should be correctly indented	BOOLEAN	true
162	958	closing_curly_brace	Close curly brace and the next "else", "catch" and "finally" keywords should be located on the same line	BOOLEAN	true
163	958	function_declaration_arguments_indentation	Arguments in method/function declarations should be correctly indented	BOOLEAN	true
164	958	use_blank_line	"use" declarations should be followed by a blank line	BOOLEAN	true
165	958	one_space_for	There should be one space after each ";" in "for" statement	BOOLEAN	true
166	958	use_after_namespace	"use" declarations should be placed after "namespace" declarations	BOOLEAN	true
167	958	one_space_before	There should be exactly one space between control structure keyword and opening parenthesis or curly brace	BOOLEAN	true
168	972	excludedResourceTypes	Comma separated list of the excluded resource types, using fully qualified names (example: "org.apache.hadoop.fs.FileSystem")	STRING	\N
169	987	format	Regular expression used to check the constant names against.	STRING	^[A-Z][A-Z0-9]*(_[A-Z0-9]+)*$
170	989	legalTrailingCommentPattern	Description Pattern for text of trailing comments that are allowed. By default, comments containing only one word.	STRING	^\\s*+[^\\s]++$
171	1006	Exclude	Comma separated list of Sun packages to be ignored by this rule. Example: com.sun.jna,sun.misc	STRING	\N
172	1007	threshold	Number of times a literal must be duplicated to trigger an issue	INTEGER	3
173	1012	threshold	Maximum allowed number of ``<forward/>`` mappings in an ``<action>``	INTEGER	4
174	1029	className	Name of the class whose constructor is forbidden. This parameter is mandatory, if absent the rule is disabled.	STRING	\N
175	1029	argumentTypes	Comma-delimited list of argument types, E.G. java.lang.String, int[], int	STRING	\N
176	1029	allOverloads	Set to true to flag all overloads regardless of parameter type	BOOLEAN	false
177	1039	Authorized numbers	Comma separated list of authorized numbers. Example: -1,0,1,2	STRING	-1,0,1
178	1044	threshold	The maximum number of static imports allowed	INTEGER	4
179	1059	max	Maximum authorized lines in a method	INTEGER	75
180	1069	Threshold	The maximum authorized complexity.	INTEGER	10
181	1070	regularExpression	The regular expression	STRING	\N
182	1070	message	The issue message	STRING	The regular expression matches this comment.
183	1075	max	Maximum allowed control flow statement nesting depth.	INTEGER	3
184	1099	countNonpublicFields	Whether or not to include non-public fields in the count	BOOLEAN	true
185	1099	maximumFieldThreshold	The maximum number of fields	INTEGER	20
186	1109	countNonpublicMethods	Whether or not to include non-public methods in the count.	BOOLEAN	true
187	1109	maximumMethodThreshold	The maximum number of methods authorized in a class.	INTEGER	35
188	1113	indentationLevel	Number of white-spaces of an indent.	INTEGER	2
189	1115	max	Maximum number of classes a single class is allowed to depend upon	INTEGER	20
190	1122	max	Maximum depth of the inheritance tree. (Number)	INTEGER	5
191	1122	filteredClasses	Classes to be filtered out of the count of inheritance. Ex : java.fwk.AbstractFwkClass, java.fwkPackage.*	STRING	\N
192	1129	format	Regular expression used to check the logger names against.	STRING	LOG(?:GER)?
193	1133	fromClasses	Optional. If this property is not defined, all classes should adhere to this constraint. Ex : **.web.**	STRING	\N
194	1133	toClasses	Mandatory. Ex : java.util.Vector, java.util.Hashtable, java.util.Enumeration	STRING	\N
195	1157	headerFormat	Expected copyright and license header	TEXT	\N
196	1157	isRegularExpression	Whether the headerFormat is a regular expression	BOOLEAN	false
197	1180	Max	The maximum number of lines allowed	INTEGER	25
198	1198	listOfWarnings	Comma separated list of warnings that can be suppressed (example: unchecked, cast, boxing). An empty list means that no warning can be suppressed.	STRING	\N
199	1217	checkOnlyLong	Set to "true" to ignore "float" and "double" declarations.	BOOLEAN	false
200	1220	methodName	Name of the forbidden method	STRING	\N
201	1220	className	Name of the class whose method is forbidden	STRING	\N
202	1220	argumentTypes	Comma-delimited list of argument types, E.G. java.lang.String, int[], int	STRING	\N
203	1220	allOverloads	Set to true to flag all overloads regardless of parameter type	BOOLEAN	false
204	1225	exceptions	List of exceptions which should not be checked	STRING	java.lang.InterruptedException, java.lang.NumberFormatException, java.lang.NoSuchMethodException, java.text.ParseException, java.net.MalformedURLException, java.time.format.DateTimeParseException
205	1234	format	Regular expression used to check the class names against.	STRING	^[A-Z][a-zA-Z0-9]*$
206	1235	format	Regular expression used to check the method names against.	STRING	^[a-z][a-zA-Z0-9]*$
207	1237	max	Maximum number of lines	INTEGER	5
208	1244	format	Regular expression against which test class names are checked.	STRING	^((Test|IT)[a-zA-Z0-9]+|[A-Z][a-zA-Z0-9]*(Test|IT|TestCase|ITCase))$
209	1250	format	Regular expression the test method names are checked against.	STRING	^test[A-Z][a-zA-Z0-9]*$
210	1258	format	Regular expression used to check the field names against.	STRING	^[a-z][a-zA-Z0-9]*$
211	1259	forClasses	Pattern of classes which should adhere to this constraint. Ex : **.api.**	STRING	**.api.**
212	1259	exclusion	Pattern of classes which are excluded from adhering to this constraint.	STRING	**.internal.**
213	1271	max	Maximum number of allowed conditional operators in an expression	INTEGER	3
214	1272	Max	Maximum allowed lines in an anonymous class/lambda	INTEGER	20
215	1285	max	Maximum complexity allowed.	INTEGER	200
216	1307	regex	The regular expression the "artifactId" should match	STRING	[a-z][a-z-0-9]+
217	1315	factoryMethod	the fully-qualified name of a factory method that returns an open resource, with or without a parameter list. E.G. "org.assoc.res.ResourceFactory$Innerclass#create" or "org.assoc.res.SpecialResourceFactory#create(java.lang.String, int)"	STRING	\N
218	1315	closingMethod	the fully-qualified name of the method which closes the open resource, with or without a parameter list. E.G. "org.assoc.res.MyResource#closeMe" or "org.assoc.res.MySpecialResource#closeMe(java.lang.String, int)"	STRING	\N
219	1315	constructor	the fully-qualified name of a constructor that creates an open resource. An optional signature may be specified after the class name. E.G. "org.assoc.res.MyResource" or "org.assoc.res.MySpecialResource(java.lang.String, int)"	STRING	\N
220	1315	openingMethod	the fully-qualified name of a method that opens an existing resource, with or without a parameter list. E.G. "org.assoc.res.ResourceFactory#create" or "org.assoc.res.SpecialResourceFactory #create(java.lang.String, int)"	STRING	\N
221	1322	maximum	Maximum number of case	INTEGER	30
222	1329	dependencyName	Pattern describing forbidden dependencies group and artifact ids. E.G. '``*:.*log4j``' or '``x.y:*``'	STRING	\N
223	1329	version	Dependency version pattern or dash-delimited range. Leave blank for all versions. E.G. '``1.3.*``', '``1.0-3.1``', '``1.0-*``' or '``*-3.1``'	STRING	\N
224	1331	regex	The regular expression the "groupId" should match	STRING	(com|org)(\\.[a-z][a-z-0-9]*)+
225	1346	Threshold	The maximum authorized complexity.	INTEGER	15
226	1352	max	Maximum authorized number of parameters	INTEGER	7
227	1352	constructorMax	Maximum authorized number of parameters for a constructor	INTEGER	7
228	1356	max	Maximum allowed return statements per method	INTEGER	3
229	1364	maximumLineLength	The maximum authorized line length.	INTEGER	120
230	1371	Max	Maximum authorized lines in a file.	INTEGER	750
231	1374	className	Fully qualified name of the forbidden class. Use a regex to forbid a package.	STRING	\N
232	1376	format	Regular expression used to check the package names against.	STRING	^[a-z]+(\\.[a-z][a-z0-9]*)*$
233	1383	format	Regular expression used to check the abstract class names against.	STRING	^Abstract[A-Z][a-zA-Z0-9]*$
234	1385	format	Regular expression used to check the names against.	STRING	^[a-z][a-zA-Z0-9]*$
235	1389	format	Regular expression used to check the type parameter names against.	STRING	^[A-Z][0-9]?$
236	1392	format	Regular expression used to check the interface names against.	STRING	^[A-Z][a-zA-Z0-9]*$
237	1396	format	Regular expression used to check the field names against.	STRING	^[a-z][a-zA-Z0-9]*$
238	1400	format	Regular expression used to check the constant names against.	STRING	^[A-Z][A-Z0-9]*(_[A-Z0-9]+)*$
239	1416	singleQuotes	Set to true to require single quotes, false for double quotes.	BOOLEAN	true
240	1452	Threshold	The maximum authorized complexity.	INTEGER	10
241	1460	Max	Maximum authorized lines in a file.	INTEGER	1000
242	1462	maximumLineLength	The maximum authorized line length.	INTEGER	180
243	1470	headerFormat	Expected copyright and license header (without comment symbols). E.g. set 'COPYRIGHT' to match header '/*COPYRIGHT*/'. Regular expressions are supported.	STRING	\N
244	1476	minimumBranchCoverageRatio	\N	FLOAT	65
245	1477	minimumLineCoverageRatio	\N	FLOAT	65
246	1478	minimumCommentDensity	\N	FLOAT	25
247	1482	minimumBranchCoverageRatio	\N	FLOAT	65
248	1483	minimumLineCoverageRatio	\N	FLOAT	65
249	1484	minimumCommentDensity	\N	FLOAT	25
250	1488	minimumBranchCoverageRatio	\N	FLOAT	65
251	1489	minimumLineCoverageRatio	\N	FLOAT	65
252	1490	minimumCommentDensity	\N	FLOAT	25
1	1	legalTrailingCommentPattern	Pattern for text of trailing comments that are allowed. By default, comments containing only one word.	STRING	^#\\s*+[^\\s]++$
2	8	format	Regular expression used to check the method names against.	STRING	^[a-z_][a-z0-9_]{2,}$
3	9	format	Regular expression used to check the class names against.	STRING	^[A-Z_][a-zA-Z0-9]+$
4	10	maximumFileComplexityThreshold	The maximum authorized complexity in file	INTEGER	200
5	17	pattern	Add a citation of the person who can best explain this comment.	STRING	[ ]*\\([ _a-zA-Z0-9@.]+\\)
6	18	regularExpression	The regular expression	STRING	\N
7	18	message	The issue message	STRING	The regular expression matches this comment
8	20	maximumFunctionComplexityThreshold	The maximum authorized complexity in function	INTEGER	15
9	24	max	Maximum allowed "if", "for", "while", "try" and "with" statements nesting depth	INTEGER	4
10	28	threshold	The maximum authorized complexity.	INTEGER	15
11	30	format	Regular expression used to check the names against.	STRING	^[_a-z][a-z0-9_]*$
12	32	format	Regular expression used to check the field names against.	STRING	^[_a-z][_a-z0-9]*$
13	34	maximumClassComplexityThreshold	Maximum complexity allowed.	INTEGER	200
14	40	max	Maximum allowed return statements per function	INTEGER	3
15	42	format	Regular expression used to check the function names against.	STRING	^[a-z_][a-z0-9_]{2,}$
16	44	message	The violation message	STRING	The XPath expression matches this piece of code
17	44	xpathQuery	The XPath query	STRING	\N
18	46	max	Maximum authorized number of parameters	INTEGER	7
19	47	maximum	Maximum authorized lines in a file	INTEGER	1000
20	48	format	Regular expression used to check the module names against.	STRING	(([a-z_][a-z0-9_]*)|([A-Z][a-zA-Z0-9]+))$
21	50	maximumLineLength	The maximum authorized line length	INTEGER	120
22	55	minimumBranchCoverageRatio	\N	FLOAT	65
23	56	minimumLineCoverageRatio	\N	FLOAT	65
24	57	minimumCommentDensity	\N	FLOAT	25
25	61	minimumBranchCoverageRatio	\N	FLOAT	65
26	62	minimumLineCoverageRatio	\N	FLOAT	65
27	63	minimumCommentDensity	\N	FLOAT	25
28	67	minimumBranchCoverageRatio	\N	FLOAT	65
29	68	minimumLineCoverageRatio	\N	FLOAT	65
30	69	minimumCommentDensity	\N	FLOAT	25
31	73	minimumBranchCoverageRatio	\N	FLOAT	65
32	74	minimumLineCoverageRatio	\N	FLOAT	65
33	75	minimumCommentDensity	\N	FLOAT	25
34	79	minimumBranchCoverageRatio	\N	FLOAT	65
35	80	minimumLineCoverageRatio	\N	FLOAT	65
36	81	minimumCommentDensity	\N	FLOAT	25
37	86	max	Maximum authorized lines in a function	INTEGER	200
38	91	maximumNestingLevel	Maximum allowed "if/for/while/switch/try" statements nesting depth	INTEGER	3
39	111	regularExpression	The regular expression	STRING	\N
40	111	message	The issue message	STRING	The regular expression matches this comment.
41	114	maximumFunctionComplexityThreshold	The maximum authorized complexity in function	INTEGER	10
42	120	legalCommentPattern	Pattern for text of trailing comments that are allowed.	STRING	^//\\s*+[^\\s]++$
43	122	threshold	Number of allowed repetition before triggering an issue	INTEGER	2
44	136	format	Regular expression used to check the variable names against	STRING	^\\$[a-z][a-zA-Z0-9]*$
45	147	max	Maximum number of allowed conditional operators in an expression	INTEGER	3
46	150	maximumFunctionParameters	The maximum authorized number of parameters	INTEGER	7
47	152	body_braces	True to require curly braces around function body. False to forbid them for single-return bodies.	BOOLEAN	false
48	152	parameter_parens	True to require parentheses around parameters. False to forbid them for single parameter.	BOOLEAN	false
49	180	headerFormat	Expected copyright and license header	TEXT	\N
50	180	isRegularExpression	Whether the headerFormat is a regular expression	BOOLEAN	false
51	193	format	Regular expression used to check the function names against.	STRING	^[_a-z][a-zA-Z0-9]*$
52	202	domainsToIgnore	Comma-delimited list of domains to ignore. Regexes may be used, e.g. (.*\\.)?example.com,foo.org	STRING	\N
53	226	threshold	The maximum authorized complexity.	INTEGER	15
54	232	considerJSDoc	Consider only functions with @constructor tag as constructor functions	BOOLEAN	false
55	245	maximum	Maximum authorized lines in a file.	INTEGER	1000
56	253	maximumLineLength	The maximum authorized line length.	INTEGER	180
57	268	minimumBranchCoverageRatio	\N	FLOAT	65
58	269	minimumLineCoverageRatio	\N	FLOAT	65
59	270	minimumCommentDensity	\N	FLOAT	25
60	454	max	Maximum authorized lines in a function	INTEGER	100
61	458	countNonpublicMethods	Whether or not to include non-public methods in the count	BOOLEAN	true
62	458	maximumFunctionThreshold	The maximum number of methods	INTEGER	20
63	459	format	Regular expression used to check the function names against	STRING	^[a-z][a-zA-Z0-9]*$
64	460	format	Regular expression used to check the class names against	STRING	^[A-Z][a-zA-Z0-9]*$
65	468	max	Maximum number of lines	INTEGER	5
66	473	regularExpression	The regular expression	STRING	\N
67	473	message	The issue message	STRING	The regular expression matches this comment.
68	478	maximumFunctionComplexityThreshold	The maximum authorized complexity.	INTEGER	10
69	483	max	Maximum allowed control flow statement nesting depth.	INTEGER	3
70	486	format	Regular expression used to check the logger names against.	STRING	LOG(?:GER)?
71	490	format	Regular expression used to check the names against.	STRING	^[_a-z][a-zA-Z0-9]*$
72	491	format	Regular expression used to check the constant names against	STRING	^[A-Z][A-Z0-9]*(_[A-Z0-9]+)*$
73	492	format	Regular expression used to check the field names against	STRING	^[_a-z][a-zA-Z0-9]*$
74	493	maximumClassComplexityThreshold	Maximum complexity allowed.	INTEGER	80
75	495	countNonpublicFields	Whether or not to include non-public fields in the count	BOOLEAN	true
76	495	maximumFieldThreshold	The maximum number of fields	INTEGER	20
77	500	max	Maximum allowed return statements per function	INTEGER	3
78	503	format	Regular expression used to check the package names against	STRING	^[a-z]+(\\.[a-z][a-z0-9]*)*$
79	516	message	The issue message	STRING	The XPath expression matches this piece of code
80	516	xpathQuery	The XPath query	TEXT	\N
81	518	max	Maximum authorized number of parameters	INTEGER	7
82	521	maximumLineLength	The maximum authorized line length.	INTEGER	80
83	523	headerFormat	Expected copyright and license header	TEXT	\N
84	523	isRegularExpression	Whether the headerFormat is a regular expression	BOOLEAN	false
85	524	asdoc_methods	Public methods should be documented	BOOLEAN	true
86	524	asdoc_classes	Public classes should be documented	BOOLEAN	true
87	524	asdoc_method_return	All return type of public methods should be documented	BOOLEAN	true
88	524	asdoc_method_param	All parameters of public methods should be documented	BOOLEAN	true
89	524	asdoc_properties	Public properties should be documented	BOOLEAN	true
90	528	tabSize	Equivalent number of spaces of a tabulation	INTEGER	2
91	528	indentSize	Number of white-spaces of an indent. If this property is not set, we just check that the code is indented.	INTEGER	2
92	531	filePattern	The files to be validated using Ant-style matching patterns	STRING	\N
93	531	expression	The XPath query	TEXT	\N
94	531	message	The issue message	STRING	The XPath expression matches this piece of code
95	532	filePattern	Files to be validated using Ant-style matching patterns.	STRING	\N
96	532	schemas	Whitespace-separated list of schemas to use for validation.	TEXT	autodetect
97	533	markAll	Mark all tab errors	BOOLEAN	false
98	541	max	Maximum number of classes a single class is allowed to depend upon	INTEGER	20
99	567	max	Maximum authorized number of generic parameters.	INTEGER	2
100	591	headerFormat	Expected copyright and license header.	STRING	/*\n * SonarQube, open source software quality management tool.\n * Copyright (C) 2008-2013 SonarSource\n * mailto:contact AT sonarsource DOT com\n *\n * SonarQube is free software; you can redistribute it and/or\n * modify it under the terms of the GNU Lesser General Public\n * License as published by the Free Software Foundation; either\n * version 3 of the License, or (at your option) any later version.\n *\n * SonarQube is distributed in the hope that it will be useful,\n * but WITHOUT ANY WARRANTY; without even the implied warranty of\n * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU\n * Lesser General Public License for more details.\n *\n * You should have received a copy of the GNU Lesser General Public License\n * along with this program; if not, write to the Free Software Foundation,\n * Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.\n */
101	591	isRegularExpression	Whether the headerFormat is a regular expression.	BOOLEAN	false
102	655	maximumFunctionComplexityThreshold	The maximum authorized complexity.	INTEGER	10
103	667	max	Maximum authorized number of parameters	INTEGER	7
104	669	maximumFileLocThreshold	Maximum authorized lines in a file.	INTEGER	1000
105	672	maximumLineLength	The maximum authorized line length.	INTEGER	200
106	685	max	Maximum depth of the inheritance tree. (Number)	INTEGER	5
107	685	filteredClasses	Comma-separated list of classes to be filtered out of the count of inheritance. Depth counting will stop when a filtered class is reached. For example: System.Windows.Controls.UserControl, System.Windows.*. (String)	STRING	\N
108	718	max	Maximum allowed control flow statement nesting depth.	INTEGER	3
109	747	max	Maximum number of allowed conditional operators in an expression	INTEGER	3
110	789	maximum	Maximum number of case	INTEGER	30
111	803	threshold	The maximum authorized complexity.	INTEGER	15
112	803	propertyThreshold	The maximum authorized complexity in a property.	INTEGER	3
113	824	format	Regular expression used to check the enumeration type names against.	STRING	^([A-Z]{1,3}[a-z0-9]+)*([A-Z]{2})?$
114	824	flagsAttributeFormat	Regular expression used to check the flags enumeration type names against.	STRING	^([A-Z]{1,3}[a-z0-9]+)*([A-Z]{2})?s$
115	838	value	Author to be set	STRING	John Doe
116	840	format	Regular expression that file names should match. See http://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for detailed regular expression syntax.	STRING	^[A-Za-z][-_A-Za-z0-9]*\\.json$
117	842	regularExpression	The regular expression. See http://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for detailed regular expression syntax.	STRING	.*
118	842	message	The issue message	STRING	The regular expression matches this key.
119	843	value	License to be set	STRING	LGPL-3.0
120	848	legalTrailingCommentPattern	Pattern for text of trailing comments that are allowed. By default, comments containing only one word.	STRING	^(//|#)\\s*+[^\\s]++$
121	849	max	Maximum authorized lines in a function	INTEGER	150
122	851	countNonpublicMethods	Whether or not to include non-public methods in the count	BOOLEAN	true
123	851	maximumMethodThreshold	The maximum number of methods	INTEGER	20
124	857	max	Maximum number of classes a single class is allowed to depend upon	INTEGER	20
125	862	max	Maximum number of lines	INTEGER	10
126	869	max	Maximum allowed control flow statement nesting depth.	INTEGER	4
127	876	max	\N	INTEGER	3
128	878	max	Maximum complexity allowed.	INTEGER	200
129	889	max	Maximum number of allowed conditional operators in an expression	INTEGER	3
130	898	format	\N	STRING	[a-z][A-Za-z0-9]+.php
131	899	headerFormat	Expected copyright and license header (plain text)	TEXT	\N
132	906	format	Regular expression used to check the function names against	STRING	^[a-z][a-zA-Z0-9]*$
133	907	format	Regular expression used to check the class names against.	STRING	^[A-Z][a-zA-Z0-9]*$
134	914	threshold	Number of times a literal must be duplicated to trigger an issue	INTEGER	3
135	915	maximumLinesThreshold	\N	INTEGER	200
136	917	max	Maximum number of case	INTEGER	30
137	933	threshold	The maximum authorized complexity.	INTEGER	15
138	934	format	Regular expression used to check the names against.	STRING	^[a-z][a-zA-Z0-9]*$
139	935	format	Regular expression used to check the constant names against.	STRING	^[A-Z][A-Z0-9]*(_[A-Z0-9]+)*$
140	936	format	Regular expression used to check the field names against.	STRING	^[a-z][a-zA-Z0-9]*$
141	938	format	Regular expression used to check the interface names against.	STRING	^[A-Z][a-zA-Z0-9]*$
142	939	countNonpublicFields	\N	BOOLEAN	true
143	939	maximumFieldThreshold	\N	INTEGER	20
144	943	max	Maximum allowed return statements per function	INTEGER	3
145	950	threshold	The maximum authorized complexity.	INTEGER	20
146	954	max	Maximum authorized number of parameters	INTEGER	7
147	954	constructorMax	\N	INTEGER	7
148	955	max	Maximum authorized lines in a file.	INTEGER	1000
149	957	maximumLineLength	The maximum authorized line length.	INTEGER	120
150	958	extends_implements_line	Class names, "extends" and "implements" keywords should be located on the same line	BOOLEAN	true
151	958	no_space_method_name	There should not be any space after a method name	BOOLEAN	true
152	958	closure_format	Closures declaration should be correctly spaced	BOOLEAN	true
153	958	space_comma	Commas should be followed by one space and not preceded by any	BOOLEAN	true
154	958	open_curly_brace_classes_functions	Open curly braces should be at the beginning of a new line for classes and functions	BOOLEAN	true
155	958	namespace_blank_line	"namespace" declarations should be followed by a blank line	BOOLEAN	true
156	958	open_curly_brace_control_structures	Open curly braces should be at the end of line for control structures	BOOLEAN	true
157	958	one_space_after	There should be exactly one space between closing parenthesis and opening curly braces	BOOLEAN	true
158	958	interfaces_indentation	List of implemented interfaces should be correctly indented	BOOLEAN	true
\.
