-- Revert: schemas/vybez_public/tables/emails/columns/owner_id/alterations/alt0000000434 from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

