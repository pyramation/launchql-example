-- Revert: schemas/vybez_status_public/tables/app_achievements/columns/count/alterations/alt0000000158 from pg

BEGIN;


ALTER TABLE "vybez_status_public".app_achievements 
    ALTER COLUMN count DROP DEFAULT;

COMMIT;  

