-- Verify: schemas/vybez_memberships_public/tables/members/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.members', 'select', 'authenticated');
COMMIT;  

