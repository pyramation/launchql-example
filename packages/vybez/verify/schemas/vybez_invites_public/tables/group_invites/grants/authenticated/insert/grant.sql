-- Verify: schemas/vybez_invites_public/tables/group_invites/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_invites_public.group_invites', 'insert', 'authenticated');
COMMIT;  

