-- Verify: schemas/vybez_public/tables/groups/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.groups');
COMMIT;  

