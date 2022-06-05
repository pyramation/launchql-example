-- Deploy: schemas/vybez_public/tables/publications/columns/end_date/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications ADD COLUMN end_date timestamptz;
COMMIT;
