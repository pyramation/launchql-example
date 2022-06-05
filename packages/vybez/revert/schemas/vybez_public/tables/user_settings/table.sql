-- Revert: schemas/vybez_public/tables/user_settings/table from pg

BEGIN;
DROP TABLE "vybez_public".user_settings;
COMMIT;  

