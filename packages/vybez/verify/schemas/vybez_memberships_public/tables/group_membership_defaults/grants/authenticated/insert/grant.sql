-- Verify: schemas/vybez_memberships_public/tables/group_membership_defaults/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.group_membership_defaults', 'insert', 'authenticated');
COMMIT;  

