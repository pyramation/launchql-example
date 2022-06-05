-- Verify: schemas/vybez_memberships_public/tables/group_memberships/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.group_memberships', 'delete', 'authenticated');
COMMIT;  

