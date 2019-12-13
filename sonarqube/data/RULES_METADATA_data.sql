TRUNCATE TABLE rules_metadata;
SET search_path = public;


COPY rules_metadata (rule_id,organization_uuid,note_data,note_user_login,note_created_at,note_updated_at,remediation_function,remediation_gap_mult,remediation_base_effort,tags,created_at,updated_at) FROM STDIN;
\.
