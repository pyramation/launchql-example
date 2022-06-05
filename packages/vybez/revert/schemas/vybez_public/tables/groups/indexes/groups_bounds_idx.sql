-- Revert: schemas/vybez_public/tables/groups/indexes/groups_bounds_idx from pg

BEGIN;
DROP INDEX "vybez_public".groups_bounds_idx;
COMMIT;  

