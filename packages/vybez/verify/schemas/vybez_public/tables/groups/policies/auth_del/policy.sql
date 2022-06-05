-- Verify: schemas/vybez_public/tables/groups/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.groups');
COMMIT;  

