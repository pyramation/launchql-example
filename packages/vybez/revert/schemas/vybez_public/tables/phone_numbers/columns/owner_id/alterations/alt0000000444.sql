-- Revert: schemas/vybez_public/tables/phone_numbers/columns/owner_id/alterations/alt0000000444 from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

