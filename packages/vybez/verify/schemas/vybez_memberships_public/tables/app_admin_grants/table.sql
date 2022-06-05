-- Verify: schemas/vybez_memberships_public/tables/app_admin_grants/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.app_admin_grants');
COMMIT;  

