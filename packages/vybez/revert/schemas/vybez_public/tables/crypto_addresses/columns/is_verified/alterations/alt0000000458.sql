-- Revert: schemas/vybez_public/tables/crypto_addresses/columns/is_verified/alterations/alt0000000458 from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses 
    ALTER COLUMN is_verified DROP NOT NULL;


COMMIT;  

