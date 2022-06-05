-- Deploy: schemas/vybez_memberships_public/tables/memberships/alterations/alt0000000196 to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table

BEGIN;

ALTER TABLE "vybez_memberships_public".memberships
    DISABLE ROW LEVEL SECURITY;
COMMIT;
