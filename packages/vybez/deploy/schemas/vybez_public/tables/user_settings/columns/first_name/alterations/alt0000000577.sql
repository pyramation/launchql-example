-- Deploy: schemas/vybez_public/tables/user_settings/columns/first_name/alterations/alt0000000577 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/columns/first_name/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.first_name IS E'user first name';
COMMIT;
