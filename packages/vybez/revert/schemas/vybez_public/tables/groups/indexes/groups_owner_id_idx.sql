-- Revert: schemas/vybez_public/tables/groups/indexes/groups_owner_id_idx from pg

BEGIN;
DROP INDEX "vybez_public".groups_owner_id_idx;
COMMIT;  

