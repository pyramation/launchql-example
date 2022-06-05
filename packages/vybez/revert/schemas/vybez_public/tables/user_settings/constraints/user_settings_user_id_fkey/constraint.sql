-- Revert: schemas/vybez_public/tables/user_settings/constraints/user_settings_user_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings 
    DROP CONSTRAINT user_settings_user_id_fkey;

COMMIT;  

