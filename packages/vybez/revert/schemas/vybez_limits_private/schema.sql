-- Revert: schemas/vybez_limits_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_limits_private" CASCADE;
COMMIT;  

