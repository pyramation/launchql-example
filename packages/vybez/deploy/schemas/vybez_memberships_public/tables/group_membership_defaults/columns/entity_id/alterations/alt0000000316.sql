-- Deploy: schemas/vybez_memberships_public/tables/group_membership_defaults/columns/entity_id/alterations/alt0000000316 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/columns/entity_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_membership_defaults 
    ALTER COLUMN entity_id SET NOT NULL;
COMMIT;