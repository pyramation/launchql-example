-- Deploy: schemas/vybez_public/tables/publications/columns/search/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications ADD COLUMN search tsvector;
COMMIT;
