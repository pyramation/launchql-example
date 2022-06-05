-- Verify: schemas/vybez_memberships_public/tables/grants/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.grants', 'select', 'authenticated');
COMMIT;  

