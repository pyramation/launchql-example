-- Revert: schemas/vybez_public/tables/user_settings/columns/search_radius/column from pg

BEGIN;


ALTER TABLE "vybez_public".user_settings DROP COLUMN search_radius;
COMMIT;  

