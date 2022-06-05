-- Verify: schemas/vybez_memberships_public/tables/grants/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.grants', 'insert', 'authenticated');
COMMIT;  

