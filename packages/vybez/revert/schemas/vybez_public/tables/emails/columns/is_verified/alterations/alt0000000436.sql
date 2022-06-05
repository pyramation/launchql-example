-- Revert: schemas/vybez_public/tables/emails/columns/is_verified/alterations/alt0000000436 from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    ALTER COLUMN is_verified DROP NOT NULL;


COMMIT;  

