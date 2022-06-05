-- Revert: schemas/vybez_memberships_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_memberships_public" CASCADE;
COMMIT;  

