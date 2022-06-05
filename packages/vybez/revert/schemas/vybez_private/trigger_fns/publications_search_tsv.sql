-- Revert: schemas/vybez_private/trigger_fns/publications_search_tsv from pg

BEGIN;
DROP FUNCTION "vybez_private".publications_search_tsv;
COMMIT;  

