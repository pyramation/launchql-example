-- Deploy: schemas/vybez_memberships_private/tables/memberships_acl/columns/is_owner/alterations/alt0000000203 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/columns/is_owner/column

BEGIN;

ALTER TABLE "vybez_memberships_private".memberships_acl 
    ALTER COLUMN is_owner SET NOT NULL;
COMMIT;
