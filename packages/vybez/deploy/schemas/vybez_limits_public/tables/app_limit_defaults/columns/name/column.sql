-- Deploy: schemas/vybez_limits_public/tables/app_limit_defaults/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_limits_public/schema
-- requires: schemas/vybez_limits_public/tables/app_limit_defaults/table

BEGIN;

ALTER TABLE "vybez_limits_public".app_limit_defaults ADD COLUMN name citext;
COMMIT;
