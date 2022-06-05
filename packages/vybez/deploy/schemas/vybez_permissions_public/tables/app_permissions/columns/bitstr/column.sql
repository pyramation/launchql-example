-- Deploy: schemas/vybez_permissions_public/tables/app_permissions/columns/bitstr/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".app_permissions ADD COLUMN bitstr bit(32);
COMMIT;
