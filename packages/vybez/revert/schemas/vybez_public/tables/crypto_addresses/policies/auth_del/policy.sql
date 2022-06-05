-- Revert: schemas/vybez_public/tables/crypto_addresses/policies/auth_del/policy from pg

BEGIN;
DROP POLICY auth_del ON "vybez_public".crypto_addresses;
COMMIT;  

