-- Revert: schemas/vybez_roles_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_roles_public" CASCADE;
COMMIT;  

