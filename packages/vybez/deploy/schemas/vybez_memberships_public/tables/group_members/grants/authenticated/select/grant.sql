-- Deploy: schemas/vybez_memberships_public/tables/group_members/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_members/table

BEGIN;
GRANT SELECT ON TABLE "vybez_memberships_public".group_members TO authenticated;
COMMIT;
