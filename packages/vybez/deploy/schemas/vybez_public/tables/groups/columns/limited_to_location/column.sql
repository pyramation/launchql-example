-- Deploy: schemas/vybez_public/tables/groups/columns/limited_to_location/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/groups/table

BEGIN;

ALTER TABLE "vybez_public".groups ADD COLUMN limited_to_location bool;
COMMIT;
