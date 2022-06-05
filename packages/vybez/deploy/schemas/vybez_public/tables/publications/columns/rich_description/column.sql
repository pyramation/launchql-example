-- Deploy: schemas/vybez_public/tables/publications/columns/rich_description/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications ADD COLUMN rich_description text;
COMMIT;
