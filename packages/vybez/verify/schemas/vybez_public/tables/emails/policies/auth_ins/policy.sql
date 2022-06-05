-- Verify: schemas/vybez_public/tables/emails/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_public.emails');
COMMIT;  

