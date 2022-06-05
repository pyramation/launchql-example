-- Revert: schemas/vybez_public/tables/user_settings/columns/user_id/column from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings DROP COLUMN user_id;
COMMIT;  

