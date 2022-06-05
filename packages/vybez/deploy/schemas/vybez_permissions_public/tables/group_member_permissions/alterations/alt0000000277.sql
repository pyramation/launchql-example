-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/alterations/alt0000000277 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permissions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
