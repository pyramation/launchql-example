-- Verify: schemas/vybez_memberships_public/tables/membership_defaults/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.membership_defaults');
COMMIT;  

