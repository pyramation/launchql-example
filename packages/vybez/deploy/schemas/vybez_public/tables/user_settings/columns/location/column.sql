-- Deploy: schemas/vybez_public/tables/user_settings/columns/location/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table

BEGIN;

ALTER TABLE "vybez_public".user_settings ADD COLUMN location geometry (Point, 4326);
COMMIT;
