-- Deploy: schemas/vybez_memberships_private/tables/memberships_acl/columns/entity_id/alterations/alt0000000210 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_private/schema
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/table
-- requires: schemas/vybez_memberships_private/tables/memberships_acl/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_memberships_private".memberships_acl 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;
