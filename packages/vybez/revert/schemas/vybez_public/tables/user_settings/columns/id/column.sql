-- Revert: schemas/vybez_public/tables/user_settings/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings DROP COLUMN id;
COMMIT;  

