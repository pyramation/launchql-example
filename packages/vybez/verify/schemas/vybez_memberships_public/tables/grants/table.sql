-- Verify: schemas/vybez_memberships_public/tables/grants/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.grants');
COMMIT;  

