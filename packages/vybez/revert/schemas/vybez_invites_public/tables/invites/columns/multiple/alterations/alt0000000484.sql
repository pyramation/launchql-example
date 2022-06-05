-- Revert: schemas/vybez_invites_public/tables/invites/columns/multiple/alterations/alt0000000484 from pg

BEGIN;


ALTER TABLE "vybez_invites_public".invites 
    ALTER COLUMN multiple DROP DEFAULT;

COMMIT;  

