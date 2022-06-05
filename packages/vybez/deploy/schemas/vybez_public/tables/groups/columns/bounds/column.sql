-- Deploy: schemas/vybez_public/tables/groups/columns/bounds/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;

ALTER TABLE "vybez_public".groups ADD COLUMN bounds geometry (GeometryCollection, 4326);
COMMIT;
