-- Deploy: schemas/vybez_public/tables/publications/columns/is_private/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/publications/table

BEGIN;

ALTER TABLE "vybez_public".publications ADD COLUMN is_private boolean;
COMMIT;
