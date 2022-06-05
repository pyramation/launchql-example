-- Revert: schemas/vybez_invites_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_invites_public" CASCADE;
COMMIT;  

