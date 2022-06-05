-- Verify: schemas/vybez_memberships_public/tables/app_membership_defaults/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.app_membership_defaults');
COMMIT;  

