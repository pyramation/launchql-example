-- Revert: schemas/vybez_public/tables/emails/columns/is_verified/alterations/alt0000000437 from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    ALTER COLUMN is_verified DROP DEFAULT;

COMMIT;  

