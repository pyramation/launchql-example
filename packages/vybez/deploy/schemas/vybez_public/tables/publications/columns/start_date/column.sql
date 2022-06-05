-- Deploy: schemas/vybez_public/tables/publications/columns/start_date/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications ADD COLUMN start_date timestamptz;
COMMIT;
