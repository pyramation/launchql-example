-- Verify: schemas/vybez_public/tables/crypto_addresses/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.crypto_addresses');
COMMIT;  

