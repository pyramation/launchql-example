-- Deploy: schemas/vybez_permissions_public/tables/app_permission_defaults/columns/id/alterations/alt0000000047 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permission_defaults/table
-- requires: schemas/vybez_permissions_public/tables/app_permission_defaults/columns/id/column

BEGIN;

ALTER TABLE "vybez_permissions_public".app_permission_defaults 
    ALTER COLUMN id SET DEFAULT "vybez_private".uuid_generate_v4();
COMMIT;
