-- Revert: schemas/vybez_invites_public/tables/member_invites/columns/invite_count/alterations/alt0000000502 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_invites 
    ALTER COLUMN invite_count DROP DEFAULT;

COMMIT;  

