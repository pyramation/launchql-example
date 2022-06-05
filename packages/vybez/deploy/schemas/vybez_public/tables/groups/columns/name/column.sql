-- Deploy: schemas/vybez_public/tables/groups/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;

ALTER TABLE "vybez_public".groups ADD COLUMN name text;
COMMIT;
