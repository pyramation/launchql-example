-- Revert: schemas/vybez_public/tables/publications/indexes/publications_tags_idx from pg

BEGIN;
DROP INDEX "vybez_public".publications_tags_idx;
COMMIT;  

