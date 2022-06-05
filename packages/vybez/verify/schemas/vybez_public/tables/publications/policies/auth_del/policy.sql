-- Verify: schemas/vybez_public/tables/publications/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.publications');
COMMIT;  

