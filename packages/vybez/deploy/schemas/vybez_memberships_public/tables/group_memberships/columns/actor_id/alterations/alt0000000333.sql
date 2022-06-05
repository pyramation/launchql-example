-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/columns/actor_id/alterations/alt0000000333 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table
-- requires: schemas/vybez_memberships_public/tables/group_memberships/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
