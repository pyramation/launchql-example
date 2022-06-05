-- Revert: schemas/vybez_public/tables/crypto_addresses/policies/enable_row_level_security from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses
    DISABLE ROW LEVEL SECURITY;

COMMIT;  

