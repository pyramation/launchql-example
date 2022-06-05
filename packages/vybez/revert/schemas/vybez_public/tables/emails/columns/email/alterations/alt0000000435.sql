-- Revert: schemas/vybez_public/tables/emails/columns/email/alterations/alt0000000435 from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    ALTER COLUMN email DROP NOT NULL;


COMMIT;  

