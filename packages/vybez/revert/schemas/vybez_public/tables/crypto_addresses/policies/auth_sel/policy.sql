-- Revert: schemas/vybez_public/tables/crypto_addresses/policies/auth_sel/policy from pg

BEGIN;
DROP POLICY auth_sel ON "vybez_public".crypto_addresses;
COMMIT;  

