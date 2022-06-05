-- Verify: schemas/vybez_public/tables/users/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.users', 'update', 'authenticated');
COMMIT;  

