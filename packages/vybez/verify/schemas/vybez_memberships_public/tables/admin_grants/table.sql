-- Verify: schemas/vybez_memberships_public/tables/admin_grants/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.admin_grants');
COMMIT;  

