-- Revert: schemas/vybez_public/tables/user_settings/columns/user_id/alterations/alt0000000575 from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings 
    ALTER COLUMN user_id DROP DEFAULT;

COMMIT;  

