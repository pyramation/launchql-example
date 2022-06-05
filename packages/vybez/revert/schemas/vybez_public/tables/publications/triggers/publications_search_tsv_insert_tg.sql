-- Revert: schemas/vybez_public/tables/publications/triggers/publications_search_tsv_insert_tg from pg

BEGIN;
DROP TRIGGER publications_search_tsv_insert_tg ON "vybez_public".publications;
COMMIT;  

