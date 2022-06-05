-- Verify: schemas/vybez_public/tables/emails/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_public.emails');
COMMIT;  

