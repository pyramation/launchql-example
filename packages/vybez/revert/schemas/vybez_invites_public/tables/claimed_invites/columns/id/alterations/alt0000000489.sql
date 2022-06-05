-- Revert: schemas/vybez_invites_public/tables/claimed_invites/columns/id/alterations/alt0000000489 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".claimed_invites 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

