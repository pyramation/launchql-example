-- Verify: schemas/vybez_public/tables/phone_numbers/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.phone_numbers');
COMMIT;  

