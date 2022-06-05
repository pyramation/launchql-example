-- Revert: schemas/vybez_public/tables/emails/columns/id/alterations/alt0000000432 from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

