-- Deploy: schemas/vybez_memberships_public/tables/app_owner_grants/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_owner_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".app_owner_grants ADD COLUMN actor_id uuid;
COMMIT;
