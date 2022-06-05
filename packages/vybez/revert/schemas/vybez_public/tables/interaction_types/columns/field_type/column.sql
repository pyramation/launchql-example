-- Revert: schemas/vybez_public/tables/interaction_types/columns/field_type/column from pg

BEGIN;


ALTER TABLE "vybez_public".interaction_types DROP COLUMN field_type;
COMMIT;  

