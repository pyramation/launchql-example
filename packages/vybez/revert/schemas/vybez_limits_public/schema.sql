-- Revert: schemas/vybez_limits_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_limits_public" CASCADE;
COMMIT;  

