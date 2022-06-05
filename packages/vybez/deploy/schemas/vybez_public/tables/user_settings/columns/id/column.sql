-- Deploy: schemas/vybez_public/tables/user_settings/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/user_settings/table

BEGIN;

ALTER TABLE "vybez_public".user_settings ADD COLUMN id uuid;
COMMIT;
