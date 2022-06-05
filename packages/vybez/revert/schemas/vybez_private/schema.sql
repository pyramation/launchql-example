-- Revert: schemas/vybez_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_private" CASCADE;
COMMIT;  

