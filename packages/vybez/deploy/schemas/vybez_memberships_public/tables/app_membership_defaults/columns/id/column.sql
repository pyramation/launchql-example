-- Deploy: schemas/vybez_memberships_public/tables/app_membership_defaults/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".app_membership_defaults ADD COLUMN id uuid;
COMMIT;
