-- Deploy: schemas/vybez_status_public/tables/app_achievements/columns/id/alterations/alt0000000151 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_achievements/table
-- requires: schemas/vybez_status_public/tables/app_achievements/columns/id/column

BEGIN;

ALTER TABLE "vybez_status_public".app_achievements 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
