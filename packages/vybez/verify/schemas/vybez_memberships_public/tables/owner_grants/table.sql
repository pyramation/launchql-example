-- Verify: schemas/vybez_memberships_public/tables/owner_grants/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.owner_grants');
COMMIT;  

