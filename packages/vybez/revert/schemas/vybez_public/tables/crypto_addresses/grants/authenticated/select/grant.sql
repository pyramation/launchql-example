-- Revert: schemas/vybez_public/tables/crypto_addresses/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "vybez_public".crypto_addresses FROM authenticated;
COMMIT;  

