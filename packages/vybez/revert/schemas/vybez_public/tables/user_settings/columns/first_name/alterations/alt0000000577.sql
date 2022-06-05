-- Revert: schemas/vybez_public/tables/user_settings/columns/first_name/alterations/alt0000000577 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.first_name IS NULL;
COMMIT;  

