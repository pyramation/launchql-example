-- Verify: schemas/vybez_limits_public/tables/membership_limits/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_limits_public.membership_limits');
COMMIT;  

