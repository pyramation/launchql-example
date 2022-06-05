-- Revert: schemas/vybez_public/tables/user_settings/columns/last_name/column from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings DROP COLUMN last_name;
COMMIT;  

