TRUNCATE TABLE project_links;
SET search_path = public;


COPY project_links (id,link_type,name,href,component_uuid) FROM STDIN;
1	homepage	Home	https://projects.spring.io/spring-boot/#/spring-boot-starter-parent/spring-petclinic	AW7-XZ77azWlGOSpVJpm
2	scm	Sources	https://github.com/spring-projects/spring-boot/spring-boot-starter-parent/spring-petclinic	AW7-XZ77azWlGOSpVJpm
\.
