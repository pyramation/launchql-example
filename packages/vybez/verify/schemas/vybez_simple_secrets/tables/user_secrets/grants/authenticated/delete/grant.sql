-- Verify: schemas/vybez_simple_secrets/tables/user_secrets/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('vybez_simple_secrets.user_secrets', 'delete', 'authenticated');
COMMIT;  

