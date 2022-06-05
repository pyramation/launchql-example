-- Deploy: schemas/vybez_status_public/tables/app_steps/columns/count/alterations/alt0000000148 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table
-- requires: schemas/vybez_status_public/tables/app_steps/columns/count/column

BEGIN;

ALTER TABLE "vybez_status_public".app_steps 
    ALTER COLUMN count SET NOT NULL;
COMMIT;
