-- Revert: schemas/vybez_status_public/tables/app_levels/columns/id/alterations/alt0000000161 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_levels 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

