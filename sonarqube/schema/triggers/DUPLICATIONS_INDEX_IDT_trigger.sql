-- Generated by Ora2Pg, the Oracle database Schema converter, version 20.0
-- Copyright 2000-2019 Gilles DAROLD. All rights reserved.
-- DATASOURCE: dbi:Oracle:db1

SET client_encoding TO 'UTF8';

SET search_path = public;
\set ON_ERROR_STOP ON

DROP TRIGGER IF EXISTS duplications_index_idt ON duplications_index CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_duplications_index_idt() RETURNS trigger AS $BODY$
BEGIN IF NEW.id IS null THEN SELECT nextval('duplications_index_seq') INTO STRICT NEW.id; END IF; RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_duplications_index_idt() FROM PUBLIC;

CREATE TRIGGER duplications_index_idt
	BEFORE INSERT ON duplications_index FOR EACH ROW
	EXECUTE PROCEDURE trigger_fct_duplications_index_idt();
