-- Deploy: schemas/vybez_memberships_public/tables/members/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/members/table

BEGIN;
GRANT SELECT ON TABLE "vybez_memberships_public".members TO authenticated;
COMMIT;
