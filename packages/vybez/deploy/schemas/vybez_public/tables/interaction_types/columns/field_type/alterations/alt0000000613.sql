-- Deploy: schemas/vybez_public/tables/interaction_types/columns/field_type/alterations/alt0000000613 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/columns/field_type/column

BEGIN;
COMMENT ON COLUMN "vybez_public".interaction_types.field_type IS E'e.g. text, numeric, location, etc.';
COMMIT;
