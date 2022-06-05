-- Verify: schemas/vybez_public/tables/crypto_addresses/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.crypto_addresses');
COMMIT;  

