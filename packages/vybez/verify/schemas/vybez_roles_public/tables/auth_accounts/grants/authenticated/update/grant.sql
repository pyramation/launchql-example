-- Verify: schemas/vybez_roles_public/tables/auth_accounts/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_roles_public.auth_accounts', 'update', 'authenticated');
COMMIT;  

