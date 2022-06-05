-- Deploy: schemas/vybez_permissions_public/tables/app_permissions/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permissions/table

BEGIN;
GRANT DELETE ON TABLE "vybez_permissions_public".app_permissions TO authenticated;
COMMIT;
