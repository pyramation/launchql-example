-- Deploy: schemas/vybez_public/tables/interactions/constraints/interactions_publication_id_fkey/alterations/alt0000000628 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/constraints/interactions_publication_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT interactions_publication_id_fkey ON "vybez_public".interactions IS E'@omit manyToMany';
COMMIT;
