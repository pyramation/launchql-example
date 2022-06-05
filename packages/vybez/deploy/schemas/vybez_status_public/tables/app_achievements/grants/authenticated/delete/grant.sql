-- Deploy: schemas/vybez_status_public/tables/app_achievements/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_achievements/table

BEGIN;
GRANT DELETE ON TABLE "vybez_status_public".app_achievements TO authenticated;
COMMIT;
