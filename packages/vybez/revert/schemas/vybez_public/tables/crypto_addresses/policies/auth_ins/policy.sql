-- Revert: schemas/vybez_public/tables/crypto_addresses/policies/auth_ins/policy from pg

BEGIN;
DROP POLICY auth_ins ON "vybez_public".crypto_addresses;
COMMIT;  

