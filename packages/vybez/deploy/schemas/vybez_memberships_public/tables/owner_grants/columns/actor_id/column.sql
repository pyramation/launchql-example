-- Deploy: schemas/vybez_memberships_public/tables/owner_grants/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/owner_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".owner_grants ADD COLUMN actor_id uuid;
COMMIT;
