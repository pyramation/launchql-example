-- Verify: schemas/vybez_public/tables/users/table on pg

BEGIN;
SELECT verify_table('vybez_public.users');
COMMIT;  

