-- Deploy: schemas/vybez_memberships_public/tables/group_membership_defaults/columns/is_approved/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_membership_defaults/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_membership_defaults ADD COLUMN is_approved boolean;
COMMIT;
