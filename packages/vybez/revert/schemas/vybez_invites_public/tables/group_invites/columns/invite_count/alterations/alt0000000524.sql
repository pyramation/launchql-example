-- Revert: schemas/vybez_invites_public/tables/group_invites/columns/invite_count/alterations/alt0000000524 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN invite_count DROP DEFAULT;

COMMIT;  

