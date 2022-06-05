-- Revert: schemas/vybez_public/tables/interaction_types/indexes/interaction_types_slug_idx from pg

BEGIN;
DROP INDEX "vybez_public".interaction_types_slug_idx;
COMMIT;  

