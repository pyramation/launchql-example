-- Deploy: schemas/vybez_permissions_public/tables/app_permissions/columns/bitstr/alterations/alt0000000042 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permissions/table
-- requires: schemas/vybez_permissions_public/tables/app_permissions/columns/bitstr/column

BEGIN;

ALTER TABLE "vybez_permissions_public".app_permissions 
    ALTER COLUMN bitstr SET NOT NULL;
COMMIT;
