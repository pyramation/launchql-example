-- Deploy: schemas/vybez_public/tables/role_types/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_public/schema
-- requires: schemas/vybez_public/tables/role_types/table

BEGIN;

ALTER TABLE "vybez_public".role_types ADD COLUMN name citext;
COMMIT;
