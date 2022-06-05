-- Deploy: schemas/vybez_memberships_public/tables/app_grants/columns/actor_id/alterations/alt0000000129 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_grants/table
-- requires: schemas/vybez_memberships_public/tables/app_grants/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".app_grants 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
