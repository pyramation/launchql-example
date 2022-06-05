-- Revert: schemas/vybez_public/tables/crypto_addresses/columns/owner_id/alterations/alt0000000455 from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses 
    ALTER COLUMN owner_id DROP DEFAULT;

COMMIT;  

