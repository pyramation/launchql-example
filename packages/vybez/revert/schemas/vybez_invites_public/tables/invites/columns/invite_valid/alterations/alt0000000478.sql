-- Revert: schemas/vybez_invites_public/tables/invites/columns/invite_valid/alterations/alt0000000478 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN invite_valid DROP DEFAULT;

COMMIT;  

