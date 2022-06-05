-- Revert: schemas/vybez_public/tables/phone_numbers/alterations/alt0000000440 from pg

BEGIN;


ALTER TABLE "vybez_public".phone_numbers
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

