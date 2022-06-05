-- Verify: schemas/vybez_memberships_public/tables/group_memberships/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.group_memberships');
COMMIT;  

