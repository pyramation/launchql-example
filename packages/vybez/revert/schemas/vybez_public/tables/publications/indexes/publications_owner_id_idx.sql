-- Revert: schemas/vybez_public/tables/publications/indexes/publications_owner_id_idx from pg

BEGIN;
DROP INDEX "vybez_public".publications_owner_id_idx;
COMMIT;  

