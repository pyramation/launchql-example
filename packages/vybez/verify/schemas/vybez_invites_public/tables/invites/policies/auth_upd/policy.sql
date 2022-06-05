-- Verify: schemas/vybez_invites_public/tables/invites/policies/auth_upd/policy on pg

BEGIN;
SELECT verify_policy('auth_upd', 'vybez_invites_public.invites');
COMMIT;  

