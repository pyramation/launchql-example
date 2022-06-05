-- Revert: schemas/vybez_invites_public/tables/invites/columns/id/alterations/alt0000000472 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

