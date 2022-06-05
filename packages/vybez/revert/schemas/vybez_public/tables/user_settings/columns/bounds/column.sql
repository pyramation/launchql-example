-- Revert: schemas/vybez_public/tables/user_settings/columns/bounds/column from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings DROP COLUMN bounds;
COMMIT;  

