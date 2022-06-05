-- Verify: schemas/vybez_public/tables/phone_numbers/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.phone_numbers');
COMMIT;  

