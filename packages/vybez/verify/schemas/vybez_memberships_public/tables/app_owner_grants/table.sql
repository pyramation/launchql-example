-- Verify: schemas/vybez_memberships_public/tables/app_owner_grants/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.app_owner_grants');
COMMIT;  

