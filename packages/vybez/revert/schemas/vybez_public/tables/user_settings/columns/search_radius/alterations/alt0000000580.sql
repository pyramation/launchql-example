-- Revert: schemas/vybez_public/tables/user_settings/columns/search_radius/alterations/alt0000000580 from pg

BEGIN;
COMMENT ON COLUMN "vybez_public".user_settings.search_radius IS NULL;
COMMIT;  

