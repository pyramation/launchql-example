-- Deploy: schemas/vybez_public/tables/publications/constraints/publications_slug_key/alterations/alt0000000606 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/constraints/publications_slug_key/constraint

BEGIN;
COMMENT ON CONSTRAINT publications_slug_key ON "vybez_public".publications IS NULL;
COMMIT;
