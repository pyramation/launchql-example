-- Verify: schemas/vybez_memberships_public/tables/admin_grants/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.admin_grants', 'insert', 'authenticated');
COMMIT;  

