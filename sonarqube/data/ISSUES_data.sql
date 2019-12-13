TRUNCATE TABLE issues;
SET search_path = public;


COPY issues (id,kee,rule_id,severity,manual_severity,message,line,gap,status,resolution,checksum,reporter,assignee,author_login,action_plan_key,issue_attributes,effort,created_at,updated_at,issue_creation_date,issue_update_date,issue_close_date,tags,component_uuid,project_uuid,locations,issue_type) FROM STDIN;
\.
