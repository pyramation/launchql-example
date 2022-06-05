-- Verify: schemas/vybez_public/tables/emails/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_public.emails');
COMMIT;  

