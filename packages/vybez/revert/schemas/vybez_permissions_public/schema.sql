-- Revert: schemas/vybez_permissions_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_permissions_public" CASCADE;
COMMIT;  

