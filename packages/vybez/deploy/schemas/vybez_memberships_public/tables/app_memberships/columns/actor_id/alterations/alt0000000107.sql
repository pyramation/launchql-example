-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/columns/actor_id/alterations/alt0000000107 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table
-- requires: schemas/vybez_memberships_public/tables/app_memberships/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_memberships 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
