-- Verify: schemas/vybez_public/tables/crypto_addresses/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.crypto_addresses');
COMMIT;  

