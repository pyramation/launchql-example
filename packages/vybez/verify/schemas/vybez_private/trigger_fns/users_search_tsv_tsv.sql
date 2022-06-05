-- Verify: schemas/vybez_private/trigger_fns/users_search_tsv_tsv on pg

BEGIN;
SELECT verify_function('vybez_private.users_search_tsv_tsv');
COMMIT;  

