-- Deploy: schemas/vybez_memberships_public/tables/group_admin_grants/alterations/alt0000000342 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_admin_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_admin_grants
    DISABLE ROW LEVEL SECURITY;
COMMIT;
