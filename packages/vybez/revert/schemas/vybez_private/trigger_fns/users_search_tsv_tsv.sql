-- Revert: schemas/vybez_private/trigger_fns/users_search_tsv_tsv from pg

BEGIN;
DROP FUNCTION "vybez_private".users_search_tsv_tsv;
COMMIT;  

