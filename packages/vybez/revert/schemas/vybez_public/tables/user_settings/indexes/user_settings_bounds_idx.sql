-- Revert: schemas/vybez_public/tables/user_settings/indexes/user_settings_bounds_idx from pg

BEGIN;
DROP INDEX "vybez_public".user_settings_bounds_idx;
COMMIT;  

