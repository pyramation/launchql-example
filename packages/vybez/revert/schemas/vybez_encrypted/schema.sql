-- Revert: schemas/vybez_encrypted/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_encrypted" CASCADE;
COMMIT;  

