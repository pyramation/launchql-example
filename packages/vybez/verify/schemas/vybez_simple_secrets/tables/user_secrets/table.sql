-- Verify: schemas/vybez_simple_secrets/tables/user_secrets/table on pg

BEGIN;
SELECT verify_table('vybez_simple_secrets.user_secrets');
COMMIT;  

