-- Verify: schemas/vybez_memberships_public/tables/app_admin_grants/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.app_admin_grants', 'insert', 'authenticated');
COMMIT;  

