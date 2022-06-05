-- Verify: schemas/vybez_public/tables/publications/triggers/publications_search_tsv_update_tg on pg

BEGIN;
SELECT verify_trigger('vybez_public.publications_search_tsv_update_tg');
COMMIT;  

