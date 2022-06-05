-- Revert: schemas/vybez_status_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_status_public" CASCADE;
COMMIT;  

