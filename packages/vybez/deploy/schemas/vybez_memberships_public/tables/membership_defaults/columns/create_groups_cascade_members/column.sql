-- Deploy: schemas/vybez_memberships_public/tables/membership_defaults/columns/create_groups_cascade_members/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_defaults ADD COLUMN create_groups_cascade_members boolean;
COMMIT;
