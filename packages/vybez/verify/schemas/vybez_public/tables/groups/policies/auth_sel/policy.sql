-- Verify: schemas/vybez_public/tables/groups/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.groups');
COMMIT;  

