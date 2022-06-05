-- Revert: schemas/vybez_permissions_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_permissions_private" CASCADE;
COMMIT;  

