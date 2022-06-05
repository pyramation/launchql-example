-- Verify: schemas/vybez_memberships_public/tables/members/table on pg

BEGIN;
SELECT verify_table('vybez_memberships_public.members');
COMMIT;  

