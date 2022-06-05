-- Verify: schemas/vybez_memberships_public/tables/admin_grants/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.admin_grants', 'select', 'authenticated');
COMMIT;  

