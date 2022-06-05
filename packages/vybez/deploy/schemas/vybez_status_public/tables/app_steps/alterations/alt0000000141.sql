-- Deploy: schemas/vybez_status_public/tables/app_steps/alterations/alt0000000141 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_steps/table

BEGIN;

ALTER TABLE "vybez_status_public".app_steps
    DISABLE ROW LEVEL SECURITY;
COMMIT;
