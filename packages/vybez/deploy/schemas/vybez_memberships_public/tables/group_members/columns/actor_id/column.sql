-- Deploy: schemas/vybez_memberships_public/tables/group_members/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_members/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_members ADD COLUMN actor_id uuid;
COMMIT;
