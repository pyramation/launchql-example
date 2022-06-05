-- Revert: schemas/vybez_invites_public/tables/group_invites/columns/expires_at/alterations/alt0000000528 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN expires_at DROP DEFAULT;

COMMIT;  

