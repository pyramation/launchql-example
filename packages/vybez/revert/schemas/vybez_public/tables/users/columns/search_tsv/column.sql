-- Revert: schemas/vybez_public/tables/users/columns/search_tsv/column from pg

BEGIN;


ALTER TABLE "vybez_public".users DROP COLUMN search_tsv;
COMMIT;  

