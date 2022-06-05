-- Verify: schemas/vybez_public/tables/organization_profiles/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.organization_profiles');
COMMIT;  

