-- Revert: schemas/vybez_public/tables/interaction_types/columns/ref_num/column from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types DROP COLUMN ref_num;
COMMIT;  

