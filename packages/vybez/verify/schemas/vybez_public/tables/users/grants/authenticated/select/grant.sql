-- Verify: schemas/vybez_public/tables/users/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_public.users', 'select', 'authenticated');
COMMIT;  

