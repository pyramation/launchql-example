-- Revert: schemas/vybez_invites_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "vybez_invites_private" CASCADE;
COMMIT;  

