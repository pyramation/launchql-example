-- Revert: schemas/vybez_status_public/tables/app_steps/table from pg

BEGIN;
DROP TABLE "vybez_status_public".app_steps;
COMMIT;  

