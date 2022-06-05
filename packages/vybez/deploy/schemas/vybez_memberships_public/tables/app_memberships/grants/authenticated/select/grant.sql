-- Deploy: schemas/vybez_memberships_public/tables/app_memberships/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/app_memberships/table

BEGIN;
GRANT SELECT ON TABLE "vybez_memberships_public".app_memberships TO authenticated;
COMMIT;
