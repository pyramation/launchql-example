-- Verify: schemas/vybez_memberships_public/tables/app_grants/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.app_grants');
COMMIT;  

