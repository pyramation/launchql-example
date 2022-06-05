-- Verify: schemas/vybez_public/tables/role_types/table on pg

BEGIN;
SELECT verify_table('vybez_public.role_types');
COMMIT;  

