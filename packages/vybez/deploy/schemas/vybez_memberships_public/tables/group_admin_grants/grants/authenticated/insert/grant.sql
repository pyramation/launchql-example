-- Deploy: schemas/vybez_memberships_public/tables/group_admin_grants/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/group_admin_grants/table

BEGIN;
GRANT INSERT ON TABLE "vybez_memberships_public".group_admin_grants TO authenticated;
COMMIT;
