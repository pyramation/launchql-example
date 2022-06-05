-- Deploy: schemas/vybez_status_public/tables/app_achievements/columns/count/alterations/alt0000000158 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_achievements/table
-- requires: schemas/vybez_status_public/tables/app_achievements/columns/count/column

BEGIN;

ALTER TABLE "vybez_status_public".app_achievements 
    ALTER COLUMN count SET DEFAULT 0;
COMMIT;
