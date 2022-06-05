-- Deploy: schemas/vybez_memberships_public/tables/membership_types/columns/id/alterations/alt0000000025 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_types/table
-- requires: schemas/vybez_memberships_public/tables/membership_types/columns/id/column

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_types 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
