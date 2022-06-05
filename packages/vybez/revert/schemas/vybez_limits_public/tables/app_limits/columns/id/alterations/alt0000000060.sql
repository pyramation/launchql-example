-- Revert: schemas/vybez_limits_public/tables/app_limits/columns/id/alterations/alt0000000060 from pg

BEGIN;


ALTER TABLE "vybez_limits_public".app_limits 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

