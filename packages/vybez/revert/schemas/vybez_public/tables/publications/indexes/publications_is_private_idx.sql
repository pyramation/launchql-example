-- Revert: schemas/vybez_public/tables/publications/indexes/publications_is_private_idx from pg

BEGIN;
DROP INDEX "vybez_public".publications_is_private_idx;
COMMIT;  

