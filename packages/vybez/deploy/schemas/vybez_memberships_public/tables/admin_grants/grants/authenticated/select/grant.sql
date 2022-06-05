-- Deploy: schemas/vybez_memberships_public/tables/admin_grants/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/admin_grants/table

BEGIN;
GRANT SELECT ON TABLE "vybez_memberships_public".admin_grants TO authenticated;
COMMIT;
