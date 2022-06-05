-- Revert: schemas/vybez_public/tables/publications/indexes/publications_search_idx from pg

BEGIN;
DROP INDEX "vybez_public".publications_search_idx;
COMMIT;  

