-- Verify: schemas/vybez_invites_public/tables/invites/table on pg

BEGIN;
SELECT verify_table('vybez_invites_public.invites');
COMMIT;  

