-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/invite_token/alterations/alt0000000496 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN invite_token DROP DEFAULT;

COMMIT;  

