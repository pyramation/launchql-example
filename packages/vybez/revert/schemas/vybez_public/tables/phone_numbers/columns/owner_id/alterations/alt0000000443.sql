-- Revert: schemas/vybez_public/tables/phone_numbers/columns/owner_id/alterations/alt0000000443 from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN owner_id DROP NOT NULL;


COMMIT;  

