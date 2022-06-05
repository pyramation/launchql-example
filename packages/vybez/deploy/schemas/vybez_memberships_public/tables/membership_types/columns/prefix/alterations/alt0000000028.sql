-- Deploy: schemas/vybez_memberships_public/tables/membership_types/columns/prefix/alterations/alt0000000028 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_types/table
-- requires: schemas/vybez_memberships_public/tables/membership_types/columns/prefix/column

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_types 
    ALTER COLUMN prefix SET NOT NULL;
COMMIT;
