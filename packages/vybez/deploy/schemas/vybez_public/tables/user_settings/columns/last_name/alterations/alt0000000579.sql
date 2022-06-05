-- Deploy: schemas/vybez_public/tables/user_settings/columns/last_name/alterations/alt0000000579 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/columns/last_name/column

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.last_name IS E'user surname';
COMMIT;
