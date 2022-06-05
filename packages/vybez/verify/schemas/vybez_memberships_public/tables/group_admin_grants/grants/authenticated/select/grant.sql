-- Verify: schemas/vybez_memberships_public/tables/group_admin_grants/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.group_admin_grants', 'select', 'authenticated');
COMMIT;  

