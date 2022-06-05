-- Deploy: schemas/vybez_memberships_public/tables/membership_defaults/columns/create_groups_cascade_members/alterations/alt0000000217 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/columns/create_groups_cascade_members/column

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_defaults 
    ALTER COLUMN create_groups_cascade_members SET DEFAULT FALSE;
COMMIT;
