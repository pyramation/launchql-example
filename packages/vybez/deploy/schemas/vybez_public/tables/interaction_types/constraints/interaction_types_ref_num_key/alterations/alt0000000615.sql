-- Deploy: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_ref_num_key/alterations/alt0000000615 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_ref_num_key/constraint

BEGIN;
COMMENT ON CONSTRAINT interaction_types_ref_num_key ON "vybez_public".interaction_types IS E'@omit';
COMMIT;