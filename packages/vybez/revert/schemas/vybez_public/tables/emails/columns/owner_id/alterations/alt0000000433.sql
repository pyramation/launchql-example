-- Revert: schemas/vybez_public/tables/emails/columns/owner_id/alterations/alt0000000433 from pg

BEGIN;


ALTER TABLE "vybez_public".emails 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

