-- Deploy: schemas/vybez_memberships_public/tables/membership_types/alterations/alt0000000024 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_types/table

BEGIN;

ALTER TABLE "vybez_memberships_public".membership_types
    DISABLE ROW LEVEL SECURITY;
COMMIT;
