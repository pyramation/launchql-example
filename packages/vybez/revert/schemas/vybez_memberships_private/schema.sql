-- Revert: schemas/vybez_memberships_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_memberships_private" CASCADE;
COMMIT;  

