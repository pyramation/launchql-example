-- Revert: schemas/vybez_public/tables/crypto_addresses/alterations/alt0000000451 from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

