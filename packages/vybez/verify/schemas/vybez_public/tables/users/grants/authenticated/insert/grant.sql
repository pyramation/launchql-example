-- Verify: schemas/vybez_public/tables/users/grants/authenticated/insert/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.users', 'insert', 'authenticated');
COMMIT;  

