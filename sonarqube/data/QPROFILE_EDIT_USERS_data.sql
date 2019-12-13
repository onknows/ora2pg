TRUNCATE TABLE qprofile_edit_users;
SET search_path = public;


COPY qprofile_edit_users (uuid,user_id,qprofile_uuid,created_at) FROM STDIN;
\.
