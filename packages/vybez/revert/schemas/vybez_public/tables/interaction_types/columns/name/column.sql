-- Revert: schemas/vybez_public/tables/interaction_types/columns/name/column from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types DROP COLUMN name;
COMMIT;  

