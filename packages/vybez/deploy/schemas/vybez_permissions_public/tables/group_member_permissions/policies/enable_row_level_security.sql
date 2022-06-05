-- Deploy: schemas/vybez_permissions_public/tables/group_member_permissions/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/group_member_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".group_member_permissions
    ENABLE ROW LEVEL SECURITY;
COMMIT;
