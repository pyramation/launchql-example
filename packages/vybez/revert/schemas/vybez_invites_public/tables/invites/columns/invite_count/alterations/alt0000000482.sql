-- Revert: schemas/vybez_invites_public/tables/invites/columns/invite_count/alterations/alt0000000482 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN invite_count DROP DEFAULT;

COMMIT;  

