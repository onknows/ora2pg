TRUNCATE TABLE user_tokens;
SET search_path = public;


COPY user_tokens (id,login,name,token_hash,created_at) FROM STDIN;
\.
