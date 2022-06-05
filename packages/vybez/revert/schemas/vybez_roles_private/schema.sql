-- Revert: schemas/vybez_roles_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_roles_private" CASCADE;
COMMIT;  

