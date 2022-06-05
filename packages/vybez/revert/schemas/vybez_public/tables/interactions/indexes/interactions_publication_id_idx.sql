-- Revert: schemas/vybez_public/tables/interactions/indexes/interactions_publication_id_idx from pg

BEGIN;
DROP INDEX "vybez_public".interactions_publication_id_idx;
COMMIT;  

