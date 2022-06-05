-- Revert: schemas/vybez_public/tables/crypto_addresses/columns/id/alterations/alt0000000452 from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

