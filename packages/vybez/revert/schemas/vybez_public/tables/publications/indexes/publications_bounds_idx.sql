-- Revert: schemas/vybez_public/tables/publications/indexes/publications_bounds_idx from pg

BEGIN;
DROP INDEX "vybez_public".publications_bounds_idx;
COMMIT;  

