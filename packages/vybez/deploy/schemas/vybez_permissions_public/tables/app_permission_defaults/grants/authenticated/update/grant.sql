-- Deploy: schemas/vybez_permissions_public/tables/app_permission_defaults/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permission_defaults/table

BEGIN;
GRANT UPDATE ON TABLE "vybez_permissions_public".app_permission_defaults TO authenticated;
COMMIT;
