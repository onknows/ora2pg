-- Generated by Ora2Pg, the Oracle database Schema converter, version 20.0
-- Copyright 2000-2019 Gilles DAROLD. All rights reserved.
-- DATASOURCE: dbi:Oracle:db1

SET client_encoding TO 'UTF8';

SET search_path = public;
\set ON_ERROR_STOP ON

DROP TRIGGER IF EXISTS metrics_idt ON metrics CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_metrics_idt() RETURNS trigger AS $BODY$
BEGIN IF NEW.id IS null THEN SELECT nextval('metrics_seq') INTO STRICT NEW.id; END IF; RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_metrics_idt() FROM PUBLIC;

CREATE TRIGGER metrics_idt
	BEFORE INSERT ON metrics FOR EACH ROW
	EXECUTE PROCEDURE trigger_fct_metrics_idt();

