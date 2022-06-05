-- Revert: schemas/vybez_public/tables/crypto_addresses/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( address, owner_id, is_primary ) ON TABLE "vybez_public".crypto_addresses FROM authenticated;
COMMIT;  

