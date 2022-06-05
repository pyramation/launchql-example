-- Revert: schemas/vybez_public/tables/crypto_addresses/policies/auth_upd/policy from pg

BEGIN;
DROP POLICY auth_upd ON "vybez_public".crypto_addresses;
COMMIT;  

