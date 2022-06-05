-- Revert: schemas/vybez_status_public/tables/app_levels/table from pg

BEGIN;
DROP TABLE "vybez_status_public".app_levels;
COMMIT;  

