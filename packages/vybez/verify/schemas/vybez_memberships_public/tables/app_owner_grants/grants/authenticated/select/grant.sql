-- Verify: schemas/vybez_memberships_public/tables/app_owner_grants/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.app_owner_grants', 'select', 'authenticated');
COMMIT;  

