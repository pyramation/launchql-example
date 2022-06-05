-- Verify: schemas/vybez_invites_public/tables/group_invites/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_invites_public.group_invites', 'update', 'authenticated');
COMMIT;  

