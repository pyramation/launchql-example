-- Deploy: schemas/vybez_permissions_public/tables/app_permissions/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/app_permissions/table

BEGIN;
GRANT INSERT ON TABLE "vybez_permissions_public".app_permissions TO authenticated;
COMMIT;
