-- Deploy: schemas/vybez_memberships_public/tables/membership_defaults/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/vybez_memberships_public/schema
-- requires: schemas/vybez_memberships_public/tables/membership_defaults/table

BEGIN;
GRANT SELECT ON TABLE "vybez_memberships_public".membership_defaults TO authenticated;
COMMIT;
