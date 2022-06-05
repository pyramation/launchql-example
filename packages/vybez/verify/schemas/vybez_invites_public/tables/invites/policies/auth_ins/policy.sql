-- Verify: schemas/vybez_invites_public/tables/invites/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'vybez_invites_public.invites');
COMMIT;  

