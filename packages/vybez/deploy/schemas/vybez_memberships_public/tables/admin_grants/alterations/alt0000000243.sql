-- Deploy: schemas/vybez_memberships_public/tables/admin_grants/alterations/alt0000000243 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/admin_grants/table

BEGIN;

ALTER TABLE "vybez_memberships_public".admin_grants
    DISABLE ROW LEVEL SECURITY;
COMMIT;
