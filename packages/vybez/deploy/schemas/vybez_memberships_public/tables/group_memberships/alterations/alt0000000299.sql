-- Deploy: schemas/vybez_memberships_public/tables/group_memberships/alterations/alt0000000299 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".group_memberships
    DISABLE ROW LEVEL SECURITY;
COMMIT;
