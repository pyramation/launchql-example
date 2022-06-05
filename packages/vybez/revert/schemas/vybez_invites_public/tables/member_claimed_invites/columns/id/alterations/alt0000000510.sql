-- Revert: schemas/vybez_invites_public/tables/member_claimed_invites/columns/id/alterations/alt0000000510 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".member_claimed_invites 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

