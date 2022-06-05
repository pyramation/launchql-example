-- Deploy: schemas/vybez_memberships_public/tables/group_grants/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_grants/table

BEGIN;
GRANT SELECT ON TABLE "vybez_memberships_public".group_grants TO authenticated;
COMMIT;
