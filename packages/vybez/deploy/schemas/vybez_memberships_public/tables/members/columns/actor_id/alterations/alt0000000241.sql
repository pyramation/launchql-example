-- Deploy: schemas/vybez_memberships_public/tables/members/columns/actor_id/alterations/alt0000000241 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/members/table
-- requires: schemas/vybez_memberships_public/tables/members/columns/actor_id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".members 
    ALTER COLUMN actor_id SET NOT NULL;
COMMIT;
