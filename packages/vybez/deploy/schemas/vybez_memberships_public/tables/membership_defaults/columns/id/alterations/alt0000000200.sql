-- Deploy: schemas/vybez_memberships_public/tables/membership_defaults/columns/id/alterations/alt0000000200 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_defaults 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
