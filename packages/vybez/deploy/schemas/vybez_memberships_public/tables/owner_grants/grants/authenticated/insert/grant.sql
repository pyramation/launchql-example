-- Deploy: schemas/vybez_memberships_public/tables/owner_grants/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/owner_grants/table

BEGIN;
GRANT INSERT ON TABLE "vybez_memberships_public".owner_grants TO authenticated;
COMMIT;
