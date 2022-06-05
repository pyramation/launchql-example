-- Revert: schemas/vybez_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_public" CASCADE;
COMMIT;  

