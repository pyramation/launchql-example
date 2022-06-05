-- Deploy: schemas/vybez_memberships_public/tables/group_grants/columns/grantor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_grants ADD COLUMN grantor_id uuid;
COMMIT;
