-- Revert: schemas/vybez_status_public/tables/app_steps/columns/id/column from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_steps DROP COLUMN id;
COMMIT;  

