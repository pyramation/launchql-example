-- Deploy: schemas/vybez_public/tables/user_settings/columns/zip/alterations/alt0000000581 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/columns/zip/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.zip IS E'user zip code';
COMMIT;
