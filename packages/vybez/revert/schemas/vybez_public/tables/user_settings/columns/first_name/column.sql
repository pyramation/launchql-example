-- Revert: schemas/vybez_public/tables/user_settings/columns/first_name/column from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings DROP COLUMN first_name;
COMMIT;  

