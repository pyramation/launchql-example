-- Verify: schemas/vybez_public/tables/organization_profiles/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.organization_profiles');
COMMIT;  

