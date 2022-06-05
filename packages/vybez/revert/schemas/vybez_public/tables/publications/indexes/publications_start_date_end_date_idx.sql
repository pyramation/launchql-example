-- Revert: schemas/vybez_public/tables/publications/indexes/publications_start_date_end_date_idx from pg

BEGIN;
DROP INDEX "vybez_public".publications_start_date_end_date_idx;
COMMIT;  

