-- Verify: schemas/vybez_public/tables/emails/policies/auth_del/policy on pg

BEGIN;
SELECT verify_policy('auth_del', 'vybez_public.emails');
COMMIT;  

