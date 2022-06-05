-- Deploy: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/permissions/alterations/alt0000000311 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/group_memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/permissions/column

BEGIN;

ALTER TABLE "vybez_memberships_private".group_memberships_acl 
    ALTER COLUMN permissions SET DEFAULT lpad('', 32, '0')::bit(32);
COMMIT;
