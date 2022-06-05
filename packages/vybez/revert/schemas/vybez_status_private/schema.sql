-- Revert: schemas/vybez_status_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_status_private" CASCADE;
COMMIT;  

