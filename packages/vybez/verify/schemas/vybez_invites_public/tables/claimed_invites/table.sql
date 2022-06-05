-- Verify: schemas/vybez_invites_public/tables/claimed_invites/table on pg

BEGIN;
SELECT verify_table('vybez_invites_public.claimed_invites');
COMMIT;  

