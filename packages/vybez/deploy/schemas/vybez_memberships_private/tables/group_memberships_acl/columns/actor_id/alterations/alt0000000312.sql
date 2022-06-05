-- Deploy: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/actor_id/alterations/alt0000000312 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/group_memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/group_memberships_acl/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_private".group_memberships_acl 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
