-- Verify: schemas/vybez_invites_public/tables/invites/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'vybez_invites_public.invites');
COMMIT;  

