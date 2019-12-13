-- Generated by Ora2Pg, the Oracle database Schema converter, version 20.0
-- Copyright 2000-2019 Gilles DAROLD. All rights reserved.
-- DATASOURCE: dbi:Oracle:db1

SET client_encoding TO 'UTF8';

SET search_path = public;
\set ON_ERROR_STOP ON

DROP TRIGGER IF EXISTS user_roles_idt ON user_roles CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_user_roles_idt() RETURNS trigger AS $BODY$
BEGIN IF NEW.id IS null THEN SELECT nextval('user_roles_seq') INTO STRICT NEW.id; END IF; RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql' SECURITY DEFINER;
-- REVOKE ALL ON FUNCTION trigger_fct_user_roles_idt() FROM PUBLIC;

CREATE TRIGGER user_roles_idt
	BEFORE INSERT ON user_roles FOR EACH ROW
	EXECUTE PROCEDURE trigger_fct_user_roles_idt();

