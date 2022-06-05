-- Revert: schemas/vybez_simple_secrets/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_simple_secrets" CASCADE;
COMMIT;  

