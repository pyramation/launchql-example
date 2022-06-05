-- Deploy: schemas/vybez_permissions_public/tables/app_permission_defaults/columns/permissions/alterations/alt0000000048 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permission_defaults/table
-- requires: schemas/vybez_permissions_public/tables/app_permission_defaults/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_permissions_public".app_permission_defaults 
    ALTER COLUMN permissions SET NOT NULL;
COMMIT;
