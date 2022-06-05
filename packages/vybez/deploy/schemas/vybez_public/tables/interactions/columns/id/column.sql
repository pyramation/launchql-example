-- Deploy: schemas/vybez_public/tables/interactions/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/interactions/table

BEGIN;

ALTER TABLE "vybez_public".interactions ADD COLUMN id uuid;
COMMIT;
