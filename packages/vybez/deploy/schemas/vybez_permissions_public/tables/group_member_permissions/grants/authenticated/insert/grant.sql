-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table

BEGIN;
GRANT INSERT ON TABLE "vybez_permissions_public".group_member_permissions TO authenticated;
COMMIT;
