-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table

BEGIN;
GRANT SELECT ON TABLE "vybez_permissions_public".group_member_permissions TO authenticated;
COMMIT;
