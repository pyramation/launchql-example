-- Verify: schemas/vybez_public/tables/crypto_addresses/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.crypto_addresses');
COMMIT;  

