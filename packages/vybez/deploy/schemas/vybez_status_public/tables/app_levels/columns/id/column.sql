-- Deploy: schemas/vybez_status_public/tables/app_levels/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_status_public/schema
-- requires: schemas/vybez_status_public/tables/app_levels/table

BEGIN;

ALTER TABLE "vybez_status_public".app_levels ADD COLUMN id uuid;
COMMIT;
