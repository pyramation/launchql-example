-- Verify: schemas/vybez_memberships_public/tables/group_membership_defaults/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.group_membership_defaults');
COMMIT;  

