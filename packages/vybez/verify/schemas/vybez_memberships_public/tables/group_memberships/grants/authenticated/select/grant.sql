-- Verify: schemas/vybez_memberships_public/tables/group_memberships/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.group_memberships', 'select', 'authenticated');
COMMIT;  

