-- Revert: schemas/vybez_public/tables/user_settings/columns/location/alterations/alt0000000582 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.location IS NULL;
COMMIT;  

