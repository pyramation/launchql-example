-- Revert: schemas/vybez_public/tables/interaction_types/columns/field_type/alterations/alt0000000613 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".interaction_types.field_type IS NULL;
COMMIT;  

