-- Deploy: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_name_key/alterations/alt0000000616 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_name_key/constraint

BEGIN;
COMMENT ON CONSTRAINT interaction_types_name_key ON "vybez_public".interaction_types IS E'@omit';
COMMIT;
