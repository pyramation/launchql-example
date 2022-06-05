-- Deploy: schemas/vybez_public/tables/publications/columns/bounds/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications ADD COLUMN bounds geometry (GeometryCollection, 4326);
COMMIT;
