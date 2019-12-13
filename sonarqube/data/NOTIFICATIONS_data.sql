TRUNCATE TABLE notifications;
SET search_path = public;


COPY notifications (id,data) FROM STDIN;
\.
