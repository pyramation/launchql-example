-- Deploy: schemas/vybez_memberships_public/tables/members/alterations/alt0000000236 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/members/table

BEGIN;

ALTER TABLE "vybez_memberships_public".members
    DISABLE ROW LEVEL SECURITY;
COMMIT;
