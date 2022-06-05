-- Deploy: schemas/vybez_status_public/tables/app_steps/columns/id/alterations/alt0000000143 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table
-- requires: schemas/vybez_status_public/tables/app_steps/columns/id/column

BEGIN;

ALTER TABLE "vybez_status_public".app_steps 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
