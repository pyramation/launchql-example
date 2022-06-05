-- Verify: schemas/vybez_memberships_public/tables/group_grants/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.group_grants', 'insert', 'authenticated');
COMMIT;  

