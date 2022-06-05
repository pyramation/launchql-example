-- Deploy: schemas/vybez_memberships_public/tables/members/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/members/table

BEGIN;

ALTER TABLE "vybez_memberships_public".members ADD COLUMN actor_id uuid;
COMMIT;
