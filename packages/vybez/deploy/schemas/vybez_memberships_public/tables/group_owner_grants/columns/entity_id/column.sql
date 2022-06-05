-- Deploy: schemas/vybez_memberships_public/tables/group_owner_grants/columns/entity_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_owner_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_owner_grants ADD COLUMN entity_id uuid;
COMMIT;
