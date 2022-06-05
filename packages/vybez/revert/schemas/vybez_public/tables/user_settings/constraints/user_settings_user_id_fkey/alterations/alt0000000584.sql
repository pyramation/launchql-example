-- Revert: schemas/vybez_public/tables/user_settings/constraints/user_settings_user_id_fkey/alterations/alt0000000584 from pg

BEGIN;
COMMENT ON CONSTRAINT user_settings_user_id_fkey ON "vybez_public".user_settings IS NULL;
COMMIT;  

