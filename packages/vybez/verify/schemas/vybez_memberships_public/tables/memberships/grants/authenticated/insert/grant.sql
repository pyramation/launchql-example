-- Verify: schemas/vybez_memberships_public/tables/memberships/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_memberships_public.memberships', 'insert', 'authenticated');
COMMIT;  

