TRUNCATE TABLE issue_changes;
SET search_path = public;


COPY issue_changes (id,kee,issue_key,user_login,change_type,change_data,created_at,updated_at,issue_change_creation_date) FROM STDIN;
\.
