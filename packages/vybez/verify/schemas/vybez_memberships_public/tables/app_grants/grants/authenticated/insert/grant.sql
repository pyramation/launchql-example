-- Verify: schemas/vybez_memberships_public/tables/app_grants/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.app_grants', 'insert', 'authenticated');
COMMIT;  

