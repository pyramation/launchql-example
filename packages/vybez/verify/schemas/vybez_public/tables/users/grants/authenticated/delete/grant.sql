-- Verify: schemas/vybez_public/tables/users/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.users', 'delete', 'authenticated');
COMMIT;  

