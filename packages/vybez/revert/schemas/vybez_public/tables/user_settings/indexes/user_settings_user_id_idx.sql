-- Revert: schemas/vybez_public/tables/user_settings/indexes/user_settings_user_id_idx from pg

BEGIN;
DROP INDEX "vybez_public".user_settings_user_id_idx;
COMMIT;  

