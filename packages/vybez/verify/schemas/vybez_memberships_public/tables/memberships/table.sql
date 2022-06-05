-- Verify: schemas/vybez_memberships_public/tables/memberships/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.memberships');
COMMIT;  

