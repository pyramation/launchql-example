-- Revert: schemas/vybez_public/tables/crypto_addresses/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "vybez_public".crypto_addresses DROP COLUMN created_at;
ALTER TABLE "vybez_public".crypto_addresses DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "vybez_public".crypto_addresses;

COMMIT;  

