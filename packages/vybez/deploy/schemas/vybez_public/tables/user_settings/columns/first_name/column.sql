-- Deploy: schemas/vybez_public/tables/user_settings/columns/first_name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table

BEGIN;

ALTER TABLE "vybez_public".user_settings ADD COLUMN first_name text;
COMMIT;
