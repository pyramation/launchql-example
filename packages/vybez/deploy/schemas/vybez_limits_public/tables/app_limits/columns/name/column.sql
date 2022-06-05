-- Deploy: schemas/vybez_limits_public/tables/app_limits/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/app_limits/table

BEGIN;

ALTER TABLE "vybez_limits_public".app_limits ADD COLUMN name citext;
COMMIT;
