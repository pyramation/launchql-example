-- Verify: schemas/vybez_private/trigger_fns/publications_search_tsv on pg

BEGIN;
SELECT verify_function('vybez_private.publications_search_tsv');
COMMIT;  

