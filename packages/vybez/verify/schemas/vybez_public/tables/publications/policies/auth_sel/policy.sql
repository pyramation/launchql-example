-- Verify: schemas/vybez_public/tables/publications/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.publications');
COMMIT;  

