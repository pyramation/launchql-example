-- Deploy: schemas/vybez_memberships_public/tables/group_grants/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_grants
    ENABLE ROW LEVEL SECURITY;
COMMIT;
