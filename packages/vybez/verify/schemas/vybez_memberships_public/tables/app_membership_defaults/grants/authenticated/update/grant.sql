-- Verify: schemas/vybez_memberships_public/tables/app_membership_defaults/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.app_membership_defaults', 'update', 'authenticated');
COMMIT;  

