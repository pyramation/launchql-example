-- Deploy: schemas/vybez_permissions_public/tables/app_permissions/columns/id/alterations/alt0000000039 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permissions/table
-- requires: schemas/vybez_permissions_public/tables/app_permissions/columns/id/column

BEGIN;

ALTER TABLE "vybez_permissions_public".app_permissions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
