-- Revert: schemas/vybez_public/tables/user_settings/constraints/user_settings_user_id_key/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings 
    DROP CONSTRAINT user_settings_user_id_key;

COMMIT;  

