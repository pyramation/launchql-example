-- Verify: schemas/vybez_permissions_public/tables/membership_permissions/table on pg

BEGIN;
SELECT verify_table('vybez_permissions_public.membership_permissions');
COMMIT;  

