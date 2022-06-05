-- Revert: schemas/vybez_public/tables/crypto_addresses/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "vybez_public".crypto_addresses FROM authenticated;
COMMIT;  

