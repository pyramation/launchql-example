-- Verify: schemas/vybez_memberships_public/tables/app_memberships/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.app_memberships');
COMMIT;  

