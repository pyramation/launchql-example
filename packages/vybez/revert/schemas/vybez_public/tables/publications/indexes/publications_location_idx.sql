-- Revert: schemas/vybez_public/tables/publications/indexes/publications_location_idx from pg

BEGIN;
DROP INDEX "vybez_public".publications_location_idx;
COMMIT;  

