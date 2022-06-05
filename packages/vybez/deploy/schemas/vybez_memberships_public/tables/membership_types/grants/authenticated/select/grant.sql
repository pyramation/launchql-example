-- Deploy: schemas/vybez_memberships_public/tables/membership_types/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_types/table

BEGIN;
GRANT SELECT ON TABLE "vybez_memberships_public".membership_types TO authenticated;
COMMIT;
