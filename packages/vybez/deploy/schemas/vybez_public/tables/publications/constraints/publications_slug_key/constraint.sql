-- Deploy: schemas/vybez_public/tables/publications/constraints/publications_slug_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications
    ADD CONSTRAINT publications_slug_key UNIQUE (slug);
COMMIT;
