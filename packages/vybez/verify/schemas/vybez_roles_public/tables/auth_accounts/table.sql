-- Verify: schemas/vybez_roles_public/tables/auth_accounts/table on pg

BEGIN;
SELECT verify_table('vybez_roles_public.auth_accounts');
COMMIT;  

