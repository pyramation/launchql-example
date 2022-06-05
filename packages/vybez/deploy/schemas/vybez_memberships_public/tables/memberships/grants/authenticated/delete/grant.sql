-- Deploy: schemas/vybez_memberships_public/tables/memberships/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/memberships/table

BEGIN;
GRANT DELETE ON TABLE "vybez_memberships_public".memberships TO authenticated;
COMMIT;
