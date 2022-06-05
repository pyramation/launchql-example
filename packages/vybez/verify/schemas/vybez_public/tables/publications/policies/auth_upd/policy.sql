-- Verify: schemas/vybez_public/tables/publications/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.publications');
COMMIT;  

