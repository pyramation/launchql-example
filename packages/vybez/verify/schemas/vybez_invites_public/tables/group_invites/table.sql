-- Verify: schemas/vybez_invites_public/tables/group_invites/table on pg

BEGIN;
SELECT verify_table('vybez_invites_public.group_invites');
COMMIT;  

