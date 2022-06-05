-- Deploy: schemas/vybez_public/tables/publications/constraints/publications_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications
    ADD CONSTRAINT publications_pkey PRIMARY KEY (id);
COMMIT;
