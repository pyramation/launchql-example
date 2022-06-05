-- Verify: schemas/vybez_permissions_public/tables/membership_permissions/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_permissions_public.membership_permissions', 'update', 'authenticated');
COMMIT;  

