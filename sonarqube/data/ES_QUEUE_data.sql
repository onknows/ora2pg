TRUNCATE TABLE es_queue;
SET search_path = public;


COPY es_queue (uuid,doc_type,doc_id,doc_id_type,doc_routing,created_at) FROM STDIN;
\.
