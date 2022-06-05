-- Revert: schemas/vybez_public/tables/emails/columns/is_primary/alterations/alt0000000438 from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    ALTER COLUMN is_primary DROP NOT NULL;


COMMIT;  

