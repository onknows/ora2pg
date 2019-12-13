TRUNCATE TABLE duplications_index;
SET search_path = public;


COPY duplications_index (id,hash,index_in_file,start_line,end_line,component_uuid,analysis_uuid) FROM STDIN;
\.
