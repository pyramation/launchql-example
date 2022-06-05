-- Verify: schemas/vybez_roles_private/tables/api_tokens/table on pg

BEGIN;
SELECT verify_table('vybez_roles_private.api_tokens');
COMMIT;  

