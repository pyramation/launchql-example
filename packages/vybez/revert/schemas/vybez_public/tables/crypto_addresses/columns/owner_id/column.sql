-- Revert: schemas/vybez_public/tables/crypto_addresses/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses DROP COLUMN owner_id;
COMMIT;  

