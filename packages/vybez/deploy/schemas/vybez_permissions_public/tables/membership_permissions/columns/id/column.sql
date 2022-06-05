-- Deploy: schemas/vybez_permissions_public/tables/membership_permissions/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_permissions_public/schema
-- requires: schemas/vybez_permissions_public/tables/membership_permissions/table

BEGIN;

ALTER TABLE "vybez_permissions_public".membership_permissions ADD COLUMN id uuid;
COMMIT;
