-- Revert: schemas/vybez_public/tables/users/indexes/users_search_tsv_idx from pg

BEGIN;
DROP INDEX "vybez_public".users_search_tsv_idx;
COMMIT;  

