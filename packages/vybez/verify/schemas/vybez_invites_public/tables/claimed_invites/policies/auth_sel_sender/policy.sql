-- Verify: schemas/vybez_invites_public/tables/claimed_invites/policies/auth_sel_sender/policy on pg

BEGIN;
SELECT verify_policy('auth_sel_sender', 'vybez_invites_public.claimed_invites');
COMMIT;  

