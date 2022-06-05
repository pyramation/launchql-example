-- Deploy: schemas/vybez_memberships_public/tables/owner_grants/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/owner_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".owner_grants
    ENABLE ROW LEVEL SECURITY;
COMMIT;
