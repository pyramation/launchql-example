-- Verify: schemas/vybez_invites_public/tables/claimed_invites/policies/auth_sel_receiver/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_receiver', 'vybez_invites_public.claimed_invites');
COMMIT;  

