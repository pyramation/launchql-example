-- Deploy: schemas/vybez_public/tables/user_settings/columns/location/alterations/alt0000000582 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/columns/location/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.location IS E'user location stored as a GeoJSON object as 4326 lon/lat';
COMMIT;
