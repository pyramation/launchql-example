-- Deploy: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_slug_key/alterations/alt0000000614 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interaction_types/constraints/interaction_types_slug_key/constraint

BEGIN;
COMMENT ON CONSTRAINT interaction_types_slug_key ON "vybez_public".interaction_types IS E'@omit';
COMMIT;
