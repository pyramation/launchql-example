-- Revert: schemas/vybez_public/tables/phone_numbers/constraints/phone_numbers_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers 
    DROP CONSTRAINT phone_numbers_owner_id_fkey;

COMMIT;  

