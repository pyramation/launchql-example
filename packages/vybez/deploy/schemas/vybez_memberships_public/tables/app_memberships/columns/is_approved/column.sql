-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/columns/is_approved/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".app_memberships ADD COLUMN is_approved boolean;
COMMIT;
