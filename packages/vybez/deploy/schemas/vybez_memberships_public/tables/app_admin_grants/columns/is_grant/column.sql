-- Deploy: schemas/vybez_memberships_public/tables/app_admin_grants/columns/is_grant/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_admin_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".app_admin_grants ADD COLUMN is_grant boolean;
COMMIT;
