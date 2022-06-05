-- Revert: schemas/vybez_invites_public/tables/group_invites/columns/invite_valid/alterations/alt0000000520 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".group_invites 
    ALTER COLUMN invite_valid DROP DEFAULT;

COMMIT;  

