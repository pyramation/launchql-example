-- Verify: schemas/vybez_public/tables/phone_numbers/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.phone_numbers');
COMMIT;  

