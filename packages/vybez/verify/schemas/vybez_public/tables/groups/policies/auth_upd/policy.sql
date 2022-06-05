-- Verify: schemas/vybez_public/tables/groups/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.groups');
COMMIT;  

