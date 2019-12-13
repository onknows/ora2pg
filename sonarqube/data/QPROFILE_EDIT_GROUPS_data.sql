TRUNCATE TABLE qprofile_edit_groups;
SET search_path = public;


COPY qprofile_edit_groups (uuid,group_id,qprofile_uuid,created_at) FROM STDIN;
\.
